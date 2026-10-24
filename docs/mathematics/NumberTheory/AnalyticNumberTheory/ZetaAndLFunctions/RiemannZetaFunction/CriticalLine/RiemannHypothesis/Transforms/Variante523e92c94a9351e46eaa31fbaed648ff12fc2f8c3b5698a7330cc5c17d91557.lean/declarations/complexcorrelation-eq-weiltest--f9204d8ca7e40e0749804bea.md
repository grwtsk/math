# complexCorrelation_eq_weilTest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ece71f4d54c1b1223eabc44a501c93b55706736",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e523e92c94a9351e46eaa31fbaed648ff12fc2f8c3b5698a7330cc5c17d91557.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd17d684-0e56-58b0-1df7-84a05202ec89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:217959da-efc9-c5f4-2e35-159df56027f8",
  "kind": "theorem",
  "lexical_name": "complexCorrelation_eq_weilTest",
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
  "slug": "complexcorrelation-eq-weiltest--f9204d8ca7e40e0749804bea",
  "source": {
    "blob": "0ece71f4d54c1b1223eabc44a501c93b55706736",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transforms/Variante523e92c94a9351e46eaa31fbaed648ff12fc2f8c3b5698a7330cc5c17d91557.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9204d8ca7e40e0749804bea7652e1a57e0bfb7ea3971dd6de91c6160ea2538a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transforms/Variante523e92c94a9351e46eaa31fbaed648ff12fc2f8c3b5698a7330cc5c17d91557.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:217959da-efc9-c5f4-2e35-159df56027f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexCorrelation_eq_weilTest (A : ℝ) :
    complexCorrelation A = Zeta23.EF.weilTest (complexTest A) (complexTest A) := by
  funext t
  change ((∫ x, actualTest A x * actualTest A (x - t) : ℝ) : ℂ) =
    ∫ x, (actualTest A x : ℂ) * conj (actualTest A (-(t - x)) : ℂ)
  rw [← integral_complex_ofReal]
  apply integral_congr_ae
  filter_upwards [] with x
  simp only [Complex.ofReal_mul, Complex.conj_ofReal, show -(t - x) = x - t by ring]

/-- Real evenness makes the involuted factor the same source test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transforms/Variante523e92c94a9351e46eaa31fbaed648ff12fc2f8c3b5698a7330cc5c17d91557.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transforms/Variante523e92c94a9351e46eaa31fbaed648ff12fc2f8c3b5698a7330cc5c17d91557.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ece71f4d54c1b1223eabc44a501c93b55706736` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
