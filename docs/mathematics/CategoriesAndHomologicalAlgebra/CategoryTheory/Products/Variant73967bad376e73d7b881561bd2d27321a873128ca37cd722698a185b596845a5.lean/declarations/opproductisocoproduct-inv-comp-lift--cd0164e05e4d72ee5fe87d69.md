# opProductIsoCoproduct_inv_comp_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a3249cd7c3a4f17fdb8a750307a9526ae409664",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73967bad376e73d7b881561bd2d27321a873128ca37cd722698a185b596845a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1eca0e04-7488-9952-b3fb-7d6dd0233e7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99e21d7f-20e0-1c01-f02a-9ae51e0833bd",
  "kind": "theorem",
  "lexical_name": "opProductIsoCoproduct_inv_comp_lift",
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
  "slug": "opproductisocoproduct-inv-comp-lift--cd0164e05e4d72ee5fe87d69",
  "source": {
    "blob": "0a3249cd7c3a4f17fdb8a750307a9526ae409664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 283,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant73967bad376e73d7b881561bd2d27321a873128ca37cd722698a185b596845a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd0164e05e4d72ee5fe87d69d1b925a3f1a44fbdd11b7a3ea8eac6271932dda0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant73967bad376e73d7b881561bd2d27321a873128ca37cd722698a185b596845a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99e21d7f-20e0-1c01-f02a-9ae51e0833bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem opProductIsoCoproduct_inv_comp_lift [HasProduct Z] {X : C} (π : (a : α) → X ⟶ Z a) :
    (opProductIsoCoproduct Z).inv ≫ (Pi.lift π).op = Sigma.desc (fun a ↦ (π a).op) := by
  convert!
    opProductIsoCoproduct'_inv_comp_lift (productIsProduct Z) (coproductIsCoproduct (op <| Z ·))
      (Fan.mk _ π)
  · simp [Pi.lift, productIsProduct]
  · simp [coproductIsCoproduct]

end OppositeProducts

section BinaryProducts

variable {A B : C} [HasBinaryProduct A B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant73967bad376e73d7b881561bd2d27321a873128ca37cd722698a185b596845a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant73967bad376e73d7b881561bd2d27321a873128ca37cd722698a185b596845a5.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a3249cd7c3a4f17fdb8a750307a9526ae409664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
