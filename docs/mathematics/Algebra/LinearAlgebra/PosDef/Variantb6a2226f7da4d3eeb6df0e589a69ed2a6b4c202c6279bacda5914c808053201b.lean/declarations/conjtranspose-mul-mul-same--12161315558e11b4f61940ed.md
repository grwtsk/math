# conjTranspose_mul_mul_same

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29b799c847e2d6ffe174c1c4d10fee095374ce2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 476,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:041b21c0-222b-d430-d7c5-e802fe41712f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3656b688-3938-908e-1f15-1c6caefec741",
  "kind": "lemma",
  "lexical_name": "conjTranspose_mul_mul_same",
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
  "slug": "conjtranspose-mul-mul-same--12161315558e11b4f61940ed",
  "source": {
    "blob": "29b799c847e2d6ffe174c1c4d10fee095374ce2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 476,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12161315558e11b4f61940ed08d038a15bef32af9617f5abc95bed921b466be7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3656b688-3938-908e-1f15-1c6caefec741`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma conjTranspose_mul_mul_same {A : Matrix n n R} {B : Matrix n m R} (hA : A.PosDef)
    (hB : Function.Injective B.mulVec) :
    (Bᴴ * A * B).PosDef := by
  refine ⟨Matrix.isHermitian_conjTranspose_mul_mul _ hA.1, fun x hx => ?_⟩
  have : B *ᵥ x ≠ 0 := fun h => hx <| hB.eq_iff' (mulVec_zero _) |>.1 h
  simpa only [star_mulVec, dotProduct_mulVec, vecMul_vecMul] using hA.2 _ this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29b799c847e2d6ffe174c1c4d10fee095374ce2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
