# properPowerCoefficient_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "410e5634202dca9e0a2d0446dbcdb68de3149d57",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cdc0cdf-a154-c332-28a2-b8ffb09f420d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec5374e0-7557-a954-41bb-c116078baa04",
  "kind": "theorem",
  "lexical_name": "properPowerCoefficient_nonneg",
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
  "slug": "properpowercoefficient-nonneg--65e5b79cc62317aca86fb15f",
  "source": {
    "blob": "410e5634202dca9e0a2d0446dbcdb68de3149d57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 128,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65e5b79cc62317aca86fb15fe4353e67ebcf6a17aed0ad395524c0f5310e7ea4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec5374e0-7557-a954-41bb-c116078baa04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properPowerCoefficient_nonneg (n : ℕ) : 0 ≤ properPowerCoefficient n := by
  by_cases hp : n.Prime
  · simp [properPowerCoefficient, primeCoefficient, hp, vonMangoldt_apply_prime hp]
  · simp [properPowerCoefficient, primeCoefficient, hp, vonMangoldt_nonneg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410e5634202dca9e0a2d0446dbcdb68de3149d57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
