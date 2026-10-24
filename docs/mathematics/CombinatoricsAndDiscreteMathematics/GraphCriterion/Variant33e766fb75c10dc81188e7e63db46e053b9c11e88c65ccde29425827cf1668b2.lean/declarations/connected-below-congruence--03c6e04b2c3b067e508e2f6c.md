# connected_below_congruence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b1331d5-1837-6d15-856f-0d93aba987e7",
  "kind": "theorem",
  "lexical_name": "connected_below_congruence",
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
  "slug": "connected-below-congruence--03c6e04b2c3b067e508e2f6c",
  "source": {
    "blob": "3743ea3001b3af818c1310f457f7471f5dba809c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 257,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03c6e04b2c3b067e508e2f6c4e08443bbc99c249ac59f4ef4863e3ef97f48456",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b1331d5-1837-6d15-856f-0d93aba987e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem connected_below_congruence (color : Carrier → Carrier → Lat)
    (rel : Congruence (graphAlgebra color)) (seeds : Finset (Carrier × Carrier))
    (contains : ∀ edge ∈ seeds, rel edge.1 edge.2) {left right : Carrier}
    (connected : Connected color seeds left right) : rel left right := by
  induction connected with
  | rel left right marked =>
    obtain ⟨placement, admissible, edge, member, rfl, rfl⟩ := marked
    exact graphAlgebra_preserves color rel admissible (contains edge member)
  | refl point => exact rel.refl point
  | symm left right _ inductionHyp => exact rel.symm inductionHyp
  | trans left middle right _ _ first second => exact rel.trans first second

/-- Every congruence is recovered using all its related pairs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3743ea3001b3af818c1310f457f7471f5dba809c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
