# add_le_add_right'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c586cfcc673384611c1256aa8fcc234322ca2517",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1738,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c74303ea-6dbe-a7c4-4f7c-d84bfe90652a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f616990a-7456-de58-37cd-3cc0db26e4e1",
  "kind": "theorem",
  "lexical_name": "add_le_add_right'",
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
  "slug": "add-le-add-right--b598ef80eb38b378e1aac1cc",
  "source": {
    "blob": "c586cfcc673384611c1256aa8fcc234322ca2517",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1758,
    "line": 1738,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b598ef80eb38b378e1aac1cc9084a819cd1fc3266884f66d8c5a4d3191a46b11",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f616990a-7456-de58-37cd-3cc0db26e4e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1738–1758.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem add_le_add_right' : ∀ {x y z : PGame}, x ≤ y → x + z ≤ y + z
  | mk xl xr xL xR, mk yl yr yL yR, mk zl zr zL zR => fun h => by
    refine' le_def.2 ⟨fun i => _, fun i => _⟩ <;> cases' i with i i
    · rw [le_def] at h
      cases' h with h_left h_right
      rcases h_left i with (⟨i', ih⟩ | ⟨j, jh⟩)
      · exact Or.inl ⟨toLeftMovesAdd (Sum.inl i'), add_le_add_right' ih⟩
      · refine' Or.inr ⟨toRightMovesAdd (Sum.inl j), _⟩
        convert add_le_add_right' jh
        apply add_moveRight_inl
    · exact Or.inl ⟨@toLeftMovesAdd _ ⟨_, _, _, _⟩ (Sum.inr i), add_le_add_right' h⟩
    · rw [le_def] at h
      rcases h.right i with (⟨i, ih⟩ | ⟨j', jh⟩)
      · refine' Or.inl ⟨toLeftMovesAdd (Sum.inl i), _⟩
        convert add_le_add_right' ih
        apply add_moveLeft_inl
      · exact Or.inr ⟨toRightMovesAdd (Sum.inl j'), add_le_add_right' jh⟩
    · exact
        Or.inr ⟨@toRightMovesAdd _ ⟨_, _, _, _⟩ (Sum.inr i), add_le_add_right' h⟩
termination_by _ x y z => (x, y, z)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean#L1738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c586cfcc673384611c1256aa8fcc234322ca2517` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
