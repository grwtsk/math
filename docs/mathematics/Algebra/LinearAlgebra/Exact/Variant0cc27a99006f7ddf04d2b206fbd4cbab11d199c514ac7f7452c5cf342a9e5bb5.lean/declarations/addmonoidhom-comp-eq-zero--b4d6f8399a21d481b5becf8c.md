# addMonoidHom_comp_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a63dc54c692c7c3be8f04ba5eff3450ffcd9c5d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:813a3ffa-3237-14fa-3ed3-5180962040a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb0f8520-0e34-2cc6-887c-54f9220dd140",
  "kind": "lemma",
  "lexical_name": "addMonoidHom_comp_eq_zero",
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
  "slug": "addmonoidhom-comp-eq-zero--b4d6f8399a21d481b5becf8c",
  "source": {
    "blob": "2a63dc54c692c7c3be8f04ba5eff3450ffcd9c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 163,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d6f8399a21d481b5becf8c2851c72a164c002034f813e317444b385841e05c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb0f8520-0e34-2cc6-887c-54f9220dd140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addMonoidHom_comp_eq_zero (h : Exact f g) : g.comp f = 0 :=
  DFunLike.coe_injective h.comp_eq_zero

section

variable {X₁ X₂ X₃ Y₁ Y₂ Y₃ : Type*} [AddCommMonoid X₁] [AddCommMonoid X₂] [AddCommMonoid X₃]
  [AddCommMonoid Y₁] [AddCommMonoid Y₂] [AddCommMonoid Y₃]
  (e₁ : X₁ ≃+ Y₁) (e₂ : X₂ ≃+ Y₂) (e₃ : X₃ ≃+ Y₃)
  {f₁₂ : X₁ →+ X₂} {f₂₃ : X₂ →+ X₃} {g₁₂ : Y₁ →+ Y₂} {g₂₃ : Y₂ →+ Y₃}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a63dc54c692c7c3be8f04ba5eff3450ffcd9c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
