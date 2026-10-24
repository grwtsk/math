# nonUnitalRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bad38670ce40003e7eb86fbab319148dc50f355058215c10248ec722b0f67c0",
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
  "slug": "nonunitalring--b8a6f2c6cb37f2dbea7158d7",
  "source": {
    "blob": "9a488cb77bef37e2af2b4c84b5f4174eee1625ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 441,
    "path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant240fdfd81dd3c41a782a79bdef2c9df60a9bdb0bd50b017a4caa3b85afe7fa2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8a6f2c6cb37f2dbea7158d7c6ffc6fce66ef0acd1ae6e40f921a58a4933896e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FreeAbelianGroup/Variant240fdfd81dd3c41a782a79bdef2c9df60a9bdb0bd50b017a4caa3b85afe7fa2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0bad38670ce40003e7eb86fbab319148dc50f355058215c10248ec722b0f67c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonUnitalRing [Semigroup α] : NonUnitalRing (FreeAbelianGroup α) where
  mul_assoc x y z := by
    induction z using FreeAbelianGroup.induction_on with
    | zero => simp only [mul_zero]
    | of L3 =>
      induction y using FreeAbelianGroup.induction_on with
      | zero => simp only [mul_zero, zero_mul]
      | of L2 =>
        induction x using FreeAbelianGroup.induction_on with
        | zero => simp only [zero_mul]
        | of L1 => rw [of_mul_of, of_mul_of, of_mul_of, of_mul_of, mul_assoc]
        | neg L1 ih => rw [neg_mul, neg_mul, neg_mul, ih]
        | add x₁ x₂ ih₁ ih₂ => rw [add_mul, add_mul, add_mul, ih₁, ih₂]
      | neg L2 ih => rw [neg_mul, mul_neg, mul_neg, neg_mul, ih]
      | add y₁ y₂ ih₁ ih₂ => rw [add_mul, mul_add, mul_add, add_mul, ih₁, ih₂]
    | neg L3 ih => rw [mul_neg, mul_neg, mul_neg, ih]
    | add z₁ z₂ ih₁ ih₂ => rw [mul_add, mul_add, mul_add, ih₁, ih₂]

section Monoid

variable {R : Type*} [Monoid α] [Ring R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FreeAbelianGroup/Variant240fdfd81dd3c41a782a79bdef2c9df60a9bdb0bd50b017a4caa3b85afe7fa2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant240fdfd81dd3c41a782a79bdef2c9df60a9bdb0bd50b017a4caa3b85afe7fa2c.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a488cb77bef37e2af2b4c84b5f4174eee1625ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
