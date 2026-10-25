# decomposeEPostRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b77f5b93d80e09819d07cffece84c4ab67f02c00e2fef2a28efebc929d9b3939",
  "kind": "def",
  "lexical_name": "decomposeEPostRel",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "decomposeepostrel--51a373e04492fec28eea89d1",
  "source": {
    "blob": "386fc1cd07d277bd6d4447ec159ec1f8f074b80f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51a373e04492fec28eea89d1d0f6eaffa67d848ebcfb73c608c94dcda2d2c4ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b77f5b93d80e09819d07cffece84c4ab67f02c00e2fef2a28efebc929d9b3939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def decomposeEPostRel (EPred epostSpec epostAbstract : Expr)
    (stateArgNames : Array Name := #[]) : MetaM Expr := do
  match_expr epostSpec with
  | EPost.Cons.mk ehTy etTy head tail =>
    let absHead ← mkAppM ``EPost.Cons.head #[epostAbstract]
    let absTail ← mkAppM ``EPost.Cons.tail #[epostAbstract]
    let hTail ← decomposeEPostRel etTy tail absTail stateArgNames
    /- Sometimes, even though `epost` is not schematic itself, its components might be schematic.
      Think of a triple of a kind `⦃ pre ⦄ x ⦃ post; epost₁, ⊥, epost₃, ⊥, ... ⦄`.
      In this case we do not want to create new metavariables for `epost₁`, `epost₃`, etc.
      Instead, we will just assign them to `epostAbstract.tail.head` and
      `epostAbstract.tail.tail.head`, etc. -/
    if head.isMVar then
      head.mvarId!.assign absHead
      mkAppM ``EPost.Cons.mk_le_tail #[tail, epostAbstract, hTail]
    else
      -- Collect state types: e.g. String → Nat → Prop → skip first (exc type), rest are state types
      let ssTypes ← forallTelescope ehTy fun xs _ => xs.drop 1 |>.mapM (Meta.inferType ·)
      let headTy ← Meta.inferType head
      let hHeadTy ← mkPostPointwisePremise head absHead headTy ssTypes stateArgNames
      let hHead ← mkFreshExprMVar (userName := `epostImpl) hHeadTy
      mkAppM ``EPost.Cons.mk_le #[head, tail, epostAbstract, hHead, hTail]
  | EPost.Nil.mk => mkAppM ``EPost.Nil.le #[epostAbstract]
  | _ =>
    match_expr EPred.consumeMData with
    | EPost.Cons ehTy etTy =>
      let specHead ← mkAppM ``EPost.Cons.head #[epostSpec]
      let specTail ← mkAppM ``EPost.Cons.tail #[epostSpec]
      let absHead ← mkAppM ``EPost.Cons.head #[epostAbstract]
      let absTail ← mkAppM ``EPost.Cons.tail #[epostAbstract]
      let headTy ← Meta.inferType specHead
      -- Collect state types: e.g. String → Nat → Prop → skip first (exc type), rest are state types
      let ssTypes ← forallTelescope ehTy fun xs _ => xs.drop 1 |>.mapM (Meta.inferType ·)
      let hHeadTy ← mkPostPointwisePremise specHead absHead headTy ssTypes stateArgNames
      let hHead ← mkFreshExprMVar (userName := `epostImpl) hHeadTy
      let hTail ← decomposeEPostRel etTy specTail absTail stateArgNames
      mkAppM ``EPost.Cons.mk_le #[specHead, specTail, epostAbstract, hHead, hTail]
    | EPost.Nil => mkAppM ``EPost.Nil.le #[epostAbstract]
    | _ =>
      let hTy ← mkAppM ``PartialOrder.rel #[epostSpec, epostAbstract]
      mkFreshExprMVar (userName := `epostImpl) hTy

/--
Create the proof term for the backward rule built from an instantiated spec theorem.
In order for the backward rule to apply, the concrete precondition, postcondition and exception
postcondition appearing in the spec may need to be generalized into rule parameters, emitting
verification conditions for the generalization.

### General idea

Consider the spec theorem `WPMonad.bind_le_wp_bind`:
```
WPMonad.bind_le_wp_bind :
  wp x (fun a => wp (f a) post epost) epost ⊑ wp (x >>= f) post epost
```
This theorem is already in WP-form, so `post` and `epost` are schematic. However, its precondition
`wp x (fun a => wp (f a) post epost) epost` is not. Hence we must emit a VC for the precondition:
```
prf : ∀ {α β} (x : m α) (f : α → m β) (post : β → Pred) (epost : EPred)
  (pre : Pred) (hpre : pre ⊑ wp x (fun a => wp (f a) post epost) epost),
  pre ⊑ wp (x >>= f) post epost
```
The proof term is constructed with `PartialOrder.rel_trans hpre WPMonad.bind_le_wp_bind`.

#### Postcondition VCs

Similarly, a VC is generated for the postcondition if it is not schematic. For example, a
hypothetical restrictive spec for `pure` could be:
```
myPure.spec (n : Nat) : (⊤ : Prop) ⊑ wp (myPure n) (fun r => r = n) epost
```
This yields a backward rule of the form:
```
prf : ∀ (n : Nat) (pre : Prop) (hpre : pre ⊑ True)
  (post : Nat → Prop) (hpost : ∀ r, r = n ⊑ post r) (epost : EPost⟨⟩),
  pre ⊑ wp (myPure n) post epost
```
The postcondition VC is pointwise over the return value and over any excess state arguments. The
proof is generalized with `WP.wp_consequence_le`.

#### Exception postcondition VCs

A VC is also generated for the exception postcondition if it is not schematic. For an `EPost.Cons`
value, the relation `epostSpec ⊑ epost` is decomposed component by component:
```
∀ e s₁ ... sₙ, epostSpec.head e s₁ ... sₙ ⊑ epost.head e s₁ ... sₙ
```
and recursively for the tail. `decomposeEPostRel` assembles these component VCs using
`EPost.Cons.mk_le` and `EPost.Nil.le`; the proof is then generalized with `WP.wp_econs_le`.
When the spec exception postcondition is `⊥`, no VC is needed and `WP.wp_econs_bot_le` is
used instead.

#### Excess state arguments

Furthermore, when there are excess state arguments `[s₁, ..., sₙ]` involved, the proof is
specialized to those arguments:
```
... :
  pre ⊑ wp x (fun a => wp (f a) post epost) epost s₁ ... sₙ →
  pre ⊑ wp (x >>= f) post epost s₁ ... sₙ
```
The precondition and all generated pointwise postcondition premises are applied to these same state
arguments.

### Caching

It turns out we can cache backward rules for the cache key
`(specThm.proof.key, instWP, excessArgs.size)`. This is important for performance and helps avoid
rebuilding the same rule for every goal that uses the same spec theorem, `WPMonad` instance and
number of excess state arguments. We do that in the `VCGenM` wrapper
`mkBackwardRuleFromSpecCached`.

The rule is built from the abstracted proof returned here via `mkBackwardRuleFromExpr`. This keeps
the proof construction reusable even when the proof still contains free variables from the goal
context, such as generic monad or WP instance parameters.

### Specialization

It is unnecessary to use the `bind` rule in full generality. It is much more efficient to specialize
it for the particular predicate type, exception postcondition type and `WPMonad` instance.
`tryMkBackwardRuleFromSpec` does that by instantiating the spec theorem and checking that its
`Pred` and `WPMonad` arguments match the ones from the use site.

For `StateM Nat` and one excess state arg `s`, the type produced for `WPMonad.bind_le_wp_bind` becomes
```
prf : ∀ (pre : Prop) (α : Type) (x : StateT Nat Id α) (β : Type)
  (f : α → StateT Nat Id β) (post : β → Nat → Prop) (epost : EPost⟨⟩) (s : Nat),
  pre ⊑ wp x (fun a => wp (f a) post epost) epost s →
  pre ⊑ wp (x >>= f) post epost s
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `386fc1cd07d277bd6d4447ec159ec1f8f074b80f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
