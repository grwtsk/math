# realize_formula_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "959aafe50f541f4915c2e1332da4e252d9073c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a62a55a0b10f812a35bfda5783bd70503abf5c8d1636c0830b40e9638d109c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05c05749-7406-f3be-0924-88dd2c6508d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e7fcdc6-54f7-1ea5-bb10-34f9e7b7cbf5",
  "kind": "theorem",
  "lexical_name": "realize_formula_top",
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
  "slug": "realize-formula-top--b4d8c439bdab4006b45df6f2",
  "source": {
    "blob": "959aafe50f541f4915c2e1332da4e252d9073c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 365,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant3a62a55a0b10f812a35bfda5783bd70503abf5c8d1636c0830b40e9638d109c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d8c439bdab4006b45df6f2a09683d02d29f675c20f9d4f08606e1f6c29a5e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant3a62a55a0b10f812a35bfda5783bd70503abf5c8d1636c0830b40e9638d109c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e7fcdc6-54f7-1ea5-bb10-34f9e7b7cbf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realize_formula_top {α : Type*} {φ : L.Formula α} {v : α → (⊤ : L.Substructure M)} :
    φ.Realize v ↔ φ.Realize (((↑) : (⊤ : L.Substructure M) → M) ∘ v) := by
  rw [← Substructure.topEquiv.realize_formula φ]
  simp
#align first_order.language.substructure.realize_formula_top FirstOrder.Language.Substructure.realize_formula_top

/-- A substructure is elementary when every formula applied to a tuple in the subtructure
  agrees with its value in the overall structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant3a62a55a0b10f812a35bfda5783bd70503abf5c8d1636c0830b40e9638d109c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant3a62a55a0b10f812a35bfda5783bd70503abf5c8d1636c0830b40e9638d109c4.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959aafe50f541f4915c2e1332da4e252d9073c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
