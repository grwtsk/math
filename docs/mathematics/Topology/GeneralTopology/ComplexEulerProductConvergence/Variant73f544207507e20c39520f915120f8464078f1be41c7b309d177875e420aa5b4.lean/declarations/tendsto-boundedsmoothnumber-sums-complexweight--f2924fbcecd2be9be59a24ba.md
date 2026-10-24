# tendsto_boundedSmoothNumber_sums_complexWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff67e206c0ddcd7ff92978eddc156038b7af2003",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73f544207507e20c39520f915120f8464078f1be41c7b309d177875e420aa5b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b022076-86f6-d110-460a-8ba08ac8709b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:228b9c49-ad87-16cb-6fe9-afab6bbdaaac",
  "kind": "theorem",
  "lexical_name": "tendsto_boundedSmoothNumber_sums_complexWeight",
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
  "slug": "tendsto-boundedsmoothnumber-sums-complexweight--f2924fbcecd2be9be59a24ba",
  "source": {
    "blob": "ff67e206c0ddcd7ff92978eddc156038b7af2003",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant73f544207507e20c39520f915120f8464078f1be41c7b309d177875e420aa5b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2924fbcecd2be9be59a24ba434a33179abb97c938090c9b8e651c318053fe23",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant73f544207507e20c39520f915120f8464078f1be41c7b309d177875e420aa5b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:228b9c49-ad87-16cb-6fe9-afab6bbdaaac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_boundedSmoothNumber_sums_complexWeight
    {s : Complex}
    (hs : 1 < s.re) :
    Filter.Tendsto
      (fun N : Nat =>
        ∑ n ∈ boundedSmoothNumbers (primesUpTo N) N, complexWeight s n)
      Filter.atTop
      (nhds (zetaComplexHalfPlane s)) := by
  unfold zetaComplexHalfPlane
  refine
    tendsto_finset_sums_of_summable_of_eventually_contains_Icc
      (zetaComplexHalfPlane_summable hs)
      (fun N => boundedSmoothNumbers (primesUpTo N) N) ?_ (complexWeight_zero s)
  intro M
  refine ⟨M, ?_⟩
  intro N hNM n hn
  exact
    Icc_subset_boundedSmoothNumbers_primesUpTo N
      (Finset.mem_Icc.mpr
        ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hNM⟩)

/--
Checked complex Euler-product convergence for zeta in the half-plane
`Re(s) > 1`.

The approximants are finite products over primes `p <= N`, with local exponent
cutoff `N`. They converge to the absolutely convergent complex Dirichlet series
`zetaComplexHalfPlane s`.

This is not analytic continuation, not a zero-free region, not PNT, not RH,
and not generalized RH.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant73f544207507e20c39520f915120f8464078f1be41c7b309d177875e420aa5b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant73f544207507e20c39520f915120f8464078f1be41c7b309d177875e420aa5b4.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff67e206c0ddcd7ff92978eddc156038b7af2003` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
