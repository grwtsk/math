# coeff_weierstrassPExceptSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f600c2aa2552d78f482b16686323c7f1db5983a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 629,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfd5cd92c002cef468a16a8ea3668d473ca8a521c9a18b040bc2744a46ae60b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f06ce968-38c7-2d45-9080-72c7f6973f30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db8263d2-6dc0-4db2-ee67-4e198ad43490",
  "kind": "lemma",
  "lexical_name": "coeff_weierstrassPExceptSeries",
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
  "slug": "coeff-weierstrasspexceptseries--fe32f9a1f0bc5e30ed9143ea",
  "source": {
    "blob": "f600c2aa2552d78f482b16686323c7f1db5983a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 629,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variantbfd5cd92c002cef468a16a8ea3668d473ca8a521c9a18b040bc2744a46ae60b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe32f9a1f0bc5e30ed9143ea1f2df8ed21d706e9cefd53699930837ecd93121b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Weierstrass/Variantbfd5cd92c002cef468a16a8ea3668d473ca8a521c9a18b040bc2744a46ae60b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db8263d2-6dc0-4db2-ee67-4e198ad43490`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_weierstrassPExceptSeries (l₀ x : ℂ) (i : ℕ) :
    (L.weierstrassPExceptSeries l₀ x).coeff i =
      ∑' l : L.lattice, L.weierstrassPExceptSummand l₀ x i l := by
  delta weierstrassPExceptSummand weierstrassPExceptSeries
  cases i with
  | zero => simp [weierstrassPExcept, sub_sq_comm x, zpow_ofNat]
  | succ i =>
    split_ifs with hl₀
    · trans (i + 2) * (L.sumInvPow x (i + 3) -
        ∑' l : L.lattice, if l = ⟨l₀, hl₀⟩ then (l₀ - x) ^ (-↑(i + 3) : ℤ) else 0)
      · rw [FormalMultilinearSeries.coeff_ofScalars, tsum_ite_eq, zpow_neg, zpow_natCast]
        simp [add_assoc, one_add_one_eq_two]
      · rw [sumInvPow, ← (hasSum_sumInvPow _ _ (by linarith)).summable.tsum_sub, ← tsum_mul_left]
        · simp_rw [Subtype.ext_iff, zpow_neg]
          congr with l
          split_ifs with e
          · simp only [e, zpow_natCast, sub_self, mul_zero]
          · dsimp; norm_cast; ring
        · exact summable_of_hasFiniteSupport ((Set.finite_singleton ⟨l₀, hl₀⟩).subset (by simp))
    · have h₁ (l : L.lattice) : l.1 ≠ l₀ := fun e ↦ hl₀ (e ▸ l.2)
      simp [h₁, tsum_mul_left, sumInvPow, add_assoc,
        one_add_one_eq_two, ← zpow_natCast, -neg_add_rev]

set_option backward.isDefEq.respectTransparency.types false in
/--
In the power series expansion of `℘(z) = ∑ᵢ aᵢ (z - x)ⁱ` at some `x ∉ L`,
each `aᵢ` can be written as a sum over `l ∈ L`, i.e.
`aᵢ = ∑ₗ, (i + 1) * (l - x)⁻ⁱ⁻²` for `i ≠ 0` and `a₀ = ∑ₗ, (l - x)⁻² - l⁻²`.

We show that the double sum converges if `z` falls in a ball centered at `x` that doesn't touch `L`.
-/
-- We should be able to skip this computation via some general complex-analytic machinery but
-- they are missing at the moment.
-- Consider refactoring once we have developed more of the missing API.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Weierstrass/Variantbfd5cd92c002cef468a16a8ea3668d473ca8a521c9a18b040bc2744a46ae60b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variantbfd5cd92c002cef468a16a8ea3668d473ca8a521c9a18b040bc2744a46ae60b9.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f600c2aa2552d78f482b16686323c7f1db5983a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
