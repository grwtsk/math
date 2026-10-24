# coordinateForm_isNull_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97594fbb-0b99-bca5-ebb0-6390d978780f",
  "kind": "theorem",
  "lexical_name": "coordinateForm_isNull_iff",
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
  "slug": "coordinateform-isnull-iff--3446342ff97fbe22038d9de5",
  "source": {
    "blob": "cbbdf81b02d168c8f6eef11c2d823856f8e81eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3446342ff97fbe22038d9de530f96e00dd09ddb1035f80119b34c3e27438a549",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97594fbb-0b99-bca5-ebb0-6390d978780f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinateForm_isNull_iff (weight : I → ℝ) (hw : ∀ i, 0 < weight i)
    (x : I → ℝ) :
    (coordinateForm weight (fun i => (hw i).le)).IsNull x ↔ x = 0 := by
  change (∑ i, weight i * (x i * x i)) = 0 ↔ x = 0
  constructor
  · intro h
    have hterm := (Finset.sum_eq_zero_iff_of_nonneg
      (fun i (_ : i ∈ Finset.univ) => mul_nonneg (hw i).le (mul_self_nonneg (x i)))).mp h
    ext i
    have hsq : x i * x i = 0 :=
      (mul_eq_zero.mp (hterm i (Finset.mem_univ i))).resolve_left (ne_of_gt (hw i))
    exact (mul_self_eq_zero.mp hsq)
  · rintro rfl
    simp

/-- The weighted Gram form of a finite linear feature realization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbbdf81b02d168c8f6eef11c2d823856f8e81eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
