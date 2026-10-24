# labelCongruence_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "387da74301a6d0c732da87a655888df988a3ad22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e79f3e2-600f-54a0-4abd-5fe111ffa8dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a59214bf-7f33-390d-049e-fdea5d6e8bfa",
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
  "slug": "labelcongruence-surjective--b871c226d25d9741fca736e4",
  "source": {
    "blob": "387da74301a6d0c732da87a655888df988a3ad22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 262,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b871c226d25d9741fca736e4a201a657bc707d4e42551062ff6bfb6d45097563",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a59214bf-7f33-390d-049e-fdea5d6e8bfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–284.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `387da74301a6d0c732da87a655888df988a3ad22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
