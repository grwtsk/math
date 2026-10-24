# tendsto_zetaEulerApproxComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17d8526e-8e77-4b32-ddfb-9cabd5884b26",
  "kind": "theorem",
  "lexical_name": "tendsto_zetaEulerApproxComplex",
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
  "slug": "tendsto-zetaeulerapproxcomplex--2de221fcddbf3c9c38600a91",
  "source": {
    "blob": "7baba381aec4fc590920a78a7c33c97520c875e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2de221fcddbf3c9c38600a914555dccbdb1fccb5553b30eb15ae30d6592223a2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17d8526e-8e77-4b32-ddfb-9cabd5884b26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_zetaEulerApproxComplex
    {s : Complex}
    (hs : 1 < s.re) :
    Filter.Tendsto
      (fun N : Nat => zetaEulerApproxComplex s N)
      Filter.atTop
      (nhds (zetaComplexHalfPlane s)) := by
  have ht := tendsto_boundedSmoothNumber_sums_complexWeight (s := s) hs
  have heq :
      (fun N : Nat => zetaEulerApproxComplex s N) =
        fun N : Nat =>
          ∑ n ∈ boundedSmoothNumbers (primesUpTo N) N, complexWeight s n := by
    funext N
    exact zetaEulerApproxComplex_expands_boundedSmoothNumbers s N
  rw [heq]
  exact ht

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7baba381aec4fc590920a78a7c33c97520c875e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
