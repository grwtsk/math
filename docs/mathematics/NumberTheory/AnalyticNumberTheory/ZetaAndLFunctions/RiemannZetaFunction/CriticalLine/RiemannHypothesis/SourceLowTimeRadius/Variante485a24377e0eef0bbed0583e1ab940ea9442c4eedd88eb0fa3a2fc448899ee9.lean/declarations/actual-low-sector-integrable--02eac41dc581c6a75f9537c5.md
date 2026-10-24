# actual_low_sector_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43a4c998-9006-381b-725e-55e2b70b1f70",
  "kind": "theorem",
  "lexical_name": "actual_low_sector_integrable",
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
  "slug": "actual-low-sector-integrable--02eac41dc581c6a75f9537c5",
  "source": {
    "blob": "646f62d27745f298ff40a5a1b1324d58abcafefd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variante485a24377e0eef0bbed0583e1ab940ea9442c4eedd88eb0fa3a2fc448899ee9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02eac41dc581c6a75f9537c576f6fd54e54c45598c3d61e12268c1a291f227a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variante485a24377e0eef0bbed0583e1ab940ea9442c4eedd88eb0fa3a2fc448899ee9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43a4c998-9006-381b-725e-55e2b70b1f70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_low_sector_integrable
    (r : ℝ → ℝ) (hc : Continuous r) {A : ℝ} (hA : 1 ≤ A)
    (hs : tsupport r ⊆ Icc (-A) A) :
    Integrable (fun v => actualLowTimeProfile r A v * actualReflectedProfile r A v) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  have hU : 1 ≤ U := by have := vaughanCutoff_pos A hA; dsimp only [U]; omega
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hla : Real.log (U : ℝ) ≤ Real.log ((U + 1 : ℕ) : ℝ) :=
    Real.log_le_log hU0 (by exact_mod_cast Nat.le_succ U)
  have he : (fun v => actualLowTimeProfile r A v * actualReflectedProfile r A v) =
      (fun v => ∑ k ∈ Finset.Ico (U + 1) K,
        (∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
          (timeRow r (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v *
            cellRow r (k : ℝ) v)) := by
    funext v
    change timeRow r (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v *
      (∑ k ∈ Finset.Ico (U + 1) K,
        (∑ n ∈ Finset.Ioc U k, centeredBeta U n) * cellRow r (k : ℝ) v) = _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [he]
  apply integrable_finsetSum
  intro k hk
  have hk0 : 0 < (k : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Ico.mp hk).1; omega : 0 < k)
  exact (SourceActualMixedWorkFubini.profile_cell_product_integrable r hc hla hk0 hs).const_mul _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variante485a24377e0eef0bbed0583e1ab940ea9442c4eedd88eb0fa3a2fc448899ee9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variante485a24377e0eef0bbed0583e1ab940ea9442c4eedd88eb0fa3a2fc448899ee9.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `646f62d27745f298ff40a5a1b1324d58abcafefd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
