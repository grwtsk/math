# actual_endpoint_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3555995c-ff47-00b6-d051-f5968a52648a",
  "kind": "theorem",
  "lexical_name": "actual_endpoint_lt",
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
  "slug": "actual-endpoint-lt--41f2628da3c1925d3147ba53",
  "source": {
    "blob": "d8271a16aff960ad0b8cb591665a3419a7b4a20a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 34,
    "path": "GRWTSK/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41f2628da3c1925d3147ba53d6b9dde14feb8b860bb4b90a6644cfcf781fc956",
  "verification": {
    "reference": "docs/verification/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3555995c-ff47-00b6-d051-f5968a52648a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_endpoint_lt : paperEndpoint < -(21/4:ℝ) := by
  unfold paperEndpoint
  have h2 : (69/100:ℝ) < Real.log 2 := by linarith [Real.log_two_gt_d9]
  have h3 : (109/100:ℝ) < Real.log 3 := by linarith [Real.log_three_gt_d9]
  linarith [Real.one_half_lt_eulerMascheroniConstant, Real.pi_gt_d2, log_pi_lower]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8271a16aff960ad0b8cb591665a3419a7b4a20a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
