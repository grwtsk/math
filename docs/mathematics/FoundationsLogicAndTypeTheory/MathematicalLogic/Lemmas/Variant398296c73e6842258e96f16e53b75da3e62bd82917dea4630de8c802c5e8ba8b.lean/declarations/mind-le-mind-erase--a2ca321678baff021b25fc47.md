# minD_le_minD_erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:431706bd-bac7-037a-bdac-6a68f070a31a",
  "kind": "theorem",
  "lexical_name": "minD_le_minD_erase",
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
  "slug": "mind-le-mind-erase--a2ca321678baff021b25fc47",
  "source": {
    "blob": "76ca4f83bb556b8a239b1f057589941b71187210",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1712,
    "line": 1708,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant398296c73e6842258e96f16e53b75da3e62bd82917dea4630de8c802c5e8ba8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2ca321678baff021b25fc47b12fdb8eaf6f573d16d4fa81cc1fa965ccaf7bcb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant398296c73e6842258e96f16e53b75da3e62bd82917dea4630de8c802c5e8ba8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:431706bd-bac7-037a-bdac-6a68f070a31a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1708–1712.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minD_le_minD_erase [TransCmp cmp] {k}
    (he : (t.erase k).isEmpty = false) {fallback} :
    cmp (t.minD fallback) (t.erase k |>.minD fallback) |>.isLE :=
  TreeMap.minKeyD_le_minKeyD_erase he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant398296c73e6842258e96f16e53b75da3e62bd82917dea4630de8c802c5e8ba8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant398296c73e6842258e96f16e53b75da3e62bd82917dea4630de8c802c5e8ba8b.lean#L1708).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76ca4f83bb556b8a239b1f057589941b71187210` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
