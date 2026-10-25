# toAffine_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9c642d6fa3a8d4861ca9e29fb3d9986aafcc7ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 485,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65dcf069-d604-edd3-fa29-61a94f3d5a62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80a3bed8-f3f3-ba56-7b5f-e060d1348352",
  "kind": "lemma",
  "lexical_name": "toAffine_add",
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
  "slug": "toaffine-add--02c510ecf556c09a22459fe2",
  "source": {
    "blob": "e9c642d6fa3a8d4861ca9e29fb3d9986aafcc7ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 485,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02c510ecf556c09a22459fe2fc17a8271810315f3f510477838ab0188d776874",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80a3bed8-f3f3-ba56-7b5f-e060d1348352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toAffine_add {P Q : Fin 3 → F} (hP : W.Nonsingular P) (hQ : W.Nonsingular Q) :
    toAffine W (W.add P Q) = toAffine W P + toAffine W Q := by
  by_cases hPz : P z = 0
  · rw [toAffine_of_Z_eq_zero hPz, zero_add]
    by_cases hQz : Q z = 0
    · rw [add_of_Z_eq_zero hP hQ hPz hQz, toAffine_smul _ <| (isUnit_Y_of_Z_eq_zero hP hPz).pow 4,
        toAffine_zero, toAffine_of_Z_eq_zero hQz]
    · rw [add_of_Z_eq_zero_left hP.left hPz hQz,
        toAffine_smul _ <| ((isUnit_Y_of_Z_eq_zero hP hPz).pow 2).mul <| Ne.isUnit hQz]
  · by_cases hQz : Q z = 0
    · rw [add_of_Z_eq_zero_right hQ.left hPz hQz,
        toAffine_smul _ (((isUnit_Y_of_Z_eq_zero hQ hQz).pow 2).mul <| Ne.isUnit hPz).neg,
        toAffine_of_Z_eq_zero hQz, add_zero]
    · by_cases hxy : P x * Q z = Q x * P z ∧ P y * Q z = W.negY Q * P z
      · rw [toAffine_of_Z_ne_zero hP hPz, toAffine_of_Z_ne_zero hQ hQz, Affine.Point.add_of_Y_eq
            ((X_eq_iff hPz hQz).mp hxy.left) ((Y_eq_iff' hPz hQz).mp hxy.right)]
        by_cases hy : P y * Q z = Q y * P z
        · rw [add_of_Y_eq hP.left hPz hQz hxy.left hy hxy.right,
            toAffine_smul _ <| isUnit_dblU_of_Y_eq hP hPz hQz hxy.left hy hxy.right, toAffine_zero]
        · rw [add_of_Y_ne hP.left hQ.left hPz hQz hxy.left hy,
            toAffine_smul _ <| isUnit_addU_of_Y_ne hPz hQz hy, toAffine_zero]
      · have := toAffine_add_of_Z_ne_zero hP hQ hPz hQz hxy
        by_cases hx : P x * Q z = Q x * P z
        · rwa [add_of_Y_ne' hP.left hQ.left hPz hQz hx <| not_and.mp hxy hx,
            toAffine_smul _ <| isUnit_dblZ_of_Y_ne' hP.left hQ.left hPz hQz hx <| not_and.mp hxy hx]
        · rwa [add_of_X_ne hP.left hQ.left hPz hQz hx,
            toAffine_smul _ <| isUnit_addZ_of_X_ne hP.left hQ.left hx]

/-- The natural map from a nonsingular projective point on a Weierstrass curve `W` to its
corresponding nonsingular point in affine coordinates.

If `hP` is the nonsingular condition underlying a nonsingular projective point `P` on `W`, then
`toAffineLift ⟨hP⟩` is definitionally equivalent to `toAffine W P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9c642d6fa3a8d4861ca9e29fb3d9986aafcc7ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
