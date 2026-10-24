# automorphism_distance_to_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67d20f62-1611-e5c2-1e80-fdf010f54ad8",
  "kind": "theorem",
  "lexical_name": "automorphism_distance_to_boundary",
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
  "slug": "automorphism-distance-to-boundary--c23c2f425bd0b657e30653d1",
  "source": {
    "blob": "be466be6a015c2c1e8466a4958b75d058c10fadd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 129,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c23c2f425bd0b657e30653d1c9245405ec4b81f5a22375edc517ebfbe584ef5a",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67d20f62-1611-e5c2-1e80-fdf010f54ad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem automorphism_distance_to_boundary
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {family :
      ScheduleKernelFamily system carrier Schedule}
    (equivariance :
      EquivariantScheduleKernelCertificate
        model family)
    (automorphism : model.Automorphism)
    (law : carrier.Law) :
    carrier.wasserstein
        (equivariance.lawAction automorphism law)
        family.invariantLaw =
      carrier.wasserstein law family.invariantLaw := by
  calc
    carrier.wasserstein
        (equivariance.lawAction automorphism law)
        family.invariantLaw =
      carrier.wasserstein
        (equivariance.lawAction automorphism law)
        (equivariance.lawAction automorphism
          family.invariantLaw) := by
            rw [invariantLaw_automorphism_invariant
              equivariance automorphism]
    _ =
      carrier.wasserstein law family.invariantLaw :=
        equivariance.wassersteinInvariant
          automorphism law family.invariantLaw

/--
Automorphism-related traversals may differ at every finite depth, but both
approach the common symmetry-fixed boundary.  The displayed bound is the
exact finite form of the `2 qⁿ` estimate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Equivariance/Variant884248b86ed73b4d72595a275c6293e138e4f925953c7c72b030ba46b0f8a6df.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be466be6a015c2c1e8466a4958b75d058c10fadd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
