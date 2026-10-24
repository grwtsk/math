# congr_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "533733eb09bfe43ac2d5a472829bf3da037f8456",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 406,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ed0d81a-27e7-35b4-9270-5f56cd9dee87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a20778d3-633f-685b-26cf-29779120e614",
  "kind": "lemma",
  "lexical_name": "congr_obj",
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
  "slug": "congr-obj--c7df3e814d1b9d2b9f368345",
  "source": {
    "blob": "533733eb09bfe43ac2d5a472829bf3da037f8456",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 406,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7df3e814d1b9d2b9f36834574c36a4fbaaa5f1d27381a6794c139e493edbc5b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a20778d3-633f-685b-26cf-29779120e614`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma congr_obj {j₁ j₂ : J} (iter₁ : Φ.Iteration j₁) (iter₂ : Φ.Iteration j₂)
    (k : J) (h₁ : k ≤ j₁) (h₂ : k ≤ j₂) :
    iter₁.F.obj ⟨k, h₁⟩ = iter₂.F.obj ⟨k, h₂⟩ := by
  wlog h : j₁ ≤ j₂ generalizing j₁ j₂
  · exact (this iter₂ iter₁ h₂ h₁ (le_of_lt (by simpa using h))).symm
  rw [Subsingleton.elim iter₁ (iter₂.trunc h)]
  dsimp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `533733eb09bfe43ac2d5a472829bf3da037f8456` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
