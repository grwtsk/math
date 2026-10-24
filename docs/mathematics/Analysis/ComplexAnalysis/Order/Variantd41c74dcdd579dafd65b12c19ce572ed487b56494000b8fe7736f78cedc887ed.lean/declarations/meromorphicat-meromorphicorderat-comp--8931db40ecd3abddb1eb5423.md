# MeromorphicAt.meromorphicOrderAt_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2a45051c74b71cf27654c2aa16bfb975ce76b04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 907,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1097abe6-a5b2-4f69-7eea-ccc692f06184",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea158162-0113-5a63-5892-5b72f64aefed",
  "kind": "lemma",
  "lexical_name": "MeromorphicAt.meromorphicOrderAt_comp",
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
  "slug": "meromorphicat-meromorphicorderat-comp--8931db40ecd3abddb1eb5423",
  "source": {
    "blob": "d2a45051c74b71cf27654c2aa16bfb975ce76b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 935,
    "line": 907,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8931db40ecd3abddb1eb542315a293670f7d1f268a6f5ce25dfdc92c8f5408b8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea158162-0113-5a63-5892-5b72f64aefed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 907–935.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeromorphicAt.meromorphicOrderAt_comp (hf : MeromorphicAt f (g x)) (hg : AnalyticAt 𝕜 g x)
    (hg_nc : ¬EventuallyConst g (𝓝 x)) :
    meromorphicOrderAt (f ∘ g) x =
      (meromorphicOrderAt f (g x)) * (analyticOrderAt (g · - g x) x).map Nat.cast := by
  -- First deal with the silly case that `f` is identically zero around `g x`.
  rcases eq_or_ne (meromorphicOrderAt f (g x)) ⊤ with hf' | hf'
  · rw [hf', WithTop.top_mul]
    · rw [meromorphicOrderAt_eq_top_iff] at hf' ⊢
      rw [Function.comp_def, ← eventually_map (P := (f · = 0))]
      exact EventuallyEq.filter_mono hf' (hg.map_nhdsNE hg_nc)
    · simp [(show AnalyticAt 𝕜 (g · - g x) x by fun_prop).analyticOrderAt_eq_zero]
  -- Now the interesting case. First unpack the data
  have hr := (WithTop.coe_untop₀_of_ne_top hf').symm
  rw [meromorphicOrderAt_ne_top_iff hf] at hf'
  set r := (meromorphicOrderAt f (g x)).untop₀
  rw [hr]
  -- Now write `f = (· - g x) ^ r • F` for `F` analytic and nonzero at `g x`
  obtain ⟨F, hFan, hFne, hFev⟩ := hf'
  have aux1 : f ∘ g =ᶠ[𝓝[≠] x] (g · - g x) ^ r • (F ∘ g) := hFev.comp_tendsto (hg.map_nhdsNE hg_nc)
  have aux2 : meromorphicOrderAt (F ∘ g) x = 0 := by
    rw [AnalyticAt.meromorphicOrderAt_eq (by fun_prop),
      analyticOrderAt_eq_zero.mpr (by exact .inr hFne), ENat.map_zero, CharP.cast_eq_zero,
      WithTop.coe_zero]
  rw [meromorphicOrderAt_congr aux1, meromorphicOrderAt_smul ?_ (AnalyticAt.meromorphicAt ?_),
    aux2, add_zero, meromorphicOrderAt_zpow, AnalyticAt.meromorphicOrderAt_eq] <;>
  fun_prop

/-- If `g` is analytic at `x`, and `g' x ≠ 0`, then the meromorphic order of
`f ∘ g` at `x` is the meromorphic order of `f` at `g x` (even if `f` is not meromorphic). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean#L907).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2a45051c74b71cf27654c2aa16bfb975ce76b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
