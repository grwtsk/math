# coprimeRestrictedMobiusLog_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dbe7f4c-19fd-98ab-d561-a3918a37d84e",
  "kind": "theorem",
  "lexical_name": "coprimeRestrictedMobiusLog_mem_Icc",
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
  "slug": "coprimerestrictedmobiuslog-mem-icc--82e9f392a7add18a069b58d4",
  "source": {
    "blob": "63da93bf88928ffc712002a77c1db9ba8ef7bd7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 215,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82e9f392a7add18a069b58d4ac03b463ff06a79d218789de661470d810fd39dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dbe7f4c-19fd-98ab-d561-a3918a37d84e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprimeRestrictedMobiusLog_mem_Icc
    {r n : ℕ}
    (hn : 0 < n) :
    coprimeRestrictedMobiusLog r n ∈
      Set.Icc (0 : ℝ) (Real.log (n : ℝ)) := by
  rw [coprimeRestrictedMobiusLog_eq_indicator_mul_vonMangoldt]
  have hnonneg :
      0 ≤ (coprimeRestrictedMobiusDivisorIndicator r *
        ArithmeticFunction.vonMangoldt) n := by
    rw [ArithmeticFunction.mul_apply]
    exact Finset.sum_nonneg fun p hp =>
      mul_nonneg
        (coprimeRestrictedMobiusDivisorIndicator_mem_Icc r p.1).1
        ArithmeticFunction.vonMangoldt_nonneg
  have hupper :
      (coprimeRestrictedMobiusDivisorIndicator r *
        ArithmeticFunction.vonMangoldt) n ≤
      ((ArithmeticFunction.zeta : ArithmeticFunction ℝ) *
        ArithmeticFunction.vonMangoldt) n := by
    rw [ArithmeticFunction.mul_apply,
      ArithmeticFunction.mul_apply]
    apply Finset.sum_le_sum
    intro p hp
    have hp1pos : 0 < p.1 :=
      Nat.pos_of_mem_divisors
        (Nat.fst_mem_divisors_of_mem_antidiagonal hp)
    have hI :=
      coprimeRestrictedMobiusDivisorIndicator_mem_Icc r p.1
    simp only [ArithmeticFunction.zeta_apply,
      if_neg hp1pos.ne']
    exact mul_le_mul_of_nonneg_right hI.2
      ArithmeticFunction.vonMangoldt_nonneg
  rw [ArithmeticFunction.zeta_mul_vonMangoldt,
    ArithmeticFunction.log_apply] at hupper
  exact ⟨hnonneg, hupper⟩

/-- Absolute form of the restricted Möbius-log bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63da93bf88928ffc712002a77c1db9ba8ef7bd7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
