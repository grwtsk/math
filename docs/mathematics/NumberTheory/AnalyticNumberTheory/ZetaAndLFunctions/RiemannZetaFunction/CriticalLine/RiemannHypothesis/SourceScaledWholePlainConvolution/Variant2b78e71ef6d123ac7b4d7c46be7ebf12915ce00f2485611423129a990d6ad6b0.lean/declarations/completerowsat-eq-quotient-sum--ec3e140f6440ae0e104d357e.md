# completeRowsAt_eq_quotient_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40da2f3f-e1dd-e1db-41e4-cadb9e37aa63",
  "kind": "theorem",
  "lexical_name": "completeRowsAt_eq_quotient_sum",
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
  "slug": "completerowsat-eq-quotient-sum--ec3e140f6440ae0e104d357e",
  "source": {
    "blob": "3e49994dd93f40f78b209fa9b7df309939833d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 121,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant2b78e71ef6d123ac7b4d7c46be7ebf12915ce00f2485611423129a990d6ad6b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec3e140f6440ae0e104d357efd35130632a3715e2af08576dbd4e29fc41227c7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant2b78e71ef6d123ac7b4d7c46be7ebf12915ce00f2485611423129a990d6ad6b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40da2f3f-e1dd-e1db-41e4-cadb9e37aa63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeRowsAt_eq_quotient_sum (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    completeMangoldtPlainRowsAt A d =
      ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A / d),
        vonMangoldt m * sourcePlainKernel A ((d * m : ℕ) : ℝ) := by
  classical
  unfold completeMangoldtPlainRowsAt
  symm
  apply Finset.sum_subset
    (by intro m hm; exact Finset.mem_Icc.mpr
      ⟨(Finset.mem_Icc.mp hm).1,
        (Finset.mem_Icc.mp hm).2.trans (Nat.div_le_self _ _)⟩)
  intro m hm hnot
  have hp : sourceKernelCutoff A < d * m := by
    apply lt_of_not_ge
    intro h
    apply hnot
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1,
      (Nat.le_div_iff_mul_le hd).2 (by simpa only [Nat.mul_comm] using h)⟩
  rw [sourcePlainKernel_nat_zero_of_cutoff_lt A hA (d * m) hp, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant2b78e71ef6d123ac7b4d7c46be7ebf12915ce00f2485611423129a990d6ad6b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant2b78e71ef6d123ac7b4d7c46be7ebf12915ce00f2485611423129a990d6ad6b0.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e49994dd93f40f78b209fa9b7df309939833d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
