# geodesicArborescence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f75f457eb40ef4701f2d3e4c6983b085e294f6515061971279a48976b61a7ae",
  "kind": "instance",
  "lexical_name": "geodesicArborescence",
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
  "slug": "geodesicarborescence--4ef0b1acf5ecda2eda562a2a",
  "source": {
    "blob": "6c3618c088d2dc87b55711501d976090a0e0e943",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ef0b1acf5ecda2eda562a2a9f7ce3d4609bcb5b5286188c961c1d3182311b43",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f75f457eb40ef4701f2d3e4c6983b085e294f6515061971279a48976b61a7ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance geodesicArborescence : Arborescence (geodesicSubtree r) :=
  arborescenceMk r (fun a => (shortestPath r a).length)
    (by
      rintro a b ⟨e, p, h⟩
      simp_rw [h, Path.length_cons, Nat.lt_succ_iff]
      apply shortest_path_spec)
    (by
      rintro a b c ⟨e, p, h⟩ ⟨f, q, j⟩
      cases h.symm.trans j
      constructor <;> rfl)
    (by
      intro b
      rcases hp : shortestPath r b with (_ | ⟨p, e⟩)
      · exact Or.inl rfl
      · exact Or.inr ⟨_, ⟨⟨e, p, hp⟩⟩⟩)

end GeodesicSubtree

end Quiver
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3618c088d2dc87b55711501d976090a0e0e943` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
