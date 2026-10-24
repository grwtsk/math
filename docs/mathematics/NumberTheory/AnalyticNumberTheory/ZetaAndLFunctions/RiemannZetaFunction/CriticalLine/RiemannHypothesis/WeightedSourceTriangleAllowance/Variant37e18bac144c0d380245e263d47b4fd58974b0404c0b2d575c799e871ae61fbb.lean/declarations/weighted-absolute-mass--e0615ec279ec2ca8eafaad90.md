# weighted_absolute_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b1e3b3d-df5d-49c8-1544-cfba043344f1",
  "kind": "theorem",
  "lexical_name": "weighted_absolute_mass",
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
  "slug": "weighted-absolute-mass--e0615ec279ec2ca8eafaad90",
  "source": {
    "blob": "6ced469f1eb1e2df0b06e4ba97549b6bfd20eb62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceTriangleAllowance/Variant37e18bac144c0d380245e263d47b4fd58974b0404c0b2d575c799e871ae61fbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0615ec279ec2ca8eafaad90ea74ad67aac5f3a88eb7123914a017f46a71be94",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceTriangleAllowance/Variant37e18bac144c0d380245e263d47b4fd58974b0404c0b2d575c799e871ae61fbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b1e3b3d-df5d-49c8-1544-cfba043344f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_absolute_mass {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) :
    (∑ n ∈ integerInventory A, |coefficient A t n|) ≤ 4 * Real.sqrt (integerCutoff A) := by
  have hbound : (∑ n ∈ integerInventory A, |coefficient A t n|) ≤
      2 * ∑ n ∈ integerInventory A, (Real.sqrt n)⁻¹ := by
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro n hn
    have hμ : |realMoebius n| ≤ 1 := by
      unfold realMoebius
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
    have hn1 := (Finset.mem_Icc.mp hn).1
    have h0 := weight_nonneg hA ht hn1
    rw [coefficient, abs_mul, abs_of_nonneg h0]
    have hm := mul_le_mul_of_nonneg_right hμ h0
    have hm' : |realMoebius n| * pickupWeight A t n ≤ pickupWeight A t n := by
      simpa only [one_mul] using hm
    exact hm'.trans (weight_le_inverse_sqrt hA ht hn1)
  have hi := inverse_root_sum (integerCutoff A)
  change (∑ n ∈ integerInventory A, _) ≤ _ at hi
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceTriangleAllowance/Variant37e18bac144c0d380245e263d47b4fd58974b0404c0b2d575c799e871ae61fbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceTriangleAllowance/Variant37e18bac144c0d380245e263d47b4fd58974b0404c0b2d575c799e871ae61fbb.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ced469f1eb1e2df0b06e4ba97549b6bfd20eb62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
