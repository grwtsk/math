# criticalDiscrepancyPrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f50e9652196502f3556bef6b94c9b3acde37944df98c0f53633d2a4a94e3fa38",
  "kind": "def",
  "lexical_name": "criticalDiscrepancyPrimitive",
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
  "slug": "criticaldiscrepancyprimitive--a6547ef3a7c6955900007c51",
  "source": {
    "blob": "695ab506022bb90e9088d8e115f13642ef8322b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 35,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6547ef3a7c6955900007c519de8c04350220cb1bf843e70dcd3289499c1c229",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f50e9652196502f3556bef6b94c9b3acde37944df98c0f53633d2a4a94e3fa38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def criticalDiscrepancyPrimitive (u : ℝ) : ℝ :=
  ∫ v in 0..u, criticalCumulativeDiscrepancy v

/-- Removing an affine endpoint value produces a bridge with zero endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695ab506022bb90e9088d8e115f13642ef8322b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
