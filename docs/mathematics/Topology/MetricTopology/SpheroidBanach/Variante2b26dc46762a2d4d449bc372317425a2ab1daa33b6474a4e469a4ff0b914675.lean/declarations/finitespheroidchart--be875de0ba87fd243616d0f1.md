# FiniteSpheroidChart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e52a0ffb50cfa808c3dc7f55a547df226e1fa9914ec23fb71f52b94191969754",
  "kind": "structure",
  "lexical_name": "FiniteSpheroidChart",
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
  "slug": "finitespheroidchart--be875de0ba87fd243616d0f1",
  "source": {
    "blob": "668935866a8b0d725b4dac3a7f49bba54f624171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be875de0ba87fd243616d0f1b50ed2f80b27659839d5d1978116eeab41ddb6ba",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e52a0ffb50cfa808c3dc7f55a547df226e1fa9914ec23fb71f52b94191969754`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteSpheroidChart (ι : Type*) [Fintype ι]
    (a c : ℝ) (ha : 0 < a) (hc : 0 < c) where
  point : PuncturedSpheroid (ι := ι) a c

namespace FiniteSpheroidChart

variable {a c : ℝ} {ha : 0 < a} {hc : 0 < c}

/-- Read the stereographic coordinates of a nominal chart point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668935866a8b0d725b4dac3a7f49bba54f624171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
