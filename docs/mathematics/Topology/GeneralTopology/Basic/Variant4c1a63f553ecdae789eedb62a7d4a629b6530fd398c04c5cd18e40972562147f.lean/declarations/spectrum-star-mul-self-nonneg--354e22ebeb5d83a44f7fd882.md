# spectrum_star_mul_self_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3536311b45a48c088fd7823ccada2dca075665e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38a37009-8081-2d37-b89b-d20e0c681ba3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2541c204-cf52-bb1e-c034-dd2034a8ddad",
  "kind": "lemma",
  "lexical_name": "spectrum_star_mul_self_nonneg",
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
  "slug": "spectrum-star-mul-self-nonneg--354e22ebeb5d83a44f7fd882",
  "source": {
    "blob": "a3536311b45a48c088fd7823ccada2dca075665e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 288,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:354e22ebeb5d83a44f7fd882ae95fa955cd8bf269d8968111ca2a15e13122579",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2541c204-cf52-bb1e-c034-dd2034a8ddad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spectrum_star_mul_self_nonneg {b : A} : ∀ x ∈ spectrum ℝ (star b * b), 0 ≤ x := by
  -- for convenience we'll work with `a := star b * b`, which is selfadjoint.
  set a := star b * b with a_def
  have ha : IsSelfAdjoint a := by simp [a_def]
  -- the key element to consider is `c := b * a⁻`, which satisfies `- (star c * c) = a⁻ ^ 3`.
  set c := b * a⁻
  have h_eq_negPart_a : -(star c * c) = a⁻ ^ 3 := calc
    -(star c * c) = - a⁻ * a * a⁻ := by
      simp only [star_mul, c, mul_assoc, ← mul_assoc (star b), ← a_def, CFC.negPart_def,
        neg_mul, IsSelfAdjoint.cfcₙ (f := (·⁻)).star_eq]
    _ = - a⁻ * (a⁺ - a⁻) * a⁻ :=
      congr(- a⁻ * $(CFC.posPart_sub_negPart a ha) * a⁻).symm
    _ = a⁻ ^ 3 := by simp [mul_sub, pow_succ]
  -- the spectrum of `- (star c * c) = a⁻ ^ 3` is nonnegative, since the function on the right
  -- is nonnegative on the spectrum of `a`.
  have h_c_spec₀ : SpectrumRestricts (-(star c * c)) (ContinuousMap.realToNNReal ·) := by
    simp only [SpectrumRestricts.nnreal_iff, h_eq_negPart_a, CFC.negPart_def]
    rw [cfcₙ_eq_cfc (hf0 := by simp), ← cfc_pow (ha := ha) .., cfc_map_spectrum (ha := ha) ..]
    rintro - ⟨x, -, rfl⟩
    positivity
  -- the spectrum of `c * star c` is nonnegative, since squares of selfadjoint elements have
  -- nonnegative spectrum, and `c * star c = 2 • (ℜ c ^ 2 + ℑ c ^ 2) + (- (star c * c))`,
  -- and selfadjoint elements with nonnegative spectrum are closed under addition.
  have h_c_spec₁ : SpectrumRestricts (c * star c) ContinuousMap.realToNNReal := by
    rw [eq_sub_iff_add_eq'.mpr <| star_mul_self_add_self_mul_star c, sub_eq_add_neg, ← sq, ← sq]
    refine SpectrumRestricts.nnreal_add ?_ ?_ ?_ h_c_spec₀
    · exact .smul (star_trivial _) <| ((ℜ c).prop.pow 2).add ((ℑ c).prop.pow 2)
    · exact .neg <| .star_mul_self c
    · rw [← Nat.cast_smul_eq_nsmul ℝ]
      refine (ℜ c).2.sq_spectrumRestricts.nnreal_add ((ℜ c).2.pow 2) ((ℑ c).2.pow 2)
        (ℑ c).2.sq_spectrumRestricts |>.smul_of_nonneg <| by simp
  -- therefore `- (star c * c) = 0` and so `a⁻ ^ 3 = 0`. By properties of the continuous functional
  -- calculus, `fun x ↦ x⁻ ^ 3` is zero on the spectrum of `a`, `0 ≤ x` for `x ∈ spectrum ℝ a`.
  rw [h_c_spec₁.mul_comm.eq_zero_of_neg (.star_mul_self c) h_c_spec₀, neg_zero, CFC.negPart_def,
    cfcₙ_eq_cfc (hf0 := by simp), ← cfc_pow _ _ (ha := ha), ← cfc_zero a (R := ℝ)] at h_eq_negPart_a
  have h_eqOn := eqOn_of_cfc_eq_cfc (ha := ha) h_eq_negPart_a
  exact fun x hx ↦ negPart_eq_zero.mp <| eq_zero_of_pow_eq_zero (h_eqOn hx).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3536311b45a48c088fd7823ccada2dca075665e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
