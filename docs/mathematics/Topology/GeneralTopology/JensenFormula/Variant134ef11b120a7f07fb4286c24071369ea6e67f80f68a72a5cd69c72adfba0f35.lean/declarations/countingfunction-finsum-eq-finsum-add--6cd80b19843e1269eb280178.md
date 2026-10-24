# countingFunction_finsum_eq_finsum_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dd78e234df51703431c913f5bc6081233542e97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88155cc6-03c7-75b9-9fe2-184cb788fbe6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abcb9046-9a7d-7788-6975-881dbf023118",
  "kind": "lemma",
  "lexical_name": "countingFunction_finsum_eq_finsum_add",
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
  "slug": "countingfunction-finsum-eq-finsum-add--6cd80b19843e1269eb280178",
  "source": {
    "blob": "3dd78e234df51703431c913f5bc6081233542e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 275,
    "path": "GRWTSK/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cd80b19843e1269eb280178a8e21d68de59d5a4170f653772bd83cc8dd892d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abcb9046-9a7d-7788-6975-881dbf023118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma countingFunction_finsum_eq_finsum_add {c : ℂ} {R : ℝ} {D : ℂ → ℤ} (hR : R ≠ 0)
    (hD : D.HasFiniteSupport) :
    ∑ᶠ u, D u * (log R - log ‖c - u‖) = ∑ᶠ u, D u * log (R * ‖c - u‖⁻¹) + D c * log R := by
  by_cases h : c ∈ D.support
  · have {g : ℂ → ℝ} : (fun u ↦ D u * g u).support ⊆ hD.toFinset :=
      fun x ↦ by simp +contextual
    simp only [finsum_eq_sum_of_support_subset _ this,
      Finset.sum_eq_sum_sdiff_singleton_add ((Set.Finite.mem_toFinset hD).mpr h), sub_self,
      norm_zero, log_zero, sub_zero, inv_zero, mul_zero, add_zero, add_left_inj]
    refine Finset.sum_congr rfl fun x hx ↦ ?_
    simp only [Finset.mem_sdiff, Finset.notMem_singleton] at hx
    rw [log_mul hR (inv_ne_zero (norm_ne_zero_iff.mpr (sub_eq_zero.not.2 hx.2.symm))), log_inv]
    ring
  · simp_all only [Function.mem_support, Decidable.not_not, Int.cast_zero, zero_mul, add_zero]
    refine finsum_congr fun x ↦ ?_
    by_cases h₁ : c = x
    · simp_all
    · rw [log_mul hR (inv_ne_zero (norm_ne_zero_iff.mpr (sub_eq_zero.not.2 h₁))), log_inv]
      ring

/-!
## Jensen's Formula
-/

/--
**Jensen's Formula**: If `f : ℂ → ℂ` is meromorphic on the closed ball with center `c` and radius
`R`, then the `circleAverage (log ‖f ·‖) c R` equals `log ‖meromorphicTrailingCoeffAt f c‖` plus a
correction term that accounts for the zeros and poles of `f` within the ball.

See `Function.locallyFinsuppWithin.logCounting_divisor_eq_circleAverage_sub_const` for a
reformulation in terms of the logarithmic counting function of Value Distribution Theory.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dd78e234df51703431c913f5bc6081233542e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
