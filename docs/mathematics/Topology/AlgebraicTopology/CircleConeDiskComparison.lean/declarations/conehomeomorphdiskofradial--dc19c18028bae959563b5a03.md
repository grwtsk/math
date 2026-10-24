# coneHomeomorphDiskOfRadial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fbf7cf49b59f54d1cb6dd3e913b272c4beb0e16dd34e2a87001a5408afe8169",
  "kind": "def",
  "lexical_name": "coneHomeomorphDiskOfRadial",
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
  "slug": "conehomeomorphdiskofradial--dc19c18028bae959563b5a03",
  "source": {
    "blob": "81daebd6935c95c96d8d3f45fe702e009ae96b96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 152,
    "path": "GRWTSK/Topology/AlgebraicTopology/CircleConeDiskComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc19c18028bae959563b5a030216d8aaf50d3a4f8a1af86ab9b40eac3c5fa9bd",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fbf7cf49b59f54d1cb6dd3e913b272c4beb0e16dd34e2a87001a5408afe8169`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coneHomeomorphDiskOfRadial
    (f : CircleCylinder → TopCat.disk 2)
    (hk : HasExactApexKernel f)
    (hc : Continuous f)
    (hs : Function.Surjective f) :
    CircleCone ≃ₜ TopCat.disk 2 := by
  letI : CompactSpace CircleCone := coneCompact
  exact (diskMapOfExactKernel_continuous f hk hc).homeoOfEquivCompactToT2
    (f := Equiv.ofBijective (diskMapOfExactKernel f hk)
      ⟨diskMapOfExactKernel_injective f hk,
       diskMapOfExactKernel_surjective f hk hs⟩)

end GRWTSK.Topology.AlgebraicTopology.CircleConeDiskComparison
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/CircleConeDiskComparison.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81daebd6935c95c96d8d3f45fe702e009ae96b96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
