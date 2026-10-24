# ruzsa_triangle_inequality_invMul_invMul_invMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d1d7728b728d2f2abdd0705d8f26f7a316ca206",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7273b701-c55c-f29b-0715-340abd937b2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17c55ae5-b9b8-e671-7628-c8ff80388e5f",
  "kind": "theorem",
  "lexical_name": "ruzsa_triangle_inequality_invMul_invMul_invMul",
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
  "slug": "ruzsa-triangle-inequality-invmul-invmul-invmul--00575aa3c2bfc51a0cf41da0",
  "source": {
    "blob": "8d1d7728b728d2f2abdd0705d8f26f7a316ca206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00575aa3c2bfc51a0cf41da0204981d15c7cd2e7f7ad4690b2f29df0265cad31",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17c55ae5-b9b8-e671-7628-c8ff80388e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ruzsa_triangle_inequality_invMul_invMul_invMul (A B C : Finset G) :
    #B * #(A⁻¹ * C) ≤ #(B⁻¹ * A) * #(B⁻¹ * C) := by
  simpa [mul_comm, div_eq_mul_inv, ← map_op_mul, ← map_op_inv] using
    ruzsa_triangle_inequality_div_div_div (G := Gᵐᵒᵖ) (C.map opEquiv.toEmbedding)
      (B.map opEquiv.toEmbedding) (A.map opEquiv.toEmbedding)


/-- **Ruzsa's triangle inequality**. Div-mul-mul version. -/
@[to_additive "**Ruzsa's triangle inequality**. Sub-add-add version."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d1d7728b728d2f2abdd0705d8f26f7a316ca206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
