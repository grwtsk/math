# matching_id_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b1ba50ffb78e7492c58eec2fea7836045fb759b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1876,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21707e27-7f0d-260a-b087-68a94c5681a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:837504c8-4ce3-5482-c06c-98b84bba486a",
  "kind": "theorem",
  "lexical_name": "matching_id_mem_iff",
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
  "slug": "matching-id-mem-iff--ea4c96ca4c7728cf6e4a54ea",
  "source": {
    "blob": "3b1ba50ffb78e7492c58eec2fea7836045fb759b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1914,
    "line": 1876,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea4c96ca4c7728cf6e4a54ea5cb5d3a76bf1857b12225e1bb5cfc58309f94cfb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:837504c8-4ce3-5482-c06c-98b84bba486a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1876–1914.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matching_id_mem_iff
    (J : GrothendieckTopology C)
    {X : C.Obj}
    {R : Sieve C X}
    (m : MatchingFamily (OmegaPredicatePresheaf J) R)
    {Y Z : C.Obj}
    (f : C.Hom Y X)
    (hf : R.arrows Y f)
    (g : C.Hom Z Y) :
    (m.sectionAt
        (C.comp g f)
        (R.downwardClosed f g hf)).sieve.arrows Z (C.id Z)
      ↔
    (m.sectionAt f hf).sieve.arrows Z g := by
  have heq :=
    matching_pullback_sieve
      (J := J)
      m
      f
      hf
      g
  constructor
  · intro hid
    have hid' :
        (Sieve.pullback (m.sectionAt f hf).sieve g).arrows Z (C.id Z) := by
      simpa [heq] using hid
    change
      (m.sectionAt f hf).sieve.arrows Z
        (C.comp (C.id Z) g) at hid'
    simpa [C.id_comp g] using hid'
  · intro hg
    have hid' :
        (Sieve.pullback (m.sectionAt f hf).sieve g).arrows Z (C.id Z) := by
      change
        (m.sectionAt f hf).sieve.arrows Z
          (C.comp (C.id Z) g)
      simpa [C.id_comp g] using hg
    simpa [heq] using hid'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean#L1876).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b1ba50ffb78e7492c58eec2fea7836045fb759b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
