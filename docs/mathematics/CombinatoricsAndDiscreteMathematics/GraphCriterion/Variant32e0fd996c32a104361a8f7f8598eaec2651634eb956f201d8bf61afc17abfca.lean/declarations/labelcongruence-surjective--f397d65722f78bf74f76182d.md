# labelCongruence_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e982441-606b-5e1f-e8be-d342ea374be4",
  "kind": "theorem",
  "lexical_name": "labelCongruence_surjective",
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
  "slug": "labelcongruence-surjective--f397d65722f78bf74f76182d",
  "source": {
    "blob": "5a3f88c40aabd2a78eb5cff68d155bf1d6fe3648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 270,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f397d65722f78bf74f76182d38c0ced2c659c10dcfbef06235f11119b49868cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e982441-606b-5e1f-e8be-d342ea374be4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem labelCongruence_surjective [Nonempty Carrier] (color : Carrier → Carrier → Lat)
    (witness : IsGraphWitness color) : Function.Surjective (labelCongruence color witness) := by
  classical
  intro rel
  let seeds : Finset (Carrier × Carrier) := Finset.univ.filter (fun edge => rel edge.1 edge.2)
  have membership : ∀ edge, edge ∈ seeds ↔ rel edge.1 edge.2 := by simp [seeds]
  have nonempty : seeds.Nonempty := by
    obtain ⟨point⟩ := ‹Nonempty Carrier›
    exact ⟨(point, point), (membership _).mpr (rel.refl point)⟩
  refine ⟨seeds.sup (fun edge => color edge.1 edge.2), ?_⟩
  apply Congruence.ext
  intro left right
  constructor
  · intro below
    exact connected_below_congruence color rel seeds
      (fun edge member => (membership edge).mp member)
      (witness.2.2.2.2 seeds nonempty left right below)
  · intro related
    change color left right ≤ seeds.sup (fun edge => color edge.1 edge.2)
    exact Finset.le_sup (f := fun edge : Carrier × Carrier => color edge.1 edge.2)
      ((membership (left, right)).mpr related)

/-- The lattice is isomorphic to the full congruence lattice of the graph algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a3f88c40aabd2a78eb5cff68d155bf1d6fe3648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
