# coordinateForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5aba3ae41d86f2f1ecdd2193ad31f5ab08f91ccf39dbf2f636cb43c4c1890f2c",
  "kind": "def",
  "lexical_name": "coordinateForm",
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
  "slug": "coordinateform--7f6671fb6407b04b00c8596d",
  "source": {
    "blob": "cbbdf81b02d168c8f6eef11c2d823856f8e81eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 41,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f6671fb6407b04b00c8596d2ce1d8f861f8fb657919b1fd6d35ac2db36d2f82",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5aba3ae41d86f2f1ecdd2193ad31f5ab08f91ccf39dbf2f636cb43c4c1890f2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coordinateForm (weight : I → ℝ) (hw : ∀ i, 0 ≤ weight i) :
    PositiveForm (I → ℝ) where
  form x y := ∑ i, weight i * (x i * y i)
  add_left x y z := by
    simp only [Pi.add_apply, add_mul, mul_add, Finset.sum_add_distrib]
  smul_left a x y := by
    simp only [Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    ring
  add_right x y z := by
    simp only [Pi.add_apply, mul_add, Finset.sum_add_distrib]
  smul_right a x y := by
    simp only [Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    ring
  symmetric x y := by
    apply Finset.sum_congr rfl
    intro i _
    rw [mul_comm (x i) (y i)]
  nonnegative x := Finset.sum_nonneg fun i _ => mul_nonneg (hw i) (mul_self_nonneg (x i))

/-- A strictly positively weighted coordinate vector is null exactly when it is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbbdf81b02d168c8f6eef11c2d823856f8e81eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
