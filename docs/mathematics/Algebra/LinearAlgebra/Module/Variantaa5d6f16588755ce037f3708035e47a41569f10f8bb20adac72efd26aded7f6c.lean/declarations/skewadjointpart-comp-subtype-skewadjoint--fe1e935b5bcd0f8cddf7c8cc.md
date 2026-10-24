# skewAdjointPart_comp_subtype_skewAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9405a6eeff22fe7bdfdf18fa2c313984df57277d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aae5a2db-66df-8f70-b74a-139975945b98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92aaee5c-532c-52e9-a44d-b162c6408c9d",
  "kind": "theorem",
  "lexical_name": "skewAdjointPart_comp_subtype_skewAdjoint",
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
  "slug": "skewadjointpart-comp-subtype-skewadjoint--fe1e935b5bcd0f8cddf7c8cc",
  "source": {
    "blob": "9405a6eeff22fe7bdfdf18fa2c313984df57277d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 188,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe1e935b5bcd0f8cddf7c8cccb970664c8ea303d3f7743fad8b79a5fd3405ff7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92aaee5c-532c-52e9-a44d-b162c6408c9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem skewAdjointPart_comp_subtype_skewAdjoint :
    (skewAdjointPart R).comp (skewAdjoint.submodule R A).subtype = .id :=
  LinearMap.ext fun ⟨x, (hx : _ = _)⟩ ↦ Subtype.eq <| by
    simp only [LinearMap.comp_apply, Submodule.subtype_apply, skewAdjointPart_apply_coe, hx,
      sub_neg_eq_add, smul_add, invOf_two_smul_add_invOf_two_smul]; rfl

variable (A)

/-- The decomposition of elements of a star module into their self- and skew-adjoint parts,
as a linear equivalence. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9405a6eeff22fe7bdfdf18fa2c313984df57277d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
