# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcb0454e993391d6bfd27435b136b86c364a848dc9764a3cb48585e35cf96bde",
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
  "slug": "instance--32e2cdee703088bd2db524b7",
  "source": {
    "blob": "b86d294c7d72ed8ed1fe13050939547dd635c170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 855,
    "line": 849,
    "path": "GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32e2cdee703088bd2db524b707f0d9a2b186f3c6eb95637b0e21b2b4c005df7b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RestrictedProduct/Variant01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcb0454e993391d6bfd27435b136b86c364a848dc9764a3cb48585e35cf96bde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 849–855.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Π i, Ring (R i)] [∀ i, SubringClass (S i) (R i)] [∀ i, IsTopologicalRing (R i)] :
    IsTopologicalRing (Πʳ i, [R i, B i]_[𝓟 T]) where

end principal

section cofinite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RestrictedProduct/Variant01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean#L849).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b86d294c7d72ed8ed1fe13050939547dd635c170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
