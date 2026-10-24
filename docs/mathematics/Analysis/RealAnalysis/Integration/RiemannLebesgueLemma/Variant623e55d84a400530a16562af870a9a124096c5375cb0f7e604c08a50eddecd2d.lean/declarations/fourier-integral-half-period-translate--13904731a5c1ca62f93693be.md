# fourier_integral_half_period_translate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce581cdfc3f8c3a9bd3f5758c74dd1319ae93e97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:893a29b4-32a6-f195-61c5-382ed4f22115",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c39aa77a-8421-7f0b-0c9e-af96de420bf0",
  "kind": "theorem",
  "lexical_name": "fourier_integral_half_period_translate",
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
  "slug": "fourier-integral-half-period-translate--13904731a5c1ca62f93693be",
  "source": {
    "blob": "ce581cdfc3f8c3a9bd3f5758c74dd1319ae93e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13904731a5c1ca62f93693be0d8c38de448b298e72922433395548455fee264f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c39aa77a-8421-7f0b-0c9e-af96de420bf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_integral_half_period_translate {w : V} (hw : w ≠ 0) :
    (∫ v : V, e[-⟪v, w⟫] • f (v + i w)) = -∫ v : V, e[-⟪v, w⟫] • f v := by
  have hiw : ⟪i w, w⟫ = 1 / 2 := by
    rw [inner_smul_left, inner_self_eq_norm_sq_to_K, IsROrC.ofReal_real_eq_id, id.def,
      IsROrC.conj_to_real, ← div_div, div_mul_cancel]
    rwa [Ne.def, sq_eq_zero_iff, norm_eq_zero]
  have :
    (fun v : V => e[-⟪v, w⟫] • f (v + i w)) =
      fun v : V => (fun x : V => -e[-⟪x, w⟫] • f x) (v + i w) := by
    ext1 v
    simp_rw [inner_add_left, hiw, Real.fourierChar_apply, neg_add, mul_add, ofReal_add, add_mul,
      exp_add]
    have : 2 * π * -(1 / 2) = -π := by field_simp; ring
    rw [this, ofReal_neg, neg_mul, exp_neg, exp_pi_mul_I, inv_neg, inv_one, mul_neg_one, neg_neg]
  rw [this]
  -- Porting note:
  -- The next three lines had just been
  -- rw [integral_add_right_eq_self (fun (x : V) ↦ -(e[-⟪x, w⟫]) • f x)
  --       ((fun w ↦ (1 / (2 * ‖w‖ ^ (2 : ℕ))) • w) w)]
  -- Unfortunately now we need to specify `volume`, and call `dsimp`.
  have := @integral_add_right_eq_self _ _ _ _ _ volume _ _ _ (fun (x : V) ↦ -(e[-⟪x, w⟫]) • f x)
    ((fun w ↦ (1 / (2 * ‖w‖ ^ (2 : ℕ))) • w) w)
  erw [this] -- Porting note, we can avoid `erw` by first calling `dsimp at this ⊢`.
  simp only [neg_smul, integral_neg]
#align fourier_integral_half_period_translate fourier_integral_half_period_translate

/-- Rewrite the Fourier integral in a form that allows us to use uniform continuity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce581cdfc3f8c3a9bd3f5758c74dd1319ae93e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
