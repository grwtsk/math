# ruzsa_triangle_inequality_div_div_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35ac887b-6bb4-9e50-f568-7e17f85e03b9",
  "kind": "theorem",
  "lexical_name": "ruzsa_triangle_inequality_div_div_div",
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
  "slug": "ruzsa-triangle-inequality-div-div-div--1e91d2d127a66e3a011e01a2",
  "source": {
    "blob": "9287c2dd07ecfe8a770ebfb7b40a6c06d4102111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e91d2d127a66e3a011e01a26214ef5afe02c61c5c4f74b82d90565e6c2174c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35ac887b-6bb4-9e50-f568-7e17f85e03b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ruzsa_triangle_inequality_div_div_div (A B C : Finset G) :
    #(A / C) * #B ≤ #(A / B) * #(C / B) := by
  rw [← card_product (A / B), ← mul_one #((A / B) ×ˢ (C / B))]
  refine card_mul_le_card_mul (fun b (a, c) ↦ a / c = b) (fun x hx ↦ ?_)
    fun x _ ↦ card_le_one_iff.2 fun hu hv ↦
      ((mem_bipartiteBelow _).1 hu).2.symm.trans ?_
  · obtain ⟨a, ha, c, hc, rfl⟩ := mem_div.1 hx
    refine card_le_card_of_injOn (fun b ↦ (a / b, c / b)) (fun b hb ↦ ?_) fun b₁ _ b₂ _ h ↦ ?_
    · rw [mem_bipartiteAbove]
      exact ⟨mk_mem_product (div_mem_div ha hb) (div_mem_div hc hb), div_div_div_cancel_right ..⟩
    · exact div_right_injective (Prod.ext_iff.1 h).1
  · exact ((mem_bipartiteBelow _).1 hv).2

/-- **Ruzsa's triangle inequality**. Mulinv-mulinv-mulinv version. -/
@[to_additive "**Ruzsa's triangle inequality**. Addneg-addneg-addneg version."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9287c2dd07ecfe8a770ebfb7b40a6c06d4102111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
