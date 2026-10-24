# actual_profile_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fb3789a-6e03-81e2-4b16-2b7134f24a5a",
  "kind": "theorem",
  "lexical_name": "actual_profile_product_integrable",
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
  "slug": "actual-profile-product-integrable--ee2f5f5ce5eed2d74d94ccba",
  "source": {
    "blob": "ddaa0a38d43ccfbc3c3f8645035c2fcbc6f007fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 756,
    "line": 729,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantb68e66986b2db2f2a6ebb024e9e9ccaf8bc6992b0c362162fde3b3661e827a50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee2f5f5ce5eed2d74d94ccba6725aca11931905d067bda67034a0a813477a8bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantb68e66986b2db2f2a6ebb024e9e9ccaf8bc6992b0c362162fde3b3661e827a50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fb3789a-6e03-81e2-4b16-2b7134f24a5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 729–756.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_profile_product_integrable
    (r : ℝ → ℝ) (hc : Continuous r) {A : ℝ} (hA : 1 ≤ A)
    (hs : tsupport r ⊆ Icc (-A) A) :
    Integrable (fun v => actualTimeProfile r A v * actualReflectedProfile r A v) := by
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let s := Finset.Ico (U + 1) (N / (U + 1))
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  have hpos : ∀ k ∈ s, 0 < (k : ℝ) := by
    intro k hk
    have hk0 : 0 < k := by have := (Finset.mem_Ico.mp hk).1; omega
    exact_mod_cast hk0
  have he : (fun v => actualTimeProfile r A v * actualReflectedProfile r A v) =
      (fun v => ∑ k ∈ s, B k *
        (profileX r (Real.log (U : ℝ)) (Real.log (N : ℝ)) v *
          profileYCell r (k : ℝ) v)) := by
    funext v
    change profileX r (Real.log (U : ℝ)) (Real.log (N : ℝ)) v *
      (∑ k ∈ s, B k * profileYCell r (k : ℝ) v) = _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [he]
  exact integrable_finsetSum s (fun k hk =>
    (profile_cell_product_integrable r hc (actual_cutoff_log_le A hA)
      (hpos k hk) hs).const_mul (B k))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantb68e66986b2db2f2a6ebb024e9e9ccaf8bc6992b0c362162fde3b3661e827a50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantb68e66986b2db2f2a6ebb024e9e9ccaf8bc6992b0c362162fde3b3661e827a50.lean#L729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddaa0a38d43ccfbc3c3f8645035c2fcbc6f007fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
