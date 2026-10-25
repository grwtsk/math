# applyProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3ada22dd46cd5f163e7d219dc9acebfccd01a171f72f6f406d750fb9e27979d",
  "kind": "def",
  "lexical_name": "applyProof",
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
  "slug": "applyproof--ff47767a7f3fadd62f9986f6",
  "source": {
    "blob": "280c69c2cef616140db42a88d01bf0dfe0d92900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 494,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff47767a7f3fadd62f9986f63df09972d6b6e1d283f4b021892bd4fcd048c34f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3ada22dd46cd5f163e7d219dc9acebfccd01a171f72f6f406d750fb9e27979d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def applyProof (g : MVarId) (Γ : NameMap Expr) (p : Proof) : MetaM Unit :=
  match p with
  | .sorry => throwError "itauto failed\n{g}"
  | .hyp n => do g.assignIfDefEq (← liftOption (Γ.find? n))
  | .triv => g.assignIfDefEq q(trivial)
  | .exfalso' p => do
    let A ← mkFreshExprMVarQ q(Prop)
    let t ← mkFreshExprMVarQ q(False)
    g.assignIfDefEq q(@False.elim $A $t)
    applyProof t.mvarId! Γ p
  | .intro x p => do
    let (e, g) ← g.intro x; g.withContext do
      applyProof g (Γ.insert x (.fvar e)) p
  | .andLeft .and p => do
    let A ← mkFreshExprMVarQ q(Prop)
    let B ← mkFreshExprMVarQ q(Prop)
    let t ← mkFreshExprMVarQ q($A ∧ $B)
    g.assignIfDefEq q(And.left $t)
    applyProof t.mvarId! Γ p
  | .andLeft .iff p => do
    let A ← mkFreshExprMVarQ q(Prop)
    let B ← mkFreshExprMVarQ q(Prop)
    let t ← mkFreshExprMVarQ q($A ↔ $B)
    g.assignIfDefEq q(Iff.mp $t)
    applyProof t.mvarId! Γ p
  | .andLeft .eq p => do
    let A ← mkFreshExprMVarQ q(Prop)
    let B ← mkFreshExprMVarQ q(Prop)
    let t ← mkFreshExprMVarQ q($A = $B)
    g.assignIfDefEq q(cast $t)
    applyProof t.mvarId! Γ p
  | .andRight .and p => do
    let A ← mkFreshExprMVarQ q(Prop)
    let B ← mkFreshExprMVarQ q(Prop)
    let t ← mkFreshExprMVarQ q($A ∧ $B)
    g.assignIfDefEq q(And.right $t)
    applyProof t.mvarId! Γ p
  | .andRight .iff p => do
    let A ← mkFreshExprMVarQ q(Prop)
    let B ← mkFreshExprMVarQ q(Prop)
    let t ← mkFreshExprMVarQ q($A ↔ $B)
    g.assignIfDefEq q(Iff.mpr $t)
    applyProof t.mvarId! Γ p
  | .andRight .eq p => do
    let A ← mkFreshExprMVarQ q(Prop)
    let B ← mkFreshExprMVarQ q(Prop)
    let t ← mkFreshExprMVarQ q($A = $B)
    g.assignIfDefEq q(cast (Eq.symm $t))
    applyProof t.mvarId! Γ p
  | .andIntro .and p q => do
    let A ← mkFreshExprMVarQ q(Prop)
    let B ← mkFreshExprMVarQ q(Prop)
    let t₁ ← mkFreshExprMVarQ q($A)
    let t₂ ← mkFreshExprMVarQ q($B)
    g.assignIfDefEq q(And.intro $t₁ $t₂)
    applyProof t₁.mvarId! Γ p
    applyProof t₂.mvarId! Γ q
  | .andIntro .iff p q => do
    let A ← mkFreshExprMVarQ q(Prop)
    let B ← mkFreshExprMVarQ q(Prop)
    let t₁ ← mkFreshExprMVarQ q($A → $B)
    let t₂ ← mkFreshExprMVarQ q($B → $A)
    g.assignIfDefEq q(Iff.intro $t₁ $t₂)
    applyProof t₁.mvarId! Γ p
    applyProof t₂.mvarId! Γ q
  | .andIntro .eq p q => do
    let A ← mkFreshExprMVarQ q(Prop)
    let B ← mkFreshExprMVarQ q(Prop)
    let t₁ ← mkFreshExprMVarQ q($A → $B)
    let t₂ ← mkFreshExprMVarQ q($B → $A)
    g.assignIfDefEq q(propext (Iff.intro $t₁ $t₂))
    applyProof t₁.mvarId! Γ p
    applyProof t₂.mvarId! Γ q
  | .app' p q => do
    let A ← mkFreshExprMVarQ q(Prop)
    let B ← mkFreshExprMVarQ q(Prop)
    let t₁ ← mkFreshExprMVarQ q($A → $B)
    let t₂ ← mkFreshExprMVarQ q($A)
    g.assignIfDefEq q($t₁ $t₂)
    applyProof t₁.mvarId! Γ p
    applyProof t₂.mvarId! Γ q
  | .orInL p => do
    let A ← mkFreshExprMVarQ q(Prop)
    let B ← mkFreshExprMVarQ q(Prop)
    let t ← mkFreshExprMVarQ q($A)
    g.assignIfDefEq q(@Or.inl $A $B $t)
    applyProof t.mvarId! Γ p
  | .orInR p => do
    let A ← mkFreshExprMVarQ q(Prop)
    let B ← mkFreshExprMVarQ q(Prop)
    let t ← mkFreshExprMVarQ q($B)
    g.assignIfDefEq q(@Or.inr $A $B $t)
    applyProof t.mvarId! Γ p
  | .orElim' p x p₁ p₂ => do
    let A ← mkFreshExprMVarQ q(Prop)
    let B ← mkFreshExprMVarQ q(Prop)
    let C ← mkFreshExprMVarQ q(Prop)
    let t₁ ← mkFreshExprMVarQ q($A ∨ $B)
    let t₂ ← mkFreshExprMVarQ q($A → $C)
    let t₃ ← mkFreshExprMVarQ q($B → $C)
    g.assignIfDefEq q(Or.elim $t₁ $t₂ $t₃)
    applyProof t₁.mvarId! Γ p
    let (e, t₂) ← t₂.mvarId!.intro x; t₂.withContext do
      applyProof t₂ (Γ.insert x (.fvar e)) p₁
    let (e, t₃) ← t₃.mvarId!.intro x; t₃.withContext do
      applyProof t₃ (Γ.insert x (.fvar e)) p₂
  | .em false n => do
    let A ← mkFreshExprMVarQ q(Prop)
    let e : Q(Decidable $A) ← liftOption (Γ.find? n)
    let .true ← Meta.isDefEq (← Meta.inferType e) q(Decidable $A) | failure
    g.assignIfDefEq q(@Decidable.em $A $e)
  | .em true n => do
    let A : Q(Prop) ← liftOption (Γ.find? n)
    g.assignIfDefEq q(@Classical.em $A)
  | .decidableElim false n x p₁ p₂ => do
    let A ← mkFreshExprMVarQ q(Prop)
    let e : Q(Decidable $A) ← liftOption (Γ.find? n)
    let .true ← Meta.isDefEq (← Meta.inferType e) q(Decidable $A) | failure
    let B ← mkFreshExprMVarQ q(Prop)
    let t₁ ← mkFreshExprMVarQ q($A → $B)
    let t₂ ← mkFreshExprMVarQ q(¬$A → $B)
    g.assignIfDefEq q(@dite $B $A $e $t₁ $t₂)
    let (e, t₁) ← t₁.mvarId!.intro x; t₁.withContext do
      applyProof t₁ (Γ.insert x (.fvar e)) p₁
    let (e, t₂) ← t₂.mvarId!.intro x; t₂.withContext do
      applyProof t₂ (Γ.insert x (.fvar e)) p₂
  | .decidableElim true n x p₁ p₂ => do
    let A : Q(Prop) ← liftOption (Γ.find? n)
    let B ← mkFreshExprMVarQ q(Prop)
    let t₁ ← mkFreshExprMVarQ q($A → $B)
    let t₂ ← mkFreshExprMVarQ q(¬$A → $B)
    g.assignIfDefEq q(@Classical.byCases $A $B $t₁ $t₂)
    let (e, t₁) ← t₁.mvarId!.intro x; t₁.withContext do
      applyProof t₁ (Γ.insert x (.fvar e)) p₁
    let (e, t₂) ← t₂.mvarId!.intro x; t₂.withContext do
      applyProof t₂ (Γ.insert x (.fvar e)) p₂
  | .curry .. | .curry₂ .. | .orImpL .. | .orImpR .. | .impImpSimp .. => do
    let (e, g) ← g.intro1; g.withContext do
      applyProof g (Γ.insert e.name (.fvar e)) (p.app (.hyp e.name))

/-- A decision procedure for intuitionistic propositional logic.

* `useDec` will add `a ∨ ¬ a` to the context for every decidable atomic proposition `a`.
* `useClassical` will allow `a ∨ ¬ a` to be added even if the proposition is not decidable,
  using classical logic.
* `extraDec` will add `a ∨ ¬ a` to the context for specified (not necessarily atomic)
  propositions `a`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `280c69c2cef616140db42a88d01bf0dfe0d92900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
