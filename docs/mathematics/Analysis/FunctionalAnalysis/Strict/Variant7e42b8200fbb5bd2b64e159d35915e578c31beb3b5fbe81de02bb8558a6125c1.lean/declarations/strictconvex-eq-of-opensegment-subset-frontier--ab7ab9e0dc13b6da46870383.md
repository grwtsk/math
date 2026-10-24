# StrictConvex.eq_of_openSegment_subset_frontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8254df6d-860c-ca86-b7a4-cdaa6b16698e",
  "kind": "theorem",
  "lexical_name": "StrictConvex.eq_of_openSegment_subset_frontier",
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
  "slug": "strictconvex-eq-of-opensegment-subset-frontier--ab7ab9e0dc13b6da46870383",
  "source": {
    "blob": "2270a7d9fe86018979a5821d5805c84509fd675b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 339,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant7e42b8200fbb5bd2b64e159d35915e578c31beb3b5fbe81de02bb8558a6125c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab7ab9e0dc13b6da468703835f78c1b80ca71828ddbfffed9b748b55dc4de1ea",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Strict/Variant7e42b8200fbb5bd2b64e159d35915e578c31beb3b5fbe81de02bb8558a6125c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8254df6d-860c-ca86-b7a4-cdaa6b16698e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictConvex.eq_of_openSegment_subset_frontier [Nontrivial 𝕜] [DenselyOrdered 𝕜]
    (hs : StrictConvex 𝕜 s) (hx : x ∈ s) (hy : y ∈ s) (h : openSegment 𝕜 x y ⊆ frontier s) :
    x = y := by
  obtain ⟨a, ha₀, ha₁⟩ := DenselyOrdered.dense (0 : 𝕜) 1 zero_lt_one
  classical
    by_contra hxy
    exact
      (h ⟨a, 1 - a, ha₀, sub_pos_of_lt ha₁, add_sub_cancel'_right _ _, rfl⟩).2
        (hs hx hy hxy ha₀ (sub_pos_of_lt ha₁) <| add_sub_cancel'_right _ _)
#align strict_convex.eq_of_open_segment_subset_frontier StrictConvex.eq_of_openSegment_subset_frontier

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Strict/Variant7e42b8200fbb5bd2b64e159d35915e578c31beb3b5fbe81de02bb8558a6125c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant7e42b8200fbb5bd2b64e159d35915e578c31beb3b5fbe81de02bb8558a6125c1.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2270a7d9fe86018979a5821d5805c84509fd675b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
