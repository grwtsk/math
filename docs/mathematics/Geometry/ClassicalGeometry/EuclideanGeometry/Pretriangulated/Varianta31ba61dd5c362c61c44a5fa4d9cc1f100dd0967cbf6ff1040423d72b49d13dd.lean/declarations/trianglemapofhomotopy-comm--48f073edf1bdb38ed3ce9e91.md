# triangleMapOfHomotopy_comm₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f717c56b307f453a9753554abd9725284f07413a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efc72259-8809-0743-861d-cc02c0adaa73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18de52a1-3912-7428-93e7-c01bfb2534cf",
  "kind": "lemma",
  "lexical_name": "triangleMapOfHomotopy_comm₃",
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
  "slug": "trianglemapofhomotopy-comm--48f073edf1bdb38ed3ce9e91",
  "source": {
    "blob": "f717c56b307f453a9753554abd9725284f07413a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 106,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48f073edf1bdb38ed3ce9e91d2ee61e1a0fbf0a9b443ac1448809267ac7f7ca9",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18de52a1-3912-7428-93e7-c01bfb2534cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma triangleMapOfHomotopy_comm₃ :
    mapOfHomotopy H ≫ (triangle φ₂).mor₃ = (triangle φ₁).mor₃ ≫ a⟦1⟧' := by
  ext p
  dsimp [mapOfHomotopy, triangle]
  -- the following list of lemmas as been obtained by doing
  -- simp? [ext_from_iff _ _ _ rfl, Cochain.rightShift_v _ 1 0 _ p p _ (p + 1) rfl]
  simp only [Int.reduceNeg, Cochain.rightShift_neg, Cochain.neg_v, shiftFunctor_obj_X',
    Cochain.rightShift_v _ 1 0 _ p p _ (p + 1) rfl, shiftFunctor_obj_X, shiftFunctorObjXIso,
    HomologicalComplex.XIsoOfEq_rfl, Iso.refl_inv, comp_id, Preadditive.comp_neg,
    Preadditive.neg_comp, ext_from_iff _ _ _ rfl, inl_v_desc_f_assoc, Cochain.add_v,
    Cochain.zero_cochain_comp_v, Cochain.ofHom_v, Cochain.comp_zero_cochain_v, Preadditive.add_comp,
    assoc, inl_v_fst_v, inr_f_fst_v, comp_zero, add_zero, inl_v_fst_v_assoc, inr_f_desc_f_assoc,
    HomologicalComplex.comp_f, neg_zero, inr_f_fst_v_assoc, zero_comp, and_self]

/-- The morphism `triangleh φ₁ ⟶ triangleh φ₂` that is induced by a square that
is commutative up to homotopy. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f717c56b307f453a9753554abd9725284f07413a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
