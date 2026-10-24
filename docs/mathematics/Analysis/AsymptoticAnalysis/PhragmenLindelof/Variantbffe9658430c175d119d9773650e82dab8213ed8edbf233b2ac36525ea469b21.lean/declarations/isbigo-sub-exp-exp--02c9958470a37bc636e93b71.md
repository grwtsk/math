# isBigO_sub_exp_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0378b6cac22f885a9ebd8bc29154c7e788f5a2b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d1c5842-ce50-7c8d-2d0c-0ed413b1bfbf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6e416f6-c42e-a3e7-274c-fb171cdc196c",
  "kind": "theorem",
  "lexical_name": "isBigO_sub_exp_exp",
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
  "slug": "isbigo-sub-exp-exp--02c9958470a37bc636e93b71",
  "source": {
    "blob": "0378b6cac22f885a9ebd8bc29154c7e788f5a2b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 64,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02c9958470a37bc636e93b71c092828db6a667b2b27cd09e6acc1cb39f7ff258",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6e416f6-c42e-a3e7-274c-fb171cdc196c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_sub_exp_exp {a : ℝ} {f g : ℂ → E} {l : Filter ℂ} {u : ℂ → ℝ}
    (hBf : ∃ c < a, ∃ B, f =O[l] fun z => expR (B * expR (c * |u z|)))
    (hBg : ∃ c < a, ∃ B, g =O[l] fun z => expR (B * expR (c * |u z|))) :
    ∃ c < a, ∃ B, (f - g) =O[l] fun z => expR (B * expR (c * |u z|)) := by
  have : ∀ {c₁ c₂ B₁ B₂}, c₁ ≤ c₂ → 0 ≤ B₂ → B₁ ≤ B₂ → ∀ z,
      ‖expR (B₁ * expR (c₁ * |u z|))‖ ≤ ‖expR (B₂ * expR (c₂ * |u z|))‖ := fun hc hB₀ hB z ↦ by
    rw [Real.norm_eq_abs, Real.norm_eq_abs, Real.abs_exp, Real.abs_exp, Real.exp_le_exp]
    exact
      mul_le_mul hB (Real.exp_le_exp.2 <| mul_le_mul_of_nonneg_right hc <| abs_nonneg _)
        (Real.exp_pos _).le hB₀
  rcases hBf with ⟨cf, hcf, Bf, hOf⟩; rcases hBg with ⟨cg, hcg, Bg, hOg⟩
  refine' ⟨max cf cg, max_lt hcf hcg, max 0 (max Bf Bg), _⟩
  refine' (hOf.trans_le <| this _ _ _).sub (hOg.trans_le <| this _ _ _)
  exacts [le_max_left _ _, le_max_left _ _, (le_max_left _ _).trans (le_max_right _ _),
    le_max_right _ _, le_max_left _ _, (le_max_right _ _).trans (le_max_right _ _)]
set_option linter.uppercaseLean3 false in
#align phragmen_lindelof.is_O_sub_exp_exp PhragmenLindelof.isBigO_sub_exp_exp

/-- An auxiliary lemma that combines two “exponential of a power” estimates into a similar estimate
on the difference of the functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0378b6cac22f885a9ebd8bc29154c7e788f5a2b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
