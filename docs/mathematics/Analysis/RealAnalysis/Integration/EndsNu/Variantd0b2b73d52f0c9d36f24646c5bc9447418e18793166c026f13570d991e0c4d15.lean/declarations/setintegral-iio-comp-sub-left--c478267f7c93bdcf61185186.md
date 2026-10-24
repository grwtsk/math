# setIntegral_Iio_comp_sub_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "592d4fb46536da54f3f44c17fa380bb8f4c19d10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2464a5a-4a37-52f4-298f-1ea66993ddc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c4623bb-dd77-956e-4d9e-e0ca8c92fa5e",
  "kind": "lemma",
  "lexical_name": "setIntegral_Iio_comp_sub_left",
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
  "slug": "setintegral-iio-comp-sub-left--c478267f7c93bdcf61185186",
  "source": {
    "blob": "592d4fb46536da54f3f44c17fa380bb8f4c19d10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 208,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c478267f7c93bdcf6118518629d6f46011f466a33fdbab516454e5cd5b4c0a0f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c4623bb-dd77-956e-4d9e-e0ca8c92fa5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_Iio_comp_sub_left (f : ℝ → ℝ) (T : ℝ) :
    ∫ τ in Iio T, f (T - τ) = ∫ Δ in Ioi 0, f Δ := by
  rw [← integral_indicator measurableSet_Iio, ← integral_indicator measurableSet_Ioi]
  have e : (fun τ => (Iio T).indicator (fun τ => f (T - τ)) τ)
      = fun τ => (Ioi (0:ℝ)).indicator f (T - τ) := by
    funext τ
    by_cases h : τ < T
    · rw [indicator_of_mem (show τ ∈ Iio T from h),
        indicator_of_mem (show T - τ ∈ Ioi (0:ℝ) from sub_pos.mpr h)]
    · rw [indicator_of_notMem (show τ ∉ Iio T from h),
        indicator_of_notMem (show T - τ ∉ Ioi (0:ℝ) from fun h' => h (sub_pos.mp h'))]
  rw [e]
  exact integral_sub_left_eq_self ((Ioi (0:ℝ)).indicator f) volume T

/-- change of variables Δ = τ − c on (c, ∞). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `592d4fb46536da54f3f44c17fa380bb8f4c19d10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
