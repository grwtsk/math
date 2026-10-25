# ofProp_or

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec2438d37db7e11847879fa146f3c0ead31b0bdd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/4318cd5c4ad9f13cf4331efc34c611d6f699fcd65f21bd5d8c2e40b01d26d1a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfe5bb6e-7490-a600-6950-a9fafccbd356",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:376fbb0f-fb36-6e51-7a40-3e1499d8a47f",
  "kind": "theorem",
  "lexical_name": "ofProp_or",
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
  "slug": "ofprop-or--f181bfad67616e36be2c68fa",
  "source": {
    "blob": "ec2438d37db7e11847879fa146f3c0ead31b0bdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 229,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant4318cd5c4ad9f13cf4331efc34c611d6f699fcd65f21bd5d8c2e40b01d26d1a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f181bfad67616e36be2c68fa8552d3447103a73a856dd33f8d25200bc0f50b0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant4318cd5c4ad9f13cf4331efc34c611d6f699fcd65f21bd5d8c2e40b01d26d1a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:376fbb0f-fb36-6e51-7a40-3e1499d8a47f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofProp_or {φ₁ φ₂ : Prop} : (⌜φ₁⌝ : l) ⊔ ⌜φ₂⌝ = ⌜φ₁ ∨ φ₂⌝ := by
  apply rel_antisymm
  · exact join_le _ _ _ (ofProp_mono Or.inl) (ofProp_mono Or.inr)
  · rw [CompleteLattice.ofProp_intro]
    rintro (h₁ | h₂)
    · rw [ofProp_eq_top h₁]
      exact left_le_join _ _
    · rw [ofProp_eq_top h₂]
      exact right_le_join _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant4318cd5c4ad9f13cf4331efc34c611d6f699fcd65f21bd5d8c2e40b01d26d1a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant4318cd5c4ad9f13cf4331efc34c611d6f699fcd65f21bd5d8c2e40b01d26d1a1.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec2438d37db7e11847879fa146f3c0ead31b0bdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
