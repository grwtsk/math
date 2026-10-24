# convexHull_ediam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b934e025-e9ab-e65a-faeb-f05b27464ffb",
  "kind": "theorem",
  "lexical_name": "convexHull_ediam",
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
  "slug": "convexhull-ediam--74bba0cbf8e6bc48e2666282",
  "source": {
    "blob": "d117987a83e30aaabe8d0c32a0e4ba5ceaebc9e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 165,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74bba0cbf8e6bc48e2666282275e8a4e77d89e8bd8a8e010c0893409ebfc5db1",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b934e025-e9ab-e65a-faeb-f05b27464ffb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexHull_ediam (s : Set E) : ediam (convexHull ℝ s) = ediam s := by
  refine (ediam_le fun x hx y hy => ?_).antisymm (ediam_mono <| subset_convexHull ℝ s)
  rcases convexHull_exists_dist_ge2 hx hy with ⟨x', hx', y', hy', H⟩
  rw [edist_dist]
  apply le_trans (ENNReal.ofReal_le_ofReal H)
  rw [← edist_dist]
  exact edist_le_ediam_of_mem hx' hy'

/-- Diameter of the convex hull of a set `s` equals the emetric diameter of `s`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d117987a83e30aaabe8d0c32a0e4ba5ceaebc9e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
