# Over.changeProp_obj_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9ed750bc5ba48fd64d0d9b5373353575df2584f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 685,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e263a4cd73fbe9358bf0bb51c1f6a6ccd989246f9ee7767a176b75913d74790.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33ee2fbb-ba15-2b09-94b8-4dcf574ba7c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df84cbb2-2dc4-9d98-e2ce-8277ce337095",
  "kind": "lemma",
  "lexical_name": "Over.changeProp_obj_hom",
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
  "slug": "over-changeprop-obj-hom--6842647e9dc104c2209068dd",
  "source": {
    "blob": "b9ed750bc5ba48fd64d0d9b5373353575df2584f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 697,
    "line": 685,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant1e263a4cd73fbe9358bf0bb51c1f6a6ccd989246f9ee7767a176b75913d74790.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6842647e9dc104c2209068dd68a0d0591c97c8b20f399389d7b71fa3bf00ea72",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant1e263a4cd73fbe9358bf0bb51c1f6a6ccd989246f9ee7767a176b75913d74790.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df84cbb2-2dc4-9d98-e2ce-8277ce337095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 685–697.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Over.changeProp_obj_hom (hPP' : P ≤ P') (hQQ' : Q ≤ Q') (Y : P.Over Q X) :
    ((changeProp X hPP' hQQ').obj Y).hom = Y.hom := rfl

end

end Over

section Under

variable {T : Type*} [Category* T] (P Q : MorphismProperty T) (X : T) [Q.IsMultiplicative]

/-- Given a morphism property `P` on a category `T` and an object `X : T`, this is the
subcategory of `Under X` defined by `P` where morphisms satisfy `Q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant1e263a4cd73fbe9358bf0bb51c1f6a6ccd989246f9ee7767a176b75913d74790.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant1e263a4cd73fbe9358bf0bb51c1f6a6ccd989246f9ee7767a176b75913d74790.lean#L685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9ed750bc5ba48fd64d0d9b5373353575df2584f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
