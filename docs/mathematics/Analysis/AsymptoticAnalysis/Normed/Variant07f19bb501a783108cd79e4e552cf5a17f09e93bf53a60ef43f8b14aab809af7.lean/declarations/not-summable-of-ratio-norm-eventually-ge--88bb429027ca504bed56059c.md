# not_summable_of_ratio_norm_eventually_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a0509ea311c6da87d9732908c1153ca772dccc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 533,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d544a92-b49b-f9ff-56dc-9532cafdd321",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2f58bac-1ae1-16a0-2fb2-2c48a7409b42",
  "kind": "theorem",
  "lexical_name": "not_summable_of_ratio_norm_eventually_ge",
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
  "slug": "not-summable-of-ratio-norm-eventually-ge--88bb429027ca504bed56059c",
  "source": {
    "blob": "f6a0509ea311c6da87d9732908c1153ca772dccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 533,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88bb429027ca504bed56059c8b9cbadeed5ccc2e665a86f7d779e85a917c0c4e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2f58bac-1ae1-16a0-2fb2-2c48a7409b42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_summable_of_ratio_norm_eventually_ge {α : Type*} [SeminormedAddCommGroup α] {f : ℕ → α}
    {r : ℝ} (hr : 1 < r) (hf : ∃ᶠ n in atTop, ‖f n‖ ≠ 0)
    (h : ∀ᶠ n in atTop, r * ‖f n‖ ≤ ‖f (n + 1)‖) : ¬Summable f := by
  rw [eventually_atTop] at h
  rcases h with ⟨N₀, hN₀⟩
  rw [frequently_atTop] at hf
  rcases hf N₀ with ⟨N, hNN₀ : N₀ ≤ N, hN⟩
  rw [← @summable_nat_add_iff α _ _ _ _ N]
  refine' mt Summable.tendsto_atTop_zero
    fun h' ↦ not_tendsto_atTop_of_tendsto_nhds (tendsto_norm_zero.comp h') _
  convert tendsto_atTop_of_geom_le _ hr _
  · refine' lt_of_le_of_ne (norm_nonneg _) _
    intro h''
    specialize hN₀ N hNN₀
    simp only [comp_apply, zero_add] at h''
    exact hN h''.symm
  · intro i
    dsimp only [comp_apply]
    convert hN₀ (i + N) (hNN₀.trans (N.le_add_left i)) using 3
    ac_rfl
#align not_summable_of_ratio_norm_eventually_ge not_summable_of_ratio_norm_eventually_ge

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a0509ea311c6da87d9732908c1153ca772dccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
