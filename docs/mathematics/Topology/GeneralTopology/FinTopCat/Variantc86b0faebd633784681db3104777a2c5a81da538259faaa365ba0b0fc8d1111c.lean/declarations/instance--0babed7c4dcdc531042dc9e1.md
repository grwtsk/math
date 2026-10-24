# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:780ae17acfe93853d59c7f0c1a612bd2e79f8547a1d1394c2e6fd9c15e9c22ac",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--0babed7c4dcdc531042dc9e1",
  "source": {
    "blob": "5ec94a5d4620e30abcbac6cf477f40b3c1e9115f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/FinTopCat/Variantc86b0faebd633784681db3104777a2c5a81da538259faaa365ba0b0fc8d1111c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0babed7c4dcdc531042dc9e178f7c0311f05b7d3a6e51cf7db2344febf5305d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FinTopCat/Variantc86b0faebd633784681db3104777a2c5a81da538259faaa365ba0b0fc8d1111c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:780ae17acfe93853d59c7f0c1a612bd2e79f8547a1d1394c2e6fd9c15e9c22ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance : HasForget₂ FintypeCat TopCat where
  forget₂.obj X := ↧X
  forget₂.map f := TopCat.ofHom ⟨f, continuous_of_discreteTopology⟩

end FintypeCatDiscrete
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FinTopCat/Variantc86b0faebd633784681db3104777a2c5a81da538259faaa365ba0b0fc8d1111c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FinTopCat/Variantc86b0faebd633784681db3104777a2c5a81da538259faaa365ba0b0fc8d1111c.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ec94a5d4620e30abcbac6cf477f40b3c1e9115f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
