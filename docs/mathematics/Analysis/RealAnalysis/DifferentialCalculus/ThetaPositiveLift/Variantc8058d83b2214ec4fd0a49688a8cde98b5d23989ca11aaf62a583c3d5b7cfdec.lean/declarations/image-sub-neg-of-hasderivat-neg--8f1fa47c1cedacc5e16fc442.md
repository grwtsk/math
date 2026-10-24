# image_sub_neg_of_hasDerivAt_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c520c13-290b-55a0-0945-c4f85df5ae80",
  "kind": "theorem",
  "lexical_name": "image_sub_neg_of_hasDerivAt_neg",
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
  "slug": "image-sub-neg-of-hasderivat-neg--8f1fa47c1cedacc5e16fc442",
  "source": {
    "blob": "f3e04a3ff3a26dab21aa087fc0c8b634e852068e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1fa47c1cedacc5e16fc442b1fc4e53140cabb2b978d06f2fe06b962bcdf124",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c520c13-290b-55a0-0945-c4f85df5ae80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem image_sub_neg_of_hasDerivAt_neg (f df : ℝ → ℝ) {x y : ℝ}
    (hxy : x < y) (hc : ContinuousOn f (Icc x y))
    (hd : ∀ t ∈ Ioo x y, HasDerivAt f (df t) t)
    (hn : ∀ t ∈ Ioo x y, df t < 0) : f y - f x < 0 := by
  obtain ⟨c, hc, heq⟩ := exists_hasDerivAt_eq_slope f df hxy hc hd
  have hquot : (f y - f x) / (y - x) < 0 := heq ▸ hn c hc
  simpa using (div_lt_iff₀ (sub_pos.mpr hxy)).mp hquot

/-- A negative first derivative and antitone derivative ratio force the normalized
three-row determinant to be nonpositive at three strictly ordered nodes. Continuity
is needed at the endpoints; derivative hypotheses only concern the interior. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3e04a3ff3a26dab21aa087fc0c8b634e852068e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
