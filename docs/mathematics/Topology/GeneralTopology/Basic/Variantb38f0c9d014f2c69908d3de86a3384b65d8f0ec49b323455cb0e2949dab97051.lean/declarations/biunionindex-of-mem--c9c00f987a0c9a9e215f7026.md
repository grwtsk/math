# biUnionIndex_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63d07a2e-f388-13e4-42a9-9fb14810dd1d",
  "kind": "theorem",
  "lexical_name": "biUnionIndex_of_mem",
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
  "slug": "biunionindex-of-mem--c9c00f987a0c9a9e215f7026",
  "source": {
    "blob": "61b1912b18fe576f2d4fa513ec6b0e85187d0247",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 349,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9c00f987a0c9a9e215f70260616a2aecc3b69ef673d1eff1951e9addbc72c38",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63d07a2e-f388-13e4-42a9-9fb14810dd1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biUnionIndex_of_mem (hJ : J ∈ π) {J'} (hJ' : J' ∈ πi J) : π.biUnionIndex πi J' = J :=
  have : J' ∈ π.biUnion πi := π.mem_biUnion.2 ⟨J, hJ, hJ'⟩
  π.eq_of_le_of_le (π.biUnionIndex_mem this) hJ (π.le_biUnionIndex this) (le_of_mem _ hJ')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b1912b18fe576f2d4fa513ec6b0e85187d0247` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
