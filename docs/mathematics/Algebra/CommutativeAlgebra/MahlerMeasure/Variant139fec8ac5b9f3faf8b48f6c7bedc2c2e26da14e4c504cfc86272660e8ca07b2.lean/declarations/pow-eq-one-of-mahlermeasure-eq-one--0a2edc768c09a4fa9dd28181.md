# pow_eq_one_of_mahlerMeasure_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "902fac0cc8dda6b31573fc50a152887021a970c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbbcd8bd-6202-5ada-329f-99139876f000",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f701e75f-1e2c-8a6a-c057-d1db037773e3",
  "kind": "theorem",
  "lexical_name": "pow_eq_one_of_mahlerMeasure_eq_one",
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
  "slug": "pow-eq-one-of-mahlermeasure-eq-one--0a2edc768c09a4fa9dd28181",
  "source": {
    "blob": "902fac0cc8dda6b31573fc50a152887021a970c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 180,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a2edc768c09a4fa9dd28181653d68fe155218f07a7f9fbdd8093b26eaeef882",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f701e75f-1e2c-8a6a-c057-d1db037773e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_eq_one_of_mahlerMeasure_eq_one : ∃ n, 0 < n ∧ z ^ n = 1 := by
/- We want to use `NumberField.Embeddings.pow_eq_one_of_norm_le_one` but it can only be applied to
elements of number fields. We thus first construct the number field `K` obtained by adjoining `z`
to `ℚ`.
-/
  let K := ℚ⟮z⟯
  let : NumberField K := {
    to_charZero := ℚ⟮z⟯.charZero,
    to_finiteDimensional := adjoin.finiteDimensional
      (isIntegral_of_mahlerMeasure_eq_one h hz).tower_top }
-- `y` is `z` as an element of `K`
  let y : K := ⟨z, mem_adjoin_simple_self ℚ z⟩
  suffices ∃ (n : ℕ) (_ : 0 < n), y ^ n = 1 by
    obtain ⟨n, hn₀, hn₁⟩ := this
    exact ⟨n, hn₀, congrArg (algebraMap K ℂ) hn₁⟩
  refine NumberField.Embeddings.pow_eq_one_of_norm_le_one (x := y) K ℂ (Subtype.coe_ne_coe.mp hz₀)
    (coe_isIntegral_iff.mp <| isIntegral_of_mahlerMeasure_eq_one h hz)
    fun φ ↦ norm_root_le_one_of_mahlerMeasure_eq_one h ?_
  rw [mem_aroots] at hz ⊢
  refine ⟨hz.1, ?_⟩
  have H (ψ : K →+* ℂ) : ψ ((aeval y) p) = (aeval (ψ y)) p := by
    conv_rhs => rw [← map_id (p := p)]
    exact p.map_aeval_eq_aeval_map (by ext; simp) y
  rw [← H, map_eq_zero_iff _ φ.injective,
    ← map_eq_zero_iff _ (FaithfulSMul.algebraMap_injective ↥K ℂ), H]
  exact hz.2

include h hz₀ hz in
/-- If an integer polynomial has Mahler measure equal to 1, then all its complex nonzero roots are
roots of unity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `902fac0cc8dda6b31573fc50a152887021a970c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
