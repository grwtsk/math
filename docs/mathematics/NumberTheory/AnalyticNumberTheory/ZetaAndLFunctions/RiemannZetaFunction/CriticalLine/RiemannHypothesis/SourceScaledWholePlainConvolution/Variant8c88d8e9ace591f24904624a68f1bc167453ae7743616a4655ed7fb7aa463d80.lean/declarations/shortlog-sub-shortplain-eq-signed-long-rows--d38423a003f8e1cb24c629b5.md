# shortLog_sub_shortPlain_eq_signed_long_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ec2978e-1581-b327-5202-7233a9153c60",
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
  "slug": "shortlog-sub-shortplain-eq-signed-long-rows--d38423a003f8e1cb24c629b5",
  "source": {
    "blob": "4207c9e78a5cc0a56b7fb80ecdf059d028e4deee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 207,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant8c88d8e9ace591f24904624a68f1bc167453ae7743616a4655ed7fb7aa463d80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d38423a003f8e1cb24c629b535d5bea9044dfceacffc47f5953a0bbdcfc260a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant8c88d8e9ace591f24904624a68f1bc167453ae7743616a4655ed7fb7aa463d80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ec2978e-1581-b327-5202-7233a9153c60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–230.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant8c88d8e9ace591f24904624a68f1bc167453ae7743616a4655ed7fb7aa463d80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant8c88d8e9ace591f24904624a68f1bc167453ae7743616a4655ed7fb7aa463d80.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4207c9e78a5cc0a56b7fb80ecdf059d028e4deee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
