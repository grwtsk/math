# norm_image_sub_le_of_norm_hasFDerivWithin_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b46ffd0e4aa5e81a5fcaf37a270b32772426225",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 420,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ea4638f-9c4b-be09-1d54-89d429e72e14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23c71d92-e126-6144-ad6f-5317f765954a",
  "kind": "theorem",
  "lexical_name": "norm_image_sub_le_of_norm_hasFDerivWithin_le",
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
  "slug": "norm-image-sub-le-of-norm-hasfderivwithin-le--2e07c7f6287ce422ff77230d",
  "source": {
    "blob": "4b46ffd0e4aa5e81a5fcaf37a270b32772426225",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 420,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e07c7f6287ce422ff77230d1d1b6fda5d8b51539508fdb76c6f7d1677665090",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23c71d92-e126-6144-ad6f-5317f765954a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_image_sub_le_of_norm_hasFDerivWithin_le
    (hf : ∀ x ∈ s, HasFDerivWithinAt f (f' x) s x) (bound : ∀ x ∈ s, ‖f' x‖ ≤ C) (hs : Convex ℝ s)
    (xs : x ∈ s) (ys : y ∈ s) : ‖f y - f x‖ ≤ C * ‖y - x‖ := by
  letI : RCLike 𝕜 := IsRCLikeNormedField.rclike 𝕜
  letI : NormedSpace ℝ G := RestrictScalars.normedSpace ℝ 𝕜 G
  /- By composition with `AffineMap.lineMap x y`, we reduce to a statement for functions defined
    on `[0,1]`, for which it is proved in `norm_image_sub_le_of_norm_deriv_le_segment`.
    We just have to check the differentiability of the composition and bounds on its derivative,
    which is straightforward but tedious for lack of automation. -/
  set g := (AffineMap.lineMap x y : ℝ → E)
  have segm : MapsTo g (Icc 0 1 : Set ℝ) s := hs.mapsTo_lineMap xs ys
  have hD : ∀ t ∈ Icc (0 : ℝ) 1,
      HasDerivWithinAt (f ∘ g) (f' (g t) (y - x)) (Icc 0 1) t := fun t ht => by
    simpa using ((hf (g t) (segm ht)).restrictScalars ℝ).comp_hasDerivWithinAt _
      AffineMap.hasDerivWithinAt_lineMap segm
  have bound : ∀ t ∈ Ico (0 : ℝ) 1, ‖f' (g t) (y - x)‖ ≤ C * ‖y - x‖ := fun t ht =>
    le_of_opNorm_le _ (bound _ <| segm <| Ico_subset_Icc_self ht) _
  simpa [g] using norm_image_sub_le_of_norm_deriv_le_segment_01' hD bound

/-- The mean value theorem on a convex set: if the derivative of a function is bounded by `C` on
`s`, then the function is `C`-Lipschitz on `s`. Version with `HasFDerivWithinAt` and
`LipschitzOnWith`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant40cef273dfcb65e71d1d78ac9b1cead5fdfab066d868570f6584f33114424b2f.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b46ffd0e4aa5e81a5fcaf37a270b32772426225` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
