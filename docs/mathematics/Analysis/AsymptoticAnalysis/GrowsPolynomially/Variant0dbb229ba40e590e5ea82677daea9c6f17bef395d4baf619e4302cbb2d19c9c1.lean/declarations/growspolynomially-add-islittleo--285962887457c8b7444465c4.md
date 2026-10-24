# GrowsPolynomially.add_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a1922aa8af6afec1530ec0d7f0a2b0be7489fe5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 401,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18e4403d-9131-3a81-84c2-e8ddc37bfa80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7713d5ed-e0f1-edf0-0e51-250a164f73b8",
  "kind": "lemma",
  "lexical_name": "GrowsPolynomially.add_isLittleO",
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
  "slug": "growspolynomially-add-islittleo--285962887457c8b7444465c4",
  "source": {
    "blob": "9a1922aa8af6afec1530ec0d7f0a2b0be7489fe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 401,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:285962887457c8b7444465c463339f51dbefe76ac8e508d71b07e9e52daa2241",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7713d5ed-e0f1-edf0-0e51-250a164f73b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GrowsPolynomially.add_isLittleO {f g : ℝ → ℝ} (hf : GrowsPolynomially f)
    (hfg : g =o[atTop] f) : GrowsPolynomially fun x => f x + g x := by
  intro b hb
  have hb_ub := hb.2
  rw [isLittleO_iff] at hfg
  cases hf.eventually_atTop_nonneg_or_nonpos with
  | inl hf' => -- f is eventually non-negative
    have hf := hf b hb
    obtain ⟨c₁, hc₁_mem : 0 < c₁, c₂, hc₂_mem : 0 < c₂, hf⟩ := hf
    specialize hfg (c := 1/2) (by norm_num)
    refine ⟨c₁ / 3, by positivity, 3*c₂, by positivity, ?_⟩
    filter_upwards [hf,
                    (tendsto_id.const_mul_atTop hb.1).eventually_forall_ge_atTop hfg,
                    (tendsto_id.const_mul_atTop hb.1).eventually_forall_ge_atTop hf',
                    eventually_ge_atTop 0] with x hf₁ hfg' hf₂ hx_nonneg
    have hbx : b * x ≤ x := by nth_rewrite 2 [← one_mul x]; gcongr
    have hfg₂ : ‖g x‖ ≤ 1/2 * f x := by
      calc ‖g x‖ ≤ 1/2 * ‖f x‖ := hfg' x hbx
           _ = 1/2 * f x := by congr; exact norm_of_nonneg (hf₂ _ hbx)
    have hx_ub : f x + g x ≤ 3/2 * f x := by
      calc _ ≤ f x + ‖g x‖ := by gcongr; exact le_norm_self (g x)
           _ ≤ f x + 1/2 * f x := by gcongr
           _ = 3/2 * f x := by ring
    have hx_lb : 1/2 * f x ≤ f x + g x := by
      calc f x + g x ≥ f x - ‖g x‖ := by
                rw [sub_eq_add_neg, norm_eq_abs]; gcongr; exact neg_abs_le (g x)
           _ ≥ f x - 1/2 * f x := by gcongr
           _ = 1/2 * f x := by ring
    intro u ⟨hu_lb, hu_ub⟩
    have hfu_nonneg : 0 ≤ f u := hf₂ _ hu_lb
    have hfg₃ : ‖g u‖ ≤ 1/2 * f u := by
      calc ‖g u‖ ≤ 1/2 * ‖f u‖ := hfg' _ hu_lb
           _ = 1/2 * f u := by congr; simp only [norm_eq_abs, abs_eq_self, hfu_nonneg]
    refine ⟨?lb, ?ub⟩
    case lb =>
      calc f u + g u ≥ f u - ‖g u‖ := by
                  rw [sub_eq_add_neg, norm_eq_abs]; gcongr; exact neg_abs_le _
           _ ≥ f u - 1/2 * f u := by gcongr
           _ = 1/2 * f u := by ring
           _ ≥ 1/2 * (c₁ * f x) := by gcongr; exact (hf₁ u ⟨hu_lb, hu_ub⟩).1
           _ = c₁/3 * (3/2 * f x) := by ring
           _ ≥ c₁/3 * (f x + g x) := by gcongr
    case ub =>
      calc _ ≤ f u + ‖g u‖ := by gcongr; exact le_norm_self (g u)
           _ ≤ f u + 1/2 * f u := by gcongr
           _ = 3/2 * f u := by ring
           _ ≤ 3/2 * (c₂ * f x) := by gcongr; exact (hf₁ u ⟨hu_lb, hu_ub⟩).2
           _ = 3*c₂ * (1/2 * f x) := by ring
           _ ≤ 3*c₂ * (f x + g x) := by gcongr
  | inr hf' => -- f is eventually nonpos
    have hf := hf b hb
    obtain ⟨c₁, hc₁_mem : 0 < c₁, c₂, hc₂_mem : 0 < c₂, hf⟩ := hf
    specialize hfg (c := 1/2) (by norm_num)
    refine ⟨3*c₁, by positivity, c₂/3, by positivity, ?_⟩
    filter_upwards [hf,
                    (tendsto_id.const_mul_atTop hb.1).eventually_forall_ge_atTop hfg,
                    (tendsto_id.const_mul_atTop hb.1).eventually_forall_ge_atTop hf',
                    eventually_ge_atTop 0] with x hf₁ hfg' hf₂ hx_nonneg
    have hbx : b * x ≤ x := by nth_rewrite 2 [← one_mul x]; gcongr
    have hfg₂ : ‖g x‖ ≤ -1/2 * f x := by
      calc ‖g x‖ ≤ 1/2 * ‖f x‖ := hfg' x hbx
           _ = 1/2 * (-f x) := by congr; exact norm_of_nonpos (hf₂ x hbx)
           _ = _ := by ring
    have hx_ub : f x + g x ≤ 1/2 * f x := by
      calc _ ≤ f x + ‖g x‖ := by gcongr; exact le_norm_self (g x)
           _ ≤ f x + (-1/2 * f x) := by gcongr
           _ = 1/2 * f x := by ring
    have hx_lb : 3/2 * f x ≤ f x + g x := by
      calc f x + g x ≥ f x - ‖g x‖ := by
                rw [sub_eq_add_neg, norm_eq_abs]; gcongr; exact neg_abs_le (g x)
           _ ≥ f x + 1/2 * f x := by
                  rw [sub_eq_add_neg]
                  gcongr
                  refine le_of_neg_le_neg ?bc.a
                  rwa [neg_neg, ← neg_mul, ← neg_div]
           _ = 3/2 * f x := by ring
    intro u ⟨hu_lb, hu_ub⟩
    have hfu_nonpos : f u ≤ 0 := hf₂ _ hu_lb
    have hfg₃ : ‖g u‖ ≤ -1/2 * f u := by
      calc ‖g u‖ ≤ 1/2 * ‖f u‖ := hfg' _ hu_lb
           _ = 1/2 * (-f u) := by congr; exact norm_of_nonpos hfu_nonpos
           _ = -1/2 * f u := by ring
    refine ⟨?lb, ?ub⟩
    case lb =>
      calc f u + g u ≥ f u - ‖g u‖ := by
                  rw [sub_eq_add_neg, norm_eq_abs]; gcongr; exact neg_abs_le _
           _ ≥ f u + 1/2 * f u := by
                  rw [sub_eq_add_neg]
                  gcongr
                  refine le_of_neg_le_neg ?_
                  rwa [neg_neg, ← neg_mul, ← neg_div]
           _ = 3/2 * f u := by ring
           _ ≥ 3/2 * (c₁ * f x) := by gcongr; exact (hf₁ u ⟨hu_lb, hu_ub⟩).1
           _ = 3*c₁ * (1/2 * f x) := by ring
           _ ≥ 3*c₁ * (f x + g x) := by gcongr
    case ub =>
      calc _ ≤ f u + ‖g u‖ := by gcongr; exact le_norm_self (g u)
           _ ≤ f u - 1/2 * f u := by
                rw [sub_eq_add_neg]
                gcongr
                rwa [← neg_mul, ← neg_div]
           _ = 1/2 * f u := by ring
           _ ≤ 1/2 * (c₂ * f x) := by gcongr; exact (hf₁ u ⟨hu_lb, hu_ub⟩).2
           _ = c₂/3 * (3/2 * f x) := by ring
           _ ≤ c₂/3 * (f x + g x) := by gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a1922aa8af6afec1530ec0d7f0a2b0be7489fe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
