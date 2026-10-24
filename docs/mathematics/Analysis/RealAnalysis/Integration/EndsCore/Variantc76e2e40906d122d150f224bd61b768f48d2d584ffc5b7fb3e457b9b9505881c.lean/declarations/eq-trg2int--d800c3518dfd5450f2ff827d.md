# eq_trG2int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1e4c587-096c-c5bd-f4b0-0651ff7c922f",
  "kind": "theorem",
  "lexical_name": "eq_trG2int",
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
  "slug": "eq-trg2int--d800c3518dfd5450f2ff827d",
  "source": {
    "blob": "76395d7f7e7303c94775bff76ac7487ba1a94ab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 291,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d800c3518dfd5450f2ff827d6e63552771f5dc7a939fe44fa1d925813bf51d97",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1e4c587-096c-c5bd-f4b0-0651ff7c922f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_trG2int (hνc : Continuous ν) (hF : LocalHypsCoreW cϱ p F) (hν : NuBound p B ν)
    (hB : 0 ≤ B) (hT : 2 * π ≤ p.T) :
    ∑ k : Fin p.d, ∑ l : Fin p.d, GentryNu ν p F k l ^ 2 = ∫ q, trG2integrand p F ν q := by
  have hT1 : 1 ≤ p.T := by linarith [Real.pi_gt_three]
  have hsq : ∀ k l : Fin p.d, GentryNu ν p F k l ^ 2
      = ∫ q : ℝ × ℝ, gkl p F ν k l q.1 * gkl p F ν k l q.2 := by
    intro k l
    rw [sq, GentryNu_eq, ← integral_prod_mul]
    rfl
  have hI : ∀ k l : Fin p.d, Integrable (fun q : ℝ × ℝ => gkl p F ν k l q.1 * gkl p F ν k l q.2) :=
    fun k l => (gkl_integrable hνc hF hν hT1 hB k l).mul_prod (gkl_integrable hνc hF hν hT1 hB k l)
  have hinner : ∀ k : Fin p.d, ∑ l : Fin p.d, GentryNu ν p F k l ^ 2
      = ∫ q : ℝ × ℝ, ∑ l : Fin p.d, gkl p F ν k l q.1 * gkl p F ν k l q.2 := by
    intro k
    rw [integral_finsetSum _ (fun l _ => hI k l)]
    exact Finset.sum_congr rfl fun l _ => hsq k l
  rw [Finset.sum_congr rfl fun k _ => hinner k,
    ← integral_finsetSum _ (fun k _ => integrable_finsetSum _ fun l _ => hI k l)]
  exact integral_congr_ae (Filter.Eventually.of_forall fun q => sum_gkl_mul_gkl q)

/-- `∬_{I×I} K_∞² νν' = L² 𝓜` (§5.3 "note …"). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76395d7f7e7303c94775bff76ac7487ba1a94ab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
