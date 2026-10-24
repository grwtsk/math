# isColimitCoconeN'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9864a571099c0f4db6f5ea27089db649c4d5ba706692612a4b53cdef1674b14",
  "kind": "def",
  "lexical_name": "isColimitCoconeN'",
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
  "slug": "iscolimitcoconen--f4ae5560699143bde300eb4d",
  "source": {
    "blob": "f4af41ee6a43649c35dec78ee4f119b094851827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 81,
    "path": "GRWTSK/Topology/AlgebraicTopology/NonsingularColimit/Variantb311dbeca6e086c8f98cdad0e7d25e7c52a0a067dad67fa521b27bddb1349e16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4ae5560699143bde300eb4d8841312758cb626390c9ff640a627c02dbabc61e",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/NonsingularColimit/Variantb311dbeca6e086c8f98cdad0e7d25e7c52a0a067dad67fa521b27bddb1349e16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9864a571099c0f4db6f5ea27089db649c4d5ba706692612a4b53cdef1674b14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitCoconeN' : IsColimit X.coconeN' :=
  (IsColimit.equivOfNatIsoOfIso
    X.functorN'Iso.symm _ _ (Cocone.ext (Iso.refl _))).1 X.isColimitCoconeN

end SSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/NonsingularColimit/Variantb311dbeca6e086c8f98cdad0e7d25e7c52a0a067dad67fa521b27bddb1349e16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/NonsingularColimit/Variantb311dbeca6e086c8f98cdad0e7d25e7c52a0a067dad67fa521b27bddb1349e16.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4af41ee6a43649c35dec78ee4f119b094851827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
