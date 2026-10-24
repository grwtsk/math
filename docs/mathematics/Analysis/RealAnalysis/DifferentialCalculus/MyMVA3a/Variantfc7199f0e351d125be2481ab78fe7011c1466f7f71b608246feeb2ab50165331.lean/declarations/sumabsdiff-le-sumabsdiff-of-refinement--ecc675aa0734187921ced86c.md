# sumAbsDiff_le_sumAbsDiff_of_refinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a713516d-2b6b-54c8-a55c-b3d616584ee7",
  "kind": "lemma",
  "lexical_name": "sumAbsDiff_le_sumAbsDiff_of_refinement",
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
  "slug": "sumabsdiff-le-sumabsdiff-of-refinement--ecc675aa0734187921ced86c",
  "source": {
    "blob": "3b06a0570821a48a2e65208640ff2e5af25d4cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 693,
    "line": 685,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecc675aa0734187921ced86c81a342820f1c54231931c9a4f18e27c360dc83b7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a713516d-2b6b-54c8-a55c-b3d616584ee7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 685–693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sumAbsDiff_le_sumAbsDiff_of_refinement
  {a b : ℝ} {g : ℝ → ℝ} {P R : IPart.IPartition a b}
  (hPR : IPart.IsRefinement R P) :
  sumAbsDiff g P ≤ sumAbsDiff g R := by
    convert sumAbsDiff_mono_of_refinement hPR using 1

/-
If `x` is a monotone sequence of points contained in partition `P`, then the sum of absolute differences of `g` along `x` is bounded by `sumAbsDiff g P`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean#L685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b06a0570821a48a2e65208640ff2e5af25d4cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
