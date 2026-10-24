# gammaFactsChi_of_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68c57c3a-9d4f-481f-a205-67555ffb29c8",
  "kind": "theorem",
  "lexical_name": "gammaFactsChi_of_int",
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
  "slug": "gammafactschi-of-int--7e6b3e19297a652945e971d1",
  "source": {
    "blob": "cf1486081a4e59a90670d111b5eeb029cba4094f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 367,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e6b3e19297a652945e971d17d6d53dd3f65b04229dcc1f8c180178bf45e27ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68c57c3a-9d4f-481f-a205-67555ffb29c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gammaFactsChi_of_int (hκ : κ ≤ 1) (hq : 1 ≤ q)
    (hint : ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T →
      |(∫ τ in T..(2 * T), muq κ q τ) - T * ell1q q T / (2 * Real.pi)| ≤ C / T)
    (hint2 : ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T →
      |(∫ τ in T..(2 * T), muq κ q τ ^ 2) - T * ell1q q T ^ 2 / (4 * Real.pi ^ 2)|
        ≤ C * (T * ell1q q T ^ 2 / (4 * Real.pi ^ 2)) / l T ^ 2) :
    GammaFactsChi κ q :=
  ⟨muq_even hκ, muq_smooth κ q, muq_monotoneOn hκ, muq_zero_le hκ, neg_one_lt_muq_zero hκ hq,
    muq_stirling hκ hq, muq_deriv_bound hκ, hint, hint2⟩

/-- **H-Γ(χ), unconditionally** (parity κ ≤ 1, modulus q ≥ 1): all nine fields are theorems
(the two ∫ fields via Zeta23/ThmE/IntMuChi.lean). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf1486081a4e59a90670d111b5eeb029cba4094f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
