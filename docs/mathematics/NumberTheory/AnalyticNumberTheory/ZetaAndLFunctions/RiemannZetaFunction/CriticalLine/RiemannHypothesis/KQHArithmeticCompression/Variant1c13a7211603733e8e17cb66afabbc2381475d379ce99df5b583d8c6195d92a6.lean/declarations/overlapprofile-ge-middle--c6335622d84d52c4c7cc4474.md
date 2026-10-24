# overlapProfile_ge_middle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a28f6420-3435-1d90-e91c-3ad7c9407525",
  "kind": "theorem",
  "lexical_name": "overlapProfile_ge_middle",
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
  "slug": "overlapprofile-ge-middle--c6335622d84d52c4c7cc4474",
  "source": {
    "blob": "542dbee653e8d6d9c40c1cdba6f67a4635c02311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant1c13a7211603733e8e17cb66afabbc2381475d379ce99df5b583d8c6195d92a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6335622d84d52c4c7cc4474661456a7adbdb9f6b8569476b27b59957793170a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant1c13a7211603733e8e17cb66afabbc2381475d379ce99df5b583d8c6195d92a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a28f6420-3435-1d90-e91c-3ad7c9407525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlapProfile_ge_middle {u : ℝ} (hu : 1 ≤ u) (hu2 : u ≤ 3 / 2) :
    1 / 437580 ≤ overlapProfile u := by
  have hp := overlapP0_ge (by linarith : 0 ≤ u)
  have hb : (1 / 2 : ℝ) ^ 9 ≤ (2 - u) ^ 9 :=
    pow_le_pow_left₀ (by norm_num) (by linarith) 9
  have hprod := mul_le_mul hb hp (by norm_num : (0 : ℝ) ≤ 1792)
    (by positivity : 0 ≤ (2 - u) ^ 9)
  unfold overlapProfile
  norm_num at hprod ⊢
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant1c13a7211603733e8e17cb66afabbc2381475d379ce99df5b583d8c6195d92a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant1c13a7211603733e8e17cb66afabbc2381475d379ce99df5b583d8c6195d92a6.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `542dbee653e8d6d9c40c1cdba6f67a4635c02311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
