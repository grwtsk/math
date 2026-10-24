# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84a812a598d3e026f5bc30bad60e9888e3c7b3fb2747b5e6d407ea65d57a66c2",
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
  "slug": "instance--27fa9ff2a4fcd0f93db2ca1b",
  "source": {
    "blob": "5ac81d74729e7b88f3f16d4831455073a412292f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 175,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf7935a1f5fb89f3e5bad33c5302dcca8a5748636b0624cc0a9a52c955ec06743.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27fa9ff2a4fcd0f93db2ca1ba50f4103ef8aa2bb41b8b536f03c62908d259444",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf7935a1f5fb89f3e5bad33c5302dcca8a5748636b0624cc0a9a52c955ec06743.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84a812a598d3e026f5bc30bad60e9888e3c7b3fb2747b5e6d407ea65d57a66c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (X : FintypeCat) : Finite (Profinite.of X) := inferInstanceAs (Finite X)

end DiscreteTopology

end Profinite

namespace Profinite

/-- An explicit limit cone for a functor `F : J ⥤ Profinite`, defined in terms of
`CompHaus.limitCone`, which is defined in terms of `TopCat.limitCone`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf7935a1f5fb89f3e5bad33c5302dcca8a5748636b0624cc0a9a52c955ec06743.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf7935a1f5fb89f3e5bad33c5302dcca8a5748636b0624cc0a9a52c955ec06743.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ac81d74729e7b88f3f16d4831455073a412292f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
