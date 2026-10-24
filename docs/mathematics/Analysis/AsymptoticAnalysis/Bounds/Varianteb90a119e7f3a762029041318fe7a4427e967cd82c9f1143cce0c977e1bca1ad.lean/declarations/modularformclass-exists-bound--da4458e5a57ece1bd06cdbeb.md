# ModularFormClass.exists_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cbbbfa79dea632b1ec883c05050e549f0ac423d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 407,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3de16057-b9da-062f-e0f4-45a44607aefa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9551cc79-c0d8-a139-44fa-3b7afb454e14",
  "kind": "lemma",
  "lexical_name": "ModularFormClass.exists_bound",
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
  "slug": "modularformclass-exists-bound--da4458e5a57ece1bd06cdbeb",
  "source": {
    "blob": "cbbbfa79dea632b1ec883c05050e549f0ac423d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 407,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Varianteb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da4458e5a57ece1bd06cdbebda3b8d6e762ff2c802fa21e2265c6ace672386c3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Bounds/Varianteb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9551cc79-c0d8-a139-44fa-3b7afb454e14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ModularFormClass.exists_bound {k : ℤ} (hk : 0 ≤ k) {Γ : Subgroup (GL (Fin 2) ℝ)}
    [Γ.IsArithmetic] {F : Type*} [FunLike F ℍ ℂ] [ModularFormClass F Γ k] (f : F) :
    ∃ C, ∀ τ, ‖f τ‖ ≤ C * (max 1 (1 / (τ.im) ^ k)) := by
  obtain ⟨C, hC⟩ := ModularFormClass.exists_petersson_le hk Γ f f
  refine ⟨C.sqrt, fun τ ↦ (div_le_iff₀ (by positivity)).mp (Real.le_sqrt_of_sq_le ?_)⟩
  lift k to ℕ using hk
  specialize hC τ
  have h : 0 < ‖(τ.im : ℂ) ^ (k : ℤ)‖ := mod_cast norm_pos_iff.mpr (pow_ne_zero _ τ.im_ne_zero)
  rw [petersson, norm_mul, norm_mul, Complex.norm_conj, ← sq, ← le_div_iff₀ h, mul_div_assoc] at hC
  rw [div_pow, div_le_iff₀ (by positivity)]
  refine hC.trans (congrArg (C * ·) ?_).le
  -- remains to show `(max τ.im (1 / τ.im)) ^ k / ‖τ.im ^ k‖ = (max 1 (1 / τ.im ^ k)) ^ 2`,
  -- which is easier after lifting to `NNReal`
  generalize h : τ.im = t
  have ht : 0 < t := h ▸ τ.im_pos
  lift t to NNReal using ht.le
  rw [← coe_nnnorm]
  norm_cast at ⊢ ht
  rw [(pow_left_mono k).map_max, (pow_left_mono 2).map_max, ← max_div_div_right (by positivity)]
  congr <;> simp [field, ht.ne']

open Complex ModularFormClass

/-- General result on bounding q-expansion coefficients using a bound on the norm of the function.
This will get used twice over, once for cusp forms (with `e = k / 2`) and once for modular forms
(with `e = k`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Bounds/Varianteb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Varianteb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbbbfa79dea632b1ec883c05050e549f0ac423d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
