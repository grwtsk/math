# extrinsicFix₃_eq_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f40b1aa-ffa6-7408-cb9d-8f15d75f775a",
  "kind": "theorem",
  "lexical_name": "extrinsicFix₃_eq_apply",
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
  "slug": "extrinsicfix-eq-apply--44d4f0fb87e53149cadc4f02",
  "source": {
    "blob": "0a7bf4b8d8915578dd510e0db9d11107bf226272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 251,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44d4f0fb87e53149cadc4f0283f520256f61673d641e8baa6661e29c22ff9ef6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f40b1aa-ffa6-7408-cb9d-8f15d75f775a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem extrinsicFix₃_eq_apply [∀ a b c, Nonempty (C₃ a b c)]
    {R : (a : α) ×' (b : β a) ×' γ a b → (a : α) ×' (b : β a) ×' γ a b → Prop}
    {F : ∀ (a b c), (∀ (a' b' c'), R ⟨a', b', c'⟩ ⟨a, b, c⟩ → C₃ a' b' c') → C₃ a b c}
    (wf : WellFounded R) {a : α} {b : β a} {c : γ a b} :
    extrinsicFix₃ R F a b c = F a b c (fun a b c _ => extrinsicFix₃ R F a b c) := by
  rw [extrinsicFix₃, extrinsicFix_eq_apply wf]
  rfl

/--
A fixpoint combinator that allows for deferred proofs of termination.

{lean}`extrinsicFix₃ R F` is function implemented as the loop
{lean}`extrinsicFix₃ R F a b c = F a b c (fun a b c _ => extrinsicFix₃ R F a b c)`.

If the loop can be shown to be well-founded, {name}`extrinsicFix₃_eq_apply` proves that it satisfies the
fixpoint equation. Otherwise, {lean}`extrinsicFix₃ R F` is opaque, i.e., it is impossible to prove
nontrivial properties about it.
-/
add_decl_doc extrinsicFix₃

/--
A fixpoint combinator that can be used to construct recursive functions with an
*extrinsic, partial* proof of termination.

Given a relation {name}`R` and a fixpoint functional {name}`F` which must be decreasing with respect
to {name}`R`, {lean}`partialExtrinsicFix R F` is the recursive function obtained by having {name}`F` call
itself recursively.

For each input {given}`a`, {lean}`partialExtrinsicFix R F a` can be verified given a *partial* termination
proof. The precise semantics are as follows.

If {lean}`Acc R a` does not hold, {lean}`partialExtrinsicFix R F a` might run forever. In this case,
nothing interesting can be proved about the recursive function; it is opaque and behaves like a
recursive function with the `partial` modifier.

If {lean}`Acc R a` _does_ hold, {lean}`partialExtrinsicFix R F a` is equivalent to
{lean}`F a (fun a' _ => partialExtrinsicFix R F a')`, both logically and regarding its termination behavior.

In particular, if {name}`R` is well-founded, {lean}`partialExtrinsicFix R F a` is equivalent to
{lean}`WellFounded.fix _ F`.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a7bf4b8d8915578dd510e0db9d11107bf226272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
