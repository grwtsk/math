# overEquiv_symm_generate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7faa81685bdad49dfefe6e4d7428cc4d5aeeb54c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46ba17b6ed171fefc18877d0d4470e11aea339dc56dbfd4b988266ed0bc43493.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01fe404f-e2a4-8cd6-a82c-73733ca3c40a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2d22ebc-fffb-8581-dbc0-e866e448f167",
  "kind": "lemma",
  "lexical_name": "overEquiv_symm_generate",
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
  "slug": "overequiv-symm-generate--f98dde0dd7720988f3382e15",
  "source": {
    "blob": "7faa81685bdad49dfefe6e4d7428cc4d5aeeb54c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 163,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant46ba17b6ed171fefc18877d0d4470e11aea339dc56dbfd4b988266ed0bc43493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f98dde0dd7720988f3382e1539af3f2197d85095e3211c5fee72ea89d9db50e1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant46ba17b6ed171fefc18877d0d4470e11aea339dc56dbfd4b988266ed0bc43493.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2d22ebc-fffb-8581-dbc0-e866e448f167`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma overEquiv_symm_generate {X : C} {Y : Over X} (R : Presieve Y.left) :
    (overEquiv Y).symm (.generate R) =
      .generate (Presieve.functorPullback (Over.forget X) R) := by
  refine le_antisymm (fun Z g hg ↦ ?_) ?_
  · rw [overEquiv_symm_iff] at hg
    obtain ⟨W, p, q, hq, hpq⟩ := hg
    refine ⟨.mk (q ≫ Y.hom), Over.homMk p (by simp [reassoc_of% hpq]), Over.homMk q rfl, hq, ?_⟩
    ext
    exact hpq
  · rw [generate_le_iff]
    exact fun Z g hg ↦ le_generate _ _ _ hg

set_option backward.defeqAttrib.useBackward true in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant46ba17b6ed171fefc18877d0d4470e11aea339dc56dbfd4b988266ed0bc43493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant46ba17b6ed171fefc18877d0d4470e11aea339dc56dbfd4b988266ed0bc43493.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7faa81685bdad49dfefe6e4d7428cc4d5aeeb54c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
