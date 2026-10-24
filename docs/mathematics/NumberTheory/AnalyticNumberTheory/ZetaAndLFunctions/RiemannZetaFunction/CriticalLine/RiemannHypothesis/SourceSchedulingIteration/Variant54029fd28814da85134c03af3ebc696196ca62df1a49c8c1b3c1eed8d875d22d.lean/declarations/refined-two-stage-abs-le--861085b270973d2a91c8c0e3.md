# refined_two_stage_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff487b79-d81d-4f6c-4a08-84bd73ddf083",
  "kind": "theorem",
  "lexical_name": "refined_two_stage_abs_le",
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
  "slug": "refined-two-stage-abs-le--861085b270973d2a91c8c0e3",
  "source": {
    "blob": "cd4297f5c1e92ed890230f0dff30349d3e51976e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 102,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingIteration/Variant54029fd28814da85134c03af3ebc696196ca62df1a49c8c1b3c1eed8d875d22d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:861085b270973d2a91c8c0e37f5e544a913ab27b2cad915f2216f8647ef2fb26",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingIteration/Variant54029fd28814da85134c03af3ebc696196ca62df1a49c8c1b3c1eed8d875d22d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff487b79-d81d-4f6c-4a08-84bd73ddf083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem refined_two_stage_abs_le {ι : Type*} [Fintype ι]
    (c b d : ι → ℝ) (f g : ℝ → ℝ) (P Q : ℕ → ι → ι → ℝ)
    (gain precision localization returnCost inherited : ℕ → ℝ)
    (n : ℕ) (budget δ L : ℝ) (hL : 0 ≤ L)
    (hP : ∀ t ≤ n, ∀ i j, 0 ≤ P t i j)
    (hQ : ∀ t ≤ n, ∀ j k, 0 ≤ Q t j k)
    (hb : ∀ t ≤ n, ∀ i, b i = (∑ j, P t i j) - ∑ j, P t j i)
    (hr : ∀ t ≤ n, ∀ j,
      inducedDrift c d (P t) j = (∑ k, Q t j k) - ∑ k, Q t k j)
    (ht : ∀ i j, |f (c i) - f (c j) - (c i - c j) * g (c j)| ≤
      L * (c i - c j) ^ 2 / 2)
    (hg : ∀ j k, |g (c j) - g (c k)| ≤ L * |c j - c k|)
    (hcharges : ∀ j < n, 0 ≤ precision j ∧ 0 ≤ localization j ∧
      0 ≤ returnCost j ∧ 0 ≤ inherited j)
    (hstep : ∀ j < n, transportCost c (P (j + 1)) (Q (j + 1)) ≤
      transportCost c (P j) (Q j) - gain j +
        chargedCost precision localization returnCost inherited j)
    (hcost : (∑ j ∈ Finset.range n,
      chargedCost precision localization returnCost inherited j) ≤ budget)
    (hgain : budget + (n : ℝ) * δ ≤ ∑ j ∈ Finset.range n, gain j) :
    |readout c b d f g| ≤
      L * (transportCost c (P 0) (Q 0) - (n : ℝ) * δ) := by
  have hfinal := two_stage_abs_le c b d f g (P n) (Q n) L
    (hP n le_rfl) (hQ n le_rfl) (hb n le_rfl) (hr n le_rfl) ht hg
  have hdrop := charged_refinement_gain (fun j => transportCost c (P j) (Q j))
    gain precision localization returnCost inherited n budget δ hcharges hstep hcost hgain
  exact hfinal.trans (mul_le_mul_of_nonneg_left hdrop hL)

section CirculationFixture

/-- Exact coordinates for a complete two-atom example. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingIteration/Variant54029fd28814da85134c03af3ebc696196ca62df1a49c8c1b3c1eed8d875d22d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingIteration/Variant54029fd28814da85134c03af3ebc696196ca62df1a49c8c1b3c1eed8d875d22d.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd4297f5c1e92ed890230f0dff30349d3e51976e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
