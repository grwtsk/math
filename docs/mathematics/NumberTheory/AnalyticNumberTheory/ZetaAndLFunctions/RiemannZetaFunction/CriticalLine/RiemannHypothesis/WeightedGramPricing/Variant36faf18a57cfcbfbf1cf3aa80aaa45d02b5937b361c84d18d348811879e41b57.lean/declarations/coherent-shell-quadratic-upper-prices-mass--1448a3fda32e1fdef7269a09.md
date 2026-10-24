# coherent_shell_quadratic_upper_prices_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d1dc951-aa94-d4d7-2ca2-b6051c0150f5",
  "kind": "theorem",
  "lexical_name": "coherent_shell_quadratic_upper_prices_mass",
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
  "slug": "coherent-shell-quadratic-upper-prices-mass--1448a3fda32e1fdef7269a09",
  "source": {
    "blob": "506a038a7b2fc94b88bda1bd72a6342de26fc92b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant36faf18a57cfcbfbf1cf3aa80aaa45d02b5937b361c84d18d348811879e41b57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1448a3fda32e1fdef7269a0973a3d268af4321d460983195d9db47b767b69aea",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant36faf18a57cfcbfbf1cf3aa80aaa45d02b5937b361c84d18d348811879e41b57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d1dc951-aa94-d4d7-2ca2-b6051c0150f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coherent_shell_quadratic_upper_prices_mass {ι : Type*} (s : Finset ι)
    (b : ι → ℝ) (K : ι → ι → ℝ) {γ L : ℝ}
    (hL : 0 ≤ L) (hK : ∀ i ∈ s, ∀ j ∈ s, γ ≤ K i j)
    (hupper : shellForm s b K ≤ L * shellMass s b) :
    γ * shellMass s b ≤ L := by
  have hR : 0 ≤ shellMass s b := Finset.sum_nonneg (fun i hi ↦ sq_nonneg _)
  have h := (coherent_shell_rayleigh_lower s b K hK).trans hupper
  by_cases hzero : shellMass s b = 0
  · simpa only [hzero, mul_zero] using hL
  · have hp : 0 < shellMass s b := lt_of_le_of_ne hR (Ne.symm hzero)
    exact (mul_le_mul_iff_of_pos_right hp).mp (by nlinarith only [h])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant36faf18a57cfcbfbf1cf3aa80aaa45d02b5937b361c84d18d348811879e41b57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant36faf18a57cfcbfbf1cf3aa80aaa45d02b5937b361c84d18d348811879e41b57.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `506a038a7b2fc94b88bda1bd72a6342de26fc92b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
