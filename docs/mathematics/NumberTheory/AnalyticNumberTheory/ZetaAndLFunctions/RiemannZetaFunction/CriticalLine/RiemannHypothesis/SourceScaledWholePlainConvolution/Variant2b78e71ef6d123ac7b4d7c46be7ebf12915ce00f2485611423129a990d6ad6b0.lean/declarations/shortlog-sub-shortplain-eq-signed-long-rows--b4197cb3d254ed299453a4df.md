# shortLog_sub_shortPlain_eq_signed_long_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46c8431d-ace7-20ba-3bb7-6675d68723ff",
  "kind": "theorem",
  "lexical_name": "shortLog_sub_shortPlain_eq_signed_long_rows",
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
  "slug": "shortlog-sub-shortplain-eq-signed-long-rows--b4197cb3d254ed299453a4df",
  "source": {
    "blob": "3e49994dd93f40f78b209fa9b7df309939833d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 207,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant2b78e71ef6d123ac7b4d7c46be7ebf12915ce00f2485611423129a990d6ad6b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4197cb3d254ed299453a4df7c9475b77a7c42774e318794f3b2f5b0343c8475",
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

Occurrence: `result:46c8431d-ace7-20ba-3bb7-6675d68723ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortLog_sub_shortPlain_eq_signed_long_rows (A : ℝ) (hA : 1 ≤ A) :
    shortLogSource A - shortPlainSource A =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * longMangoldtPlainRowsAt A d (vaughanCutoff A) := by
  unfold shortLogSource shortPlainSource
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  have hp := (Finset.mem_Icc.mp hd).1
  have hs :
      (∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * vonMangoldt m * sourcePlainKernel A ((d * m : ℕ) : ℝ)) =
      realMoebius d * shortMangoldtPlainRowsAt A d (vaughanCutoff A) := by
    unfold shortMangoldtPlainRowsAt
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m _
    ring
  rw [hs, ← completeRowsAt_eq_sourceMobiusKernel A hA d hp,
    completeRowsAt_eq_short_add_long A d (vaughanCutoff A)
      (vaughanCutoff_le_sourceKernelCutoff A hA)]
  ring

/-- The original Vaughan residual keeps the mixed columns and the original Type-II term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant2b78e71ef6d123ac7b4d7c46be7ebf12915ce00f2485611423129a990d6ad6b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant2b78e71ef6d123ac7b4d7c46be7ebf12915ce00f2485611423129a990d6ad6b0.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e49994dd93f40f78b209fa9b7df309939833d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
