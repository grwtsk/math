# mk₀Inv_comp_mk₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbcdcee0cdbd2e4ebc8498110925665c4cff8d90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9c0c227157df463ac23ceface19d197beaa61bc8ed9eaca34b8017b088115d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84eca822-59c4-7ff7-29aa-67c8d9072a54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a26087fb-3d8e-a4d9-3cc2-0d485ea4d8a0",
  "kind": "lemma",
  "lexical_name": "mk₀Inv_comp_mk₀",
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
  "slug": "mk-inv-comp-mk--35634249d43a9ddf72cb5d3c",
  "source": {
    "blob": "bbcdcee0cdbd2e4ebc8498110925665c4cff8d90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variantc9c0c227157df463ac23ceface19d197beaa61bc8ed9eaca34b8017b088115d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35634249d43a9ddf72cb5d3c141cb83b86515770c2602b00fe3336775abff0ed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variantc9c0c227157df463ac23ceface19d197beaa61bc8ed9eaca34b8017b088115d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a26087fb-3d8e-a4d9-3cc2-0d485ea4d8a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk₀Inv_comp_mk₀ {X Y : C} [HasSmallLocalizedShiftedHom.{w} W M X Y]
    [HasSmallLocalizedShiftedHom.{w} W M X X]
    [HasSmallLocalizedShiftedHom.{w} W M Y X] [W.IsCompatibleWithShift M] [W.RespectsIso]
    (m₀ : M) (hm₀ : m₀ = 0) (f : Y ⟶ X) (hf : W f) :
    (mk₀Inv m₀ hm₀ f hf).comp (mk₀ W m₀ hm₀ f) (by subst hm₀; simp) =
      mk₀ W m₀ hm₀ (𝟙 X) :=
  (equiv W W.Q).injective (by simp [equiv_comp])

variable {W} in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variantc9c0c227157df463ac23ceface19d197beaa61bc8ed9eaca34b8017b088115d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variantc9c0c227157df463ac23ceface19d197beaa61bc8ed9eaca34b8017b088115d8.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbcdcee0cdbd2e4ebc8498110925665c4cff8d90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
