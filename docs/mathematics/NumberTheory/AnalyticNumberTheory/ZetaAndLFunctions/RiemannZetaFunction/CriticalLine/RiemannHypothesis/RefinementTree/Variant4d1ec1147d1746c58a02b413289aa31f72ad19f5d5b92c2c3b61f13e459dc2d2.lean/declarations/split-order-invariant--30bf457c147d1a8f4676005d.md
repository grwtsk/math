# split_order_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3768b403-1d45-09c7-99c2-13b8729271f6",
  "kind": "theorem",
  "lexical_name": "split_order_invariant",
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
  "slug": "split-order-invariant--30bf457c147d1a8f4676005d",
  "source": {
    "blob": "bc32a87453e3d07fb8c77bf7a80d5b1847dc078a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefinementTree/Variant4d1ec1147d1746c58a02b413289aa31f72ad19f5d5b92c2c3b61f13e459dc2d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30bf457c147d1a8f4676005ddbd1884335d67eca5ac88755b66079ba77ea264c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefinementTree/Variant4d1ec1147d1746c58a02b413289aa31f72ad19f5d5b92c2c3b61f13e459dc2d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3768b403-1d45-09c7-99c2-13b8729271f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem split_order_invariant (t u : Tree) (ht : Positive t) (hu : Positive u)
    (hpackets : (packets t).Perm (packets u)) : detailEnergy t = detailEnergy u := by
  have hw : width t = width u := by
    rw [width_eq_packet_sum, width_eq_packet_sum]
    exact (hpackets.map Prod.fst).sum_eq
  have hv : value t = value u := by
    rw [value_eq_packet_sum, value_eq_packet_sum]
    exact (hpackets.map Prod.snd).sum_eq
  have he : leafEnergy t = leafEnergy u := by
    rw [leafEnergy_eq_packet_sum, leafEnergy_eq_packet_sum]
    exact (hpackets.map (fun p => p.2 ^ 2 / p.1)).sum_eq
  rw [full_tree_identity t ht, full_tree_identity u hu, hw, hv] at he
  linarith

/-- The signed root and the unnormalized detail reconstruct both children. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefinementTree/Variant4d1ec1147d1746c58a02b413289aa31f72ad19f5d5b92c2c3b61f13e459dc2d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefinementTree/Variant4d1ec1147d1746c58a02b413289aa31f72ad19f5d5b92c2c3b61f13e459dc2d2.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc32a87453e3d07fb8c77bf7a80d5b1847dc078a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
