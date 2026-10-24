# homotopyEquivalences_shortComplexG_iff_of_splitting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9002e5365fcf067bffe215822bbd4c1bafde08f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c29d7929a5519dabbddfb37d8317f2007db459eeede3b2e0f336ac8ac0857df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c123c7b-0f8f-41c2-a138-515f93903029",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de7d01c6-e8d7-12e2-7145-8b3cab73e6dc",
  "kind": "lemma",
  "lexical_name": "homotopyEquivalences_shortComplexG_iff_of_splitting",
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
  "slug": "homotopyequivalences-shortcomplexg-iff-of-splitting--b8e08fd21a679cbdc0417a1f",
  "source": {
    "blob": "f9002e5365fcf067bffe215822bbd4c1bafde08f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 257,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5c29d7929a5519dabbddfb37d8317f2007db459eeede3b2e0f336ac8ac0857df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8e08fd21a679cbdc0417a1f03d09faddb88d133f860b407c73a4ab539a98ba1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5c29d7929a5519dabbddfb37d8317f2007db459eeede3b2e0f336ac8ac0857df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de7d01c6-e8d7-12e2-7145-8b3cab73e6dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homotopyEquivalences_shortComplexG_iff_of_splitting [HasZeroObject C]
    (σ : ∀ n, (S.map (eval _ _ n)).Splitting) :
    homotopyEquivalences _ _ S.g ↔ Nonempty (Homotopy (𝟙 S.X₁) 0) := by
  rw [← HomotopyCategory.isZero_quotient_obj_iff,
    ← isIso_quotient_map_iff_homotopyEquivalences]
  exact (Triangle.isZero₁_iff_isIso₂ _ (trianglehOfDegreewiseSplit_distinguished S σ)).symm

end CochainComplex

namespace HomotopyCategory

variable [HasZeroObject C] [HasBinaryBiproducts C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5c29d7929a5519dabbddfb37d8317f2007db459eeede3b2e0f336ac8ac0857df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5c29d7929a5519dabbddfb37d8317f2007db459eeede3b2e0f336ac8ac0857df.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9002e5365fcf067bffe215822bbd4c1bafde08f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
