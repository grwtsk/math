# HasDerivWithinAt.nonneg_of_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8453b5be-2649-22c8-a92c-3849eb222f76",
  "kind": "lemma",
  "lexical_name": "HasDerivWithinAt.nonneg_of_monotoneOn",
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
  "slug": "hasderivwithinat-nonneg-of-monotoneon--4ddd9b6e51da0e14564c6b1e",
  "source": {
    "blob": "cf24b054ac45256c91775b3038a0bf43db9b756a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 172,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variante6a16a3499ea89a77715019befa3ea3f74a4932602fa88d6e13b823ef7b4b8aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ddd9b6e51da0e14564c6b1e4f33810905aaadff0090c53b49ffde52705558d9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variante6a16a3499ea89a77715019befa3ea3f74a4932602fa88d6e13b823ef7b4b8aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8453b5be-2649-22c8-a92c-3849eb222f76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasDerivWithinAt.nonneg_of_monotoneOn (hx : AccPt x (𝓟 s))
    (hd : HasDerivWithinAt g g' s x) (hg : MonotoneOn g s) : 0 ≤ g' := by
  have : (𝓝[s \ {x}] x).NeBot := accPt_principal_iff_nhdsWithin.mp hx
  have h'g : MonotoneOn g (insert x s) :=
    hg.insert_of_continuousWithinAt hx.clusterPt hd.continuousWithinAt
  have : Tendsto (slope g x) (𝓝[s \ {x}] x) (𝓝 g') := hasDerivWithinAt_iff_tendsto_slope.mp hd
  apply ge_of_tendsto this
  filter_upwards [self_mem_nhdsWithin] with y hy
  simp only [Set.mem_sdiff, mem_singleton_iff] at hy
  exact h'g.slope_nonneg (by simp) (by simp [hy])

/-- The derivative within a set of a monotone function is nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variante6a16a3499ea89a77715019befa3ea3f74a4932602fa88d6e13b823ef7b4b8aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variante6a16a3499ea89a77715019befa3ea3f74a4932602fa88d6e13b823ef7b4b8aa.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf24b054ac45256c91775b3038a0bf43db9b756a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
