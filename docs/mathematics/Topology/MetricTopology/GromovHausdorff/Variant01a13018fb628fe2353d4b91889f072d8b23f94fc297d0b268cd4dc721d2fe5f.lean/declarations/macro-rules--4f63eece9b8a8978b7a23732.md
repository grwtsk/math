# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f15ace9c2076465e01fd3035b9cae40c64bf60210d168f2161ece698e8da76b6",
  "kind": "macro_rules",
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
  "slug": "macro-rules--4f63eece9b8a8978b7a23732",
  "source": {
    "blob": "b37c224e2b9f34b621e69661c2dab552b520bc4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1015,
    "line": 1013,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f63eece9b8a8978b7a23732ef81ea9de033d89f3e3e5acfe57679c7d9c1d448",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f15ace9c2076465e01fd3035b9cae40c64bf60210d168f2161ece698e8da76b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1013–1015.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

/-- The Gromov-Hausdorff space is complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean#L1013).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b37c224e2b9f34b621e69661c2dab552b520bc4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
