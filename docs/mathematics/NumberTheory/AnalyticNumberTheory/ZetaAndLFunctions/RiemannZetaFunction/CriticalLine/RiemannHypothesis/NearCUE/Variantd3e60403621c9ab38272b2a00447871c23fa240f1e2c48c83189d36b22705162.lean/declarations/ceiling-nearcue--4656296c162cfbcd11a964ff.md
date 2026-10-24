# ceiling_nearCUE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07c60d82-e6ea-ac7c-0d6b-b58b78305d35",
  "kind": "theorem",
  "lexical_name": "ceiling_nearCUE",
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
  "slug": "ceiling-nearcue--4656296c162cfbcd11a964ff",
  "source": {
    "blob": "185fdd562343c164186061cef468be3f99139a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 218,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantd3e60403621c9ab38272b2a00447871c23fa240f1e2c48c83189d36b22705162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4656296c162cfbcd11a964ffcb95ca556b2733b1d3e564a01a75b86046698af7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantd3e60403621c9ab38272b2a00447871c23fa240f1e2c48c83189d36b22705162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07c60d82-e6ea-ac7c-0d6b-b58b78305d35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ceiling_nearCUE (hN : 0 < N) (S : ℕ → ℝ) {τ d₁ : ℝ} (hτ : 0 ≤ τ) (hS : NearCUE S N τ)
    (hD1 : |Dfun (massOf S N) N 1| ≤ d₁)
    {r g h : ℝ → ℝ} {T : Set ℝ} (hT : T.Countable) {c₀ p : ℝ}
    (hr : ∀ x ∈ Icc (0:ℝ) 1, HasDerivAt r (g x) x) (hg : ContinuousOn g (Icc (0:ℝ) 1))
    (hgh : ∀ x ∈ Ioo (0:ℝ) 1 \ T, HasDerivAt g (h x) x) (hh : IntervalIntegrable h volume 0 1)
    (hvalid : c₀ + ∑ j ∈ Finset.Icc 1 N, massOf S N j * r ((j:ℝ)/N) ≤ p) :
    c₀ + ∫ x in (0:ℝ)..1, r x * x
      ≤ p + d₁ * |r 1| + (1 / (6 * (N : ℝ) ^ 2) + τ / (2 * N)) * |g 1|
          + (1 / (6 * (N : ℝ) ^ 2) + τ / (2 * N)) * ∫ x in (0:ℝ)..1, |h x| :=
  ceiling_numeric hN hT hr hg hgh hh (abs_Efun_le_of_nearCUE hN hτ hS) hD1
    (abs_Efun_one_le_of_nearCUE hN hτ hS) le_rfl le_rfl le_rfl hvalid

end PairCeiling
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantd3e60403621c9ab38272b2a00447871c23fa240f1e2c48c83189d36b22705162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantd3e60403621c9ab38272b2a00447871c23fa240f1e2c48c83189d36b22705162.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `185fdd562343c164186061cef468be3f99139a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
