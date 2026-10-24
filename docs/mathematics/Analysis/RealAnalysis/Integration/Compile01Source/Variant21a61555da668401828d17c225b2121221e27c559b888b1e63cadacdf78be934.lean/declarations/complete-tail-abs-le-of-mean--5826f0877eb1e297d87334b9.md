# complete_tail_abs_le_of_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78a10d92-09a4-c693-554c-33560c0443a7",
  "kind": "theorem",
  "lexical_name": "complete_tail_abs_le_of_mean",
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
  "slug": "complete-tail-abs-le-of-mean--5826f0877eb1e297d87334b9",
  "source": {
    "blob": "0ee632c6af60f4d9094111dd3272d680e3ba9d4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Compile01Source/Variant21a61555da668401828d17c225b2121221e27c559b888b1e63cadacdf78be934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5826f0877eb1e297d87334b96653e1516b8098635de3d311a56d2a350a0f1830",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Compile01Source/Variant21a61555da668401828d17c225b2121221e27c559b888b1e63cadacdf78be934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78a10d92-09a4-c693-554c-33560c0443a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_tail_abs_le_of_mean (M1 R A : ℝ) (hR : 40 ≤ R) (hA : R ≤ A)
    (hmean : actualF7MeanBound M1 R) :
    |completeXiTail A| ≤ (5 + 2 * physicalCurvatureCoefficient / A) * M1 := by
  have hA40 : (40 : ℝ) ≤ A := hR.trans hA
  have hp : 0 < A := by linarith
  have hm := hmean (2 * A) (by linarith)
  calc
    _ ≤ physicalWeightBudget A * (∫ t in Real.log 7..2 * A, |actualF7 t|) :=
      complete_tail_abs_le_weighted_F7_mass A hA40
    _ ≤ physicalWeightBudget A * (M1 * (2 * A)) :=
      mul_le_mul_of_nonneg_left hm (physicalWeightBudget_nonneg A hp)
    _ = _ := by
      unfold physicalWeightBudget
      field_simp [hp.ne']
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Compile01Source/Variant21a61555da668401828d17c225b2121221e27c559b888b1e63cadacdf78be934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Compile01Source/Variant21a61555da668401828d17c225b2121221e27c559b888b1e63cadacdf78be934.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ee632c6af60f4d9094111dd3272d680e3ba9d4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
