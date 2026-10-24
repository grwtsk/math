# exists_finset_toSmoothPartitionOfUnity_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:def0a611-bb43-d19f-2ba2-0b496559d8e1",
  "kind": "theorem",
  "lexical_name": "exists_finset_toSmoothPartitionOfUnity_eventuallyEq",
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
  "slug": "exists-finset-tosmoothpartitionofunity-eventuallyeq--c351967ecb106b6ccc746b7b",
  "source": {
    "blob": "8ad678ee53933a200bc5596ae5ba6c8963edf22d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 468,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c351967ecb106b6ccc746b7bd516c560985d51d9decc789b687b40d64a6b2299",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:def0a611-bb43-d19f-2ba2-0b496559d8e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finset_toSmoothPartitionOfUnity_eventuallyEq (i : ι) (x : M) :
    ∃ t : Finset ι,
      fs.toSmoothPartitionOfUnity i =ᶠ[𝓝 x]
        fs i * ∏ j ∈ t with WellOrderingRel j i, ((1 : M → ℝ) - fs j) := by
  simpa using! fs.toBumpCovering.exists_finset_toPartitionOfUnity_eventuallyEq i x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ad678ee53933a200bc5596ae5ba6c8963edf22d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
