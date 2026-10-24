# add_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f10d185c70019fd37c82da3d09eb906e12ac9bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 775,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecf8988f-d55d-1bab-b1e0-11ce2ef2310e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:521f1693-cb67-c0bc-95ef-0e2c3fb0b017",
  "kind": "lemma",
  "lexical_name": "add_eq_zero",
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
  "slug": "add-eq-zero--67c12968e845f8f023ee5eb6",
  "source": {
    "blob": "2f10d185c70019fd37c82da3d09eb906e12ac9bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 784,
    "line": 775,
    "path": "GRWTSK/Algebra/LinearAlgebra/Point/Variant77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67c12968e845f8f023ee5eb66d609dbcd7865a15b005d9164baad83cbddf428d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Point/Variant77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:521f1693-cb67-c0bc-95ef-0e2c3fb0b017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 775–784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma add_eq_zero (P Q : W.Point) : P + Q = 0 ↔ P = -Q := by
  rcases P, Q with ⟨_ | ⟨x₁, y₁, _⟩, _ | ⟨x₂, y₂, _⟩⟩
  any_goals rfl
  · rw [← zero_def, zero_add, eq_comm (a := 0), neg_eq_iff_eq_neg, neg_zero]
  · rw [neg_some, some.injEq]
    constructor
    · contrapose
      exact fun hxy => by simpa only [add_some hxy] using some_ne_zero _
    · exact fun ⟨hx, hy⟩ => add_of_Y_eq hx hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Point/Variant77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Point/Variant77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean#L775).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f10d185c70019fd37c82da3d09eb906e12ac9bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
