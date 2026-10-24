# isLocallyConstant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aec0d2e5-1311-b852-604c-c46a0e5553b3",
  "kind": "theorem",
  "lexical_name": "isLocallyConstant",
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
  "slug": "islocallyconstant--518709cd7f9f8ca4e7c2a524",
  "source": {
    "blob": "7eae7c83ee47c6ea67b4331aa0c11daa12c71ac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 164,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:518709cd7f9f8ca4e7c2a5240b6ad21be29d1aaee32fcfcd44ef147a7012c58a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aec0d2e5-1311-b852-604c-c46a0e5553b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isLocallyConstant {f : M → F} (hf : MDiff f) :
    IsLocallyConstant f :=
  haveI : LocallyConnectedSpace H := I.toHomeomorph.locallyConnectedSpace
  haveI : LocallyConnectedSpace M := ChartedSpace.locallyConnectedSpace H M
  IsLocallyConstant.of_constant_on_preconnected_clopens fun _ hpc hclo _a ha _b hb ↦
    hf.mdifferentiableOn.apply_eq_of_isPreconnected_isCompact_isOpen hpc
      hclo.isClosed.isCompact hclo.isOpen hb ha

/-- A holomorphic function on a compact connected complex manifold is constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eae7c83ee47c6ea67b4331aa0c11daa12c71ac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
