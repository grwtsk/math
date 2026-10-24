# preservesSheafification_of_adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffafa14ae72d5fa079f2ab39f94d8c32b9cc67b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24c73d5efbffa7c919919ba5a5f65db188abc9c3df882ef7e119e1de31f41d80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2bc008cb-da26-45d8-8766-7b58778b2dac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7c23f37-20a6-8cba-900d-9db67d0b306d",
  "kind": "lemma",
  "lexical_name": "preservesSheafification_of_adjunction",
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
  "slug": "preservessheafification-of-adjunction--959edb7c43d777b3a1360a35",
  "source": {
    "blob": "ffafa14ae72d5fa079f2ab39f94d8c32b9cc67b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant24c73d5efbffa7c919919ba5a5f65db188abc9c3df882ef7e119e1de31f41d80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:959edb7c43d777b3a1360a353da59dab73d81ddd44cd730ef71448b7b19de406",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant24c73d5efbffa7c919919ba5a5f65db188abc9c3df882ef7e119e1de31f41d80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7c23f37-20a6-8cba-900d-9db67d0b306d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesSheafification_of_adjunction (adj : G ⊣ F) :
    J.PreservesSheafification G where
  le P Q f hf := by
    have := adj.isRightAdjoint
    rw [MorphismProperty.inverseImage_iff]
    dsimp
    intro R hR
    rw [← ((adj.whiskerRight Cᵒᵖ).homEquiv P R).comp_bijective]
    convert!
      (((adj.whiskerRight Cᵒᵖ).homEquiv Q R).trans
          (hf.homEquiv (R ⋙ F) ((sheafCompose J F).obj ⟨R, hR⟩).property)).bijective
    ext g X
    -- The rest of this proof was
    -- `dsimp [Adjunction.whiskerRight, Adjunction.mkOfUnitCounit]; simp` before https://github.com/leanprover-community/mathlib4/pull/16317.
    dsimp
    rw [← NatTrans.comp_app]
    congr
    exact Adjunction.homEquiv_naturality_left _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant24c73d5efbffa7c919919ba5a5f65db188abc9c3df882ef7e119e1de31f41d80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant24c73d5efbffa7c919919ba5a5f65db188abc9c3df882ef7e119e1de31f41d80.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffafa14ae72d5fa079f2ab39f94d8c32b9cc67b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
