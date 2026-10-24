# observable_symmetry_defect_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34b4683f1e66f7efd2aab05c964ce0bf9c3f2ba9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20304aa5-8baa-e28a-db7b-4579770e04b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e10a6a95-e152-6229-1ca9-b179b053881a",
  "kind": "theorem",
  "lexical_name": "observable_symmetry_defect_bound",
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
  "slug": "observable-symmetry-defect-bound--6ad0bbcb0e6db4afe7a19042",
  "source": {
    "blob": "34b4683f1e66f7efd2aab05c964ce0bf9c3f2ba9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 265,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variantfb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ad0bbcb0e6db4afe7a19042da418e506033b7bcd80a4f0ec9260f6c169ad90e",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variantfb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e10a6a95-e152-6229-1ca9-b179b053881a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem observable_symmetry_defect_bound
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    {equivariance :
      EquivariantScheduleKernelCertificate
        model reference}
    (implemented :
      ApproximateEquivariantScheduleDynamics
        equivariance)
    (observable :
      LawObservableLipschitzCertificate carrier)
    (automorphism : model.Automorphism) :
    |observable.observable
          (equivariance.lawAction automorphism
            implemented.implementedInvariant) -
        observable.observable
          implemented.implementedInvariant| ≤
      (observable.lipschitz : ℝ) *
        ((implemented.equivarianceDefect : ℝ) /
          (1 - (reference.contraction : ℝ))) := by
  calc
    |observable.observable
          (equivariance.lawAction automorphism
            implemented.implementedInvariant) -
        observable.observable
          implemented.implementedInvariant| ≤
      (observable.lipschitz : ℝ) *
        (carrier.wasserstein
          (equivariance.lawAction automorphism
            implemented.implementedInvariant)
          implemented.implementedInvariant : ℝ) :=
      observable.lipschitzBound _ _
    _ ≤
      (observable.lipschitz : ℝ) *
        ((implemented.equivarianceDefect : ℝ) /
          (1 - (reference.contraction : ℝ))) :=
      mul_le_mul_of_nonneg_left
        (implemented.invariant_law_symmetry_defect_bound
          automorphism)
        (NNReal.coe_nonneg _)

end Mathematics.ConnesBitfield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variantfb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variantfb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34b4683f1e66f7efd2aab05c964ce0bf9c3f2ba9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
