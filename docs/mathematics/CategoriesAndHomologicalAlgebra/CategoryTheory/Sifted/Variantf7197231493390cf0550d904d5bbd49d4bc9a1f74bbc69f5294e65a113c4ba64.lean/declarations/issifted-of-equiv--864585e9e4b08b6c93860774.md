# isSifted_of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbf29363440320acf8fe8716f10609fa136dac38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:defba09d-1219-0d9c-f49c-0f9f05948e24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d11dc44c-1f6c-0ca8-618e-b51764ddf36c",
  "kind": "lemma",
  "lexical_name": "isSifted_of_equiv",
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
  "slug": "issifted-of-equiv--864585e9e4b08b6c93860774",
  "source": {
    "blob": "bbf29363440320acf8fe8716f10609fa136dac38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:864585e9e4b08b6c93860774e8905193a196897b06e527706089b57f9fa4b731",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d11dc44c-1f6c-0ca8-618e-b51764ddf36c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSifted_of_equiv [IsSifted C] {D : Type u₁} [Category.{v₁} D] (e : D ≌ C) : IsSifted D :=
  letI : Final (diag D) := by
    let : D × D ≌ C × C := Equivalence.prod e e
    have sq : (e.inverse ⋙ diag D ⋙ this.functor ≅ diag C) :=
        NatIso.ofComponents (fun c ↦ by dsimp [this]
                                        exact Iso.prod (e.counitIso.app c) (e.counitIso.app c))
    apply_rules [final_iff_comp_equivalence _ this.functor |>.mpr,
      final_iff_final_comp e.inverse _ |>.mpr, final_of_natIso sq.symm]
  letI : _root_.Nonempty D := ⟨e.inverse.obj (_root_.Nonempty.some IsSifted.nonempty)⟩
  ⟨⟩

/-- In particular a category is sifted iff and only if it is so when viewed as a small category -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf29363440320acf8fe8716f10609fa136dac38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
