# PreservesLeftKanExtension.mk_of_preserves_isUniversal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e889de03640bc6f74799abfff2a80c6000c8fe0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a89c7d3429d47229aba0027362879c5db01f9922602526c7e2b24b9380cb3bbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61a9b7de-efab-7a83-e940-c1bdd8e14eb2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fbe197b-be26-c243-6496-e7b7631b96bf",
  "kind": "lemma",
  "lexical_name": "PreservesLeftKanExtension.mk_of_preserves_isUniversal",
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
  "slug": "preservesleftkanextension-mk-of-preserves-isuniversal--74991bf05d940d482b3951c8",
  "source": {
    "blob": "e889de03640bc6f74799abfff2a80c6000c8fe0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianta89c7d3429d47229aba0027362879c5db01f9922602526c7e2b24b9380cb3bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74991bf05d940d482b3951c8b221b9535402414785bb24f830f5269d39b22aba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianta89c7d3429d47229aba0027362879c5db01f9922602526c7e2b24b9380cb3bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fbe197b-be26-c243-6496-e7b7631b96bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PreservesLeftKanExtension.mk_of_preserves_isUniversal (E : LeftExtension L F)
    (hE : E.IsUniversal) (h : Nonempty (LeftExtension.postcompose₂ L F G |>.obj E).IsUniversal) :
    G.PreservesLeftKanExtension F L :=
  .mk' G F L fun hE' ↦
    ⟨Limits.IsInitial.equivOfIso
      (LeftExtension.postcompose₂ L F G|>.mapIso <| Limits.IsInitial.uniqueUpToIso hE hE') h.some⟩

attribute [instance] PreservesLeftKanExtension.preserves

/-- `G.PreservesLeftKanExtensionAt F L c` asserts that `G` preserves all pointwise left Kan
extensions of `F` along `L` at the point `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianta89c7d3429d47229aba0027362879c5db01f9922602526c7e2b24b9380cb3bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianta89c7d3429d47229aba0027362879c5db01f9922602526c7e2b24b9380cb3bbe.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e889de03640bc6f74799abfff2a80c6000c8fe0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
