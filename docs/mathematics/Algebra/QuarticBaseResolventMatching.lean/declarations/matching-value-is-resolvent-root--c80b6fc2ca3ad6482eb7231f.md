# matching_value_is_resolvent_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7c81b6566b83c28cc9b284dbf76937a60dea9ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/Algebra/QuarticBaseResolventMatching.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aedaa68b-2284-e6a1-0c67-3d8d4fbbfeb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b96d63c9-0498-611d-dfb6-58c32fbf3ebe",
  "kind": "theorem",
  "lexical_name": "matching_value_is_resolvent_root",
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
  "slug": "matching-value-is-resolvent-root--c80b6fc2ca3ad6482eb7231f",
  "source": {
    "blob": "d7c81b6566b83c28cc9b284dbf76937a60dea9ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 29,
    "path": "GRWTSK/Algebra/QuarticBaseResolventMatching.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c80b6fc2ca3ad6482eb7231f7369fe4b1d0f5a53e0e1a51be7040f221897017d",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticBaseResolventMatching.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b96d63c9-0498-611d-dfb6-58c32fbf3ebe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matching_value_is_resolvent_root
    (p : K[X]) (A B C₀ D : K)
    (hp : p = X ^ 4 + C A * X ^ 3 + C B * X ^ 2 +
      C C₀ * X + C D)
    (hs : (p.map (algebraMap K L)).Splits)
    (hm : (p.map (algebraMap K L)).Monic)
    (e : QuarticRootEnumeration (L := L) p)
    (m : PerfectMatching) :
    ((baseAdjacencyResolvent A B C₀ D).map (algebraMap K L)).IsRoot
      (complementaryAdjacency e.r m) := by
  have hroots := actual_quartic_resolvent_three_roots p A B C₀ D hp hs hm e
  have hall : m = ⟨matching01_23, by decide⟩ ∨
      m = ⟨matching02_13, by decide⟩ ∨
      m = ⟨matching03_12, by decide⟩ := by
    rcases Finset.mem_insert.mp m.2 with h | h
    · exact Or.inl (Subtype.ext h)
    rcases Finset.mem_insert.mp h with h | h
    · exact Or.inr (Or.inl (Subtype.ext h))
    · exact Or.inr (Or.inr (Subtype.ext (Finset.mem_singleton.mp h)))
  rcases hall with h | h | h
  · subst m
    simpa [complementaryAdjacency, matchingWeight, matching01_23,
      pair, adjacencyOne, qOne] using hroots.1
  · subst m
    simpa [complementaryAdjacency, matchingWeight, matching02_13,
      pair, adjacencyTwo, qTwo] using hroots.2.1
  · subst m
    simpa [complementaryAdjacency, matchingWeight, matching03_12,
      pair, adjacencyThree, qThree] using hroots.2.2

/-- The matching-indexed root map is injective for an actual separable
quartic, in every characteristic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticBaseResolventMatching.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticBaseResolventMatching.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c81b6566b83c28cc9b284dbf76937a60dea9ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
