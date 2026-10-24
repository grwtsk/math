# actualSignedPeriodicPrimitive_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1297a108-f7ee-b416-0ae9-7c3ccbd894dc",
  "kind": "theorem",
  "lexical_name": "actualSignedPeriodicPrimitive_succ",
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
  "slug": "actualsignedperiodicprimitive-succ--9d70136169779ea01d42f804",
  "source": {
    "blob": "6b1d526c27f9670d8bed7acb22ba2c985d122dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 146,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant84a4460da6bcb0b581d91f6abe71896dc81a22a1af0a74a0e5d172488bd06ce5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d70136169779ea01d42f804366f5a6f2f4f347019f867087e60692c9f6b3905",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant84a4460da6bcb0b581d91f6abe71896dc81a22a1af0a74a0e5d172488bd06ce5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1297a108-f7ee-b416-0ae9-7c3ccbd894dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSignedPeriodicPrimitive_succ (U M : ℕ) (hU : 1 ≤ U) (hUM : U ≤ M) :
    actualSignedPeriodicPrimitive U (M + 1) - actualSignedPeriodicPrimitive U M =
      (∑ n ∈ Finset.Ioc U M, centeredBeta U n) - actualCenteredPrefixPeriodMean U := by
  unfold actualSignedPeriodicPrimitive
  rw [← Finset.sum_sub_distrib]
  simp_rw [← mul_sub]
  have he : (∑ d ∈ Finset.Icc 1 U,
      (moebius d : ℝ) * (actualDivisorPeriodicPrimitive d (M + 1) -
        actualDivisorPeriodicPrimitive d M)) =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d M := by
    apply Finset.sum_congr rfl
    intro d hd
    rw [actualDivisorPeriodicPrimitive_succ d M (Finset.mem_Icc.mp hd).1]
  rw [he, actual_closed_prefix_eq_period_mean U M hU hUM]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant84a4460da6bcb0b581d91f6abe71896dc81a22a1af0a74a0e5d172488bd06ce5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant84a4460da6bcb0b581d91f6abe71896dc81a22a1af0a74a0e5d172488bd06ce5.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b1d526c27f9670d8bed7acb22ba2c985d122dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
