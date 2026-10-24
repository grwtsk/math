# symmetry_displacement_recurrence

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
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9051354-3a28-8cba-cdf6-5f47e8eb1d1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0117606e-9a87-f547-5890-8dfabb3a8ea3",
  "kind": "theorem",
  "lexical_name": "symmetry_displacement_recurrence",
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
  "slug": "symmetry-displacement-recurrence--23db8a3694b8ffefbce95050",
  "source": {
    "blob": "34b4683f1e66f7efd2aab05c964ce0bf9c3f2ba9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 72,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variantfb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23db8a3694b8ffefbce95050a44fab669f10c8e713fff21b530ad904b732d8db",
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

Occurrence: `result:0117606e-9a87-f547-5890-8dfabb3a8ea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetry_displacement_recurrence
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
    (automorphism : model.Automorphism) :
    carrier.wasserstein
        (equivariance.lawAction automorphism
          implemented.implementedInvariant)
        implemented.implementedInvariant ≤
      implemented.equivarianceDefect +
        reference.contraction *
          carrier.wasserstein
            (equivariance.lawAction automorphism
              implemented.implementedInvariant)
            implemented.implementedInvariant := by
  let schedule := reference.defaultSchedule
  calc
    carrier.wasserstein
        (equivariance.lawAction automorphism
          implemented.implementedInvariant)
        implemented.implementedInvariant =
      carrier.wasserstein
        (equivariance.lawAction automorphism
          (carrier.push
            (implemented.implementedKernel schedule)
            implemented.implementedInvariant))
        (carrier.push
          (implemented.implementedKernel schedule)
          implemented.implementedInvariant) := by
            rw [implemented.implementedCommonInvariant]
    _ ≤
      carrier.wasserstein
          (equivariance.lawAction automorphism
            (carrier.push
              (implemented.implementedKernel schedule)
              implemented.implementedInvariant))
          (carrier.push
            (implemented.implementedKernel schedule)
            (equivariance.lawAction automorphism
              implemented.implementedInvariant)) +
        carrier.wasserstein
          (carrier.push
            (implemented.implementedKernel schedule)
            (equivariance.lawAction automorphism
              implemented.implementedInvariant))
          (carrier.push
            (implemented.implementedKernel schedule)
            implemented.implementedInvariant) := by
              simpa
                  [carrier.wasserstein_eq_nndist]
                using
                  nndist_triangle
                    (equivariance.lawAction automorphism
                      (carrier.push
                        (implemented.implementedKernel
                          schedule)
                        implemented.implementedInvariant))
                    (carrier.push
                      (implemented.implementedKernel
                        schedule)
                      (equivariance.lawAction
                        automorphism
                        implemented.implementedInvariant))
                    (carrier.push
                      (implemented.implementedKernel
                        schedule)
                      implemented.implementedInvariant)
    _ ≤
      implemented.equivarianceDefect +
        reference.contraction *
          carrier.wasserstein
            (equivariance.lawAction automorphism
              implemented.implementedInvariant)
            implemented.implementedInvariant :=
      add_le_add
        (implemented.lawDefectLe
          automorphism schedule
          implemented.implementedInvariant)
        (implemented.implementedContractive
          schedule
          (equivariance.lawAction automorphism
            implemented.implementedInvariant)
          implemented.implementedInvariant)

/--
The global symmetry radius.  A zero local defect recovers exact invariance;
a nonzero defect remains visible and is amplified only by `1 / (1 - q)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variantfb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variantfb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34b4683f1e66f7efd2aab05c964ce0bf9c3f2ba9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
