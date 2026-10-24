# thetaTail_index_logConcave

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:555348d1-d3dc-b201-ca17-c4373d0cf784",
  "kind": "theorem",
  "lexical_name": "thetaTail_index_logConcave",
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
  "slug": "thetatail-index-logconcave--b2ef4d960e0bd937b5e79025",
  "source": {
    "blob": "85c6bc2edc63c6d9a171a5621fe4abfeed599b2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 17,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8XiCoefficientLog/Variant70183c5ebb5c1df9a9f22dca1b1562b7389e75143b502c4052c0f77c768a6395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2ef4d960e0bd937b5e79025b71484f4865fb8915477bf84cfd9e26ce07c9fd3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8XiCoefficientLog/Variant70183c5ebb5c1df9a9f22dca1b1562b7389e75143b502c4052c0f77c768a6395.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:555348d1-d3dc-b201-ca17-c4373d0cf784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_index_logConcave (r : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaTail r t * thetaTail (r + 2) t ≤ thetaTail (r + 1) t ^ 2 := by
  have h := integralTail_logSlope_nonnegative
    (differentiable_thetaTail (r + 1)) (thetaTail_integrableOn (r + 1))
    (deriv_thetaTail_integrableOn (r + 1)) (thetaTail_tendsto_atTop (r + 1))
    (fun u hu => thetaTail_positive (r + 1) hu)
    (thetaTail_logSlope_antitone (r + 1)) ht
  rw [(hasDerivAt_thetaTail_succ r t).deriv] at h
  change 0 ≤ thetaTail (r + 1) t ^ 2 +
    (∫ u in Ici t, thetaTail (r + 1) u) * (-thetaTail r t) at h
  rw [← thetaTail_succ_eq_integral (r + 1) ht] at h
  nlinarith only [h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8XiCoefficientLog/Variant70183c5ebb5c1df9a9f22dca1b1562b7389e75143b502c4052c0f77c768a6395.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/67cd208b8f38cd22bf1305a2cb2e8f739740138af371976402a7828ffc6310a8XiCoefficientLog/Variant70183c5ebb5c1df9a9f22dca1b1562b7389e75143b502c4052c0f77c768a6395.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85c6bc2edc63c6d9a171a5621fe4abfeed599b2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
