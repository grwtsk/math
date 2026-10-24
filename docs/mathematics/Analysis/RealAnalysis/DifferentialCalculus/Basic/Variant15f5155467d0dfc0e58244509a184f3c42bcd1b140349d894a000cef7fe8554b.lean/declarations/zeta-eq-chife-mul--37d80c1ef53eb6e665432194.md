# zeta_eq_chiFE_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d33d26edcbb986938c335bb99f43dedafa396fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d253e40a-b934-1859-d246-e07c2cd6f78e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:691a8f06-276d-908a-fc8c-8c8bc7925069",
  "kind": "theorem",
  "lexical_name": "zeta_eq_chiFE_mul",
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
  "slug": "zeta-eq-chife-mul--37d80c1ef53eb6e665432194",
  "source": {
    "blob": "4d33d26edcbb986938c335bb99f43dedafa396fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37d80c1ef53eb6e665432194c48a67f7fb9379924a45d7c52dae4cff2e26a12f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:691a8f06-276d-908a-fc8c-8c8bc7925069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_eq_chiFE_mul {s : ℂ} (hs : s.im ≠ 0) :
    riemannZeta s = chiFE s * riemannZeta (1 - s) := by
  have hs0 := ne_zero_of_im_ne_zero hs
  have hs1' : (1 - s) ≠ 0 := sub_ne_zero.mpr (ne_one_of_im_ne_zero hs).symm
  have hG := Gammaℝ_ne_zero_of_im_ne_zero hs
  have hG1 := Gammaℝ_ne_zero_of_im_ne_zero (im_one_sub_ne_zero hs)
  have h1 := Zeta23.RvM.completedRiemannZeta_eq_Gammaℝ_mul hs0 hG
  have h2 := Zeta23.RvM.completedRiemannZeta_eq_Gammaℝ_mul hs1' hG1
  have hΛ : completedRiemannZeta (1 - s) = completedRiemannZeta s := completedRiemannZeta_one_sub s
  -- Γℝ(s)ζ(s) = Λ(s) = Λ(1−s) = Γℝ(1−s)ζ(1−s)
  rw [chiFE_def]
  field_simp
  rw [h1, h2] at *
  linear_combination -hΛ

/-! ### §4. W off the real axis: analyticity, Schwarz reflection, the functional equation -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d33d26edcbb986938c335bb99f43dedafa396fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
