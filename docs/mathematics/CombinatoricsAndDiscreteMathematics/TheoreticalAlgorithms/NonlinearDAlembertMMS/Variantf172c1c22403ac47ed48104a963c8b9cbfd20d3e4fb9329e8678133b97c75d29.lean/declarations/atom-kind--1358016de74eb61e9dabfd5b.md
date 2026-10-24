# Atom.kind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74a91395d85f2a29a7b0ac0511706205ca6e9347aa2304ccfc87ecb502261222",
  "kind": "def",
  "lexical_name": "Atom.kind",
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
  "slug": "atom-kind--1358016de74eb61e9dabfd5b",
  "source": {
    "blob": "9a06a0520812c130045517b39973c90c3845a1e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NonlinearDAlembertMMS/Variantf172c1c22403ac47ed48104a963c8b9cbfd20d3e4fb9329e8678133b97c75d29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1358016de74eb61e9dabfd5b4bdddac2574e2e92516acce5fe0d5e7a2f8d9a10",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NonlinearDAlembertMMS/Variantf172c1c22403ac47ed48104a963c8b9cbfd20d3e4fb9329e8678133b97c75d29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74a91395d85f2a29a7b0ac0511706205ca6e9347aa2304ccfc87ecb502261222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.kind : Atom -> FWR.ResidueKind
  | .metricMeasureSpacetime => FWR.ResidueKind.missingDefinition
  | .causalFunction => FWR.ResidueKind.missingDefinition
  | .maximalWeakSubslope => FWR.ResidueKind.missingDefinition
  | .locality => FWR.ResidueKind.externalTheoremNotImported
  | .chainRule => FWR.ResidueKind.externalTheoremNotImported
  | .leibnizRule => FWR.ResidueKind.externalTheoremNotImported
  | .infinitesimalMinkowskianity => FWR.ResidueKind.missingDefinition
  | .timelikeMCP => FWR.ResidueKind.missingPDEEstimate
  | .weakPDalembertComparison => FWR.ResidueKind.externalTheoremNotImported

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NonlinearDAlembertMMS/Variantf172c1c22403ac47ed48104a963c8b9cbfd20d3e4fb9329e8678133b97c75d29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NonlinearDAlembertMMS/Variantf172c1c22403ac47ed48104a963c8b9cbfd20d3e4fb9329e8678133b97c75d29.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a06a0520812c130045517b39973c90c3845a1e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
