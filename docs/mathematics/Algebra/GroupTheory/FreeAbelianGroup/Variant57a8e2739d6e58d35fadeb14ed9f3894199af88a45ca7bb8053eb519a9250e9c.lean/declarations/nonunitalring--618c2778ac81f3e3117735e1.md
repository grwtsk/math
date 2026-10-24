# nonUnitalRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0128c02f19340e640c9ed285c0f244bc891ce8ecbbe62d3cb711a95408668bf1",
  "kind": "instance",
  "lexical_name": "nonUnitalRing",
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
  "slug": "nonunitalring--618c2778ac81f3e3117735e1",
  "source": {
    "blob": "ac0fcf33a584a0ab938b10d7b50a771e691b0c88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 440,
    "path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:618c2778ac81f3e3117735e17c2d39b9e00428d95815f00f0d383c17b3933c0a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0128c02f19340e640c9ed285c0f244bc891ce8ecbbe62d3cb711a95408668bf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonUnitalRing [Semigroup α] : NonUnitalRing (FreeAbelianGroup α) :=
  { FreeAbelianGroup.nonUnitalNonAssocRing with
    mul := (· * ·)
    mul_assoc := fun x y z ↦ by
      refine' FreeAbelianGroup.induction_on z (by simp only [mul_zero])
          (fun L3 ↦ _) (fun L3 ih ↦ _) fun z₁ z₂ ih₁ ih₂ ↦ _
      · refine' FreeAbelianGroup.induction_on y (by simp only [mul_zero, zero_mul])
            (fun L2 ↦ _) (fun L2 ih ↦ _) fun y₁ y₂ ih₁ ih₂ ↦ _
        · refine' FreeAbelianGroup.induction_on x (by simp only [zero_mul])
              (fun L1 ↦ _) (fun L1 ih ↦ _) fun x₁ x₂ ih₁ ih₂ ↦ _
          · rw [of_mul_of, of_mul_of, of_mul_of, of_mul_of, mul_assoc]
          · rw [neg_mul, neg_mul, neg_mul, ih]
          · rw [add_mul, add_mul, add_mul, ih₁, ih₂]
        · rw [neg_mul, mul_neg, mul_neg, neg_mul, ih]
        · rw [add_mul, mul_add, mul_add, add_mul, ih₁, ih₂]
      · rw [mul_neg, mul_neg, mul_neg, ih]
      · rw [mul_add, mul_add, mul_add, ih₁, ih₂] }

section Monoid

variable {R : Type*} [Monoid α] [Ring R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac0fcf33a584a0ab938b10d7b50a771e691b0c88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
