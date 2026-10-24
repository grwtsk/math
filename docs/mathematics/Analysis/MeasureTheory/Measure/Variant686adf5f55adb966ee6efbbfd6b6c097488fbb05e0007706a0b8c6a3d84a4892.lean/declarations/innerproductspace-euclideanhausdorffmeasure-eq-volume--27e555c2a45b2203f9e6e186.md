# InnerProductSpace.euclideanHausdorffMeasure_eq_volume

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c01e468cbfdfa507caec45ee2ac2006321c4b5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc3007aa-8809-abaa-5f93-1ad91855e920",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e1230bc-921c-4cd0-4baf-e70d3d563049",
  "kind": "theorem",
  "lexical_name": "InnerProductSpace.euclideanHausdorffMeasure_eq_volume",
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
  "slug": "innerproductspace-euclideanhausdorffmeasure-eq-volume--27e555c2a45b2203f9e6e186",
  "source": {
    "blob": "3c01e468cbfdfa507caec45ee2ac2006321c4b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 188,
    "path": "GRWTSK/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27e555c2a45b2203f9e6e1862ac65c408c3fb6a278c042d94f1fd93bbbf30415",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e1230bc-921c-4cd0-4baf-e70d3d563049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem InnerProductSpace.euclideanHausdorffMeasure_eq_volume :
    (μHE[finrank ℝ V] : Measure V) = volume := by
  rw [← (stdOrthonormalBasis ℝ V).measurePreserving_repr_symm.map_eq,
    ← (stdOrthonormalBasis ℝ V).repr.toIsometryEquiv
      |>.symm.measurePreserving_euclideanHausdorffMeasure _ |>.map_eq,
    EuclideanSpace.euclideanHausdorffMeasure_eq_volume]
  simp

/-!
### `μHE[d]` on an affine space matches the volume measure on the associated inner product space.
-/
/-- We may want to endow an affine space with a `MeasureSpace` that transfers `volume` from its
associated inner product space. If it is implemented, we can unify this lemma with the previous one.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c01e468cbfdfa507caec45ee2ac2006321c4b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
