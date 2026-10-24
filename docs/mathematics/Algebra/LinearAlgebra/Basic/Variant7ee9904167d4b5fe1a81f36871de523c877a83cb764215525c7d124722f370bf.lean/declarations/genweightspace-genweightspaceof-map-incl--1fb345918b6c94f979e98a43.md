# genWeightSpace_genWeightSpaceOf_map_incl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ec2915202ded868d35553e0e3b567102de51807",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 579,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:574be187-1643-c2f4-97f1-15878a509460",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34aa36cb-e361-b79e-5cb9-9477f638ef59",
  "kind": "lemma",
  "lexical_name": "genWeightSpace_genWeightSpaceOf_map_incl",
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
  "slug": "genweightspace-genweightspaceof-map-incl--1fb345918b6c94f979e98a43",
  "source": {
    "blob": "4ec2915202ded868d35553e0e3b567102de51807",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 579,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fb345918b6c94f979e98a4322a1055716b7d02d6fc0a3ea9e688050100b3668",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34aa36cb-e361-b79e-5cb9-9477f638ef59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma genWeightSpace_genWeightSpaceOf_map_incl (x : L) (χ : L → R) :
    (genWeightSpace (genWeightSpaceOf M (χ x) x) χ).map (genWeightSpaceOf M (χ x) x).incl =
    genWeightSpace M χ := by
  simpa [map_genWeightSpace_eq_of_injective (genWeightSpaceOf M (χ x) x).injective_incl]
    using genWeightSpace_le_genWeightSpaceOf M x χ

end map_comap

section fitting_decomposition

variable [IsNoetherian R M] [IsArtinian R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ec2915202ded868d35553e0e3b567102de51807` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
