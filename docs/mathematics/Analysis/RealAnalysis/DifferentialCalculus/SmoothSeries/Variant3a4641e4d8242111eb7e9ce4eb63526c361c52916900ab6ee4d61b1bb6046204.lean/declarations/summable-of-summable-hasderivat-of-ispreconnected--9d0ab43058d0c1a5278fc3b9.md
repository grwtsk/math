# summable_of_summable_hasDerivAt_of_isPreconnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:490d6ad5-b880-a224-bf1e-ee08495976ff",
  "kind": "theorem",
  "lexical_name": "summable_of_summable_hasDerivAt_of_isPreconnected",
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
  "slug": "summable-of-summable-hasderivat-of-ispreconnected--9d0ab43058d0c1a5278fc3b9",
  "source": {
    "blob": "98065890f200d80623627575bae274d64fe8432e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d0ab43058d0c1a5278fc3b99b0cbc62f235990b593b605dfcbc9b97f6d06006",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:490d6ad5-b880-a224-bf1e-ee08495976ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_of_summable_hasDerivAt_of_isPreconnected (hu : Summable u) (ht : IsOpen t)
    (h't : IsPreconnected t) (hg : ∀ n y, y ∈ t → HasDerivAt (g n) (g' n y) y)
    (hg' : ∀ n y, y ∈ t → ‖g' n y‖ ≤ u n) (hy₀ : y₀ ∈ t) (hg0 : Summable (g · y₀))
    (hy : y ∈ t) : Summable fun n => g n y := by
  simp_rw [hasDerivAt_iff_hasFDerivAt] at hg
  refine summable_of_summable_hasFDerivAt_of_isPreconnected hu ht h't hg ?_ hy₀ hg0 hy
  simpa? says simpa only [ContinuousLinearMap.norm_smulRight_apply, norm_one, one_mul]

/-- Consider a series of functions `∑' n, f n x` on a preconnected open set. If the series converges
at a point, and all functions in the series are differentiable with a summable bound on the
derivatives, then the series is differentiable on the set and its derivative is the sum of the
derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98065890f200d80623627575bae274d64fe8432e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
