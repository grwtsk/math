# hasSum_mellin_pi_mul_sq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0099a1980ed75ec12f219317bec2527356b991b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:976f942c-18df-d461-a439-b5564ad92c6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2c64248-5b50-e284-884c-828128edd610",
  "kind": "lemma",
  "lexical_name": "hasSum_mellin_pi_mul_sq'",
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
  "slug": "hassum-mellin-pi-mul-sq--7b1adeaac7605e3d6779abf5",
  "source": {
    "blob": "0099a1980ed75ec12f219317bec2527356b991b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 129,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b1adeaac7605e3d6779abf535e5fef3e537c52d9726b451ff01a9c4d5328a55",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2c64248-5b50-e284-884c-828128edd610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_mellin_pi_mul_sq' {a : ι → ℂ} {r : ι → ℝ} {F : ℝ → ℂ} {s : ℂ} (hs : 0 < s.re)
    (hF : ∀ t ∈ Ioi 0, HasSum (fun i ↦ a i * r i * rexp (-π * r i ^ 2 * t)) (F t))
    (h_sum : Summable fun i ↦ ‖a i‖ / |r i| ^ s.re) :
    HasSum (fun i ↦ Gammaℝ (s + 1) * a i * SignType.sign (r i) / |r i| ^ s)
    (mellin F ((s + 1) / 2)) := by
  have hs₁ : s ≠ 0 := fun h ↦ lt_irrefl _ (zero_re ▸ h ▸ hs)
  have hs₂ : 0 < (s + 1).re := by rw [add_re, one_re]; positivity
  have hs₃ : s + 1 ≠ 0 := fun h ↦ lt_irrefl _ (zero_re ▸ h ▸ hs₂)
  have (i t) : (a i * r i * rexp (-π * r i ^ 2 * t)) =
      if r i = 0 then 0 else (a i * r i * rexp (-π * r i ^ 2 * t)) := by
    split_ifs with h <;> simp [h]
  conv at hF => enter [t, ht, 1, i]; rw [this]
  convert hasSum_mellin_pi_mul_sq hs₂ hF ?_ using 2 with i
  · rcases eq_or_ne (r i) 0 with h | h
    · rw [h, abs_zero, ofReal_zero, zero_cpow hs₁, zero_cpow hs₃, div_zero, div_zero]
    · rw [cpow_add _ _ (ofReal_ne_zero.mpr <| abs_ne_zero.mpr h), cpow_one]
      conv_rhs => enter [1]; rw [← sign_mul_abs (r i), ofReal_mul, ← ofRealHom_eq_coe,
        SignType.map_cast]
      field_simp [h]
      ring_nf
  · convert h_sum using 2 with i
    rcases eq_or_ne (r i) 0 with h | h
    · rw [h, abs_zero, ofReal_zero, zero_rpow hs₂.ne', zero_rpow hs.ne', div_zero, div_zero]
    · rw [add_re, one_re, rpow_add (abs_pos.mpr h), rpow_one, norm_mul, norm_real,
        Real.norm_eq_abs, ← div_div, div_right_comm, mul_div_cancel_right₀ _ (abs_ne_zero.mpr h)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variante6305d26067202cc15c958fe504f517a8507f3f5f58a687eb70e7ff021b232f2.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0099a1980ed75ec12f219317bec2527356b991b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
