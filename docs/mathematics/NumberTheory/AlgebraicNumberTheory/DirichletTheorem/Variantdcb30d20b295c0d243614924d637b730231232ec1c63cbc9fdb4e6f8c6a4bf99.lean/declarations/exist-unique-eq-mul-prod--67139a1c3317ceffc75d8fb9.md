# exist_unique_eq_mul_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66e59771eb655041fc341a01186f6754b23ff81e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d8c4c17-af57-4131-53ef-3c189b4f2c8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8050077-4868-87d1-92fe-a9641c9dc103",
  "kind": "theorem",
  "lexical_name": "exist_unique_eq_mul_prod",
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
  "slug": "exist-unique-eq-mul-prod--67139a1c3317ceffc75d8fb9",
  "source": {
    "blob": "66e59771eb655041fc341a01186f6754b23ff81e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 484,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67139a1c3317ceffc75d8fb9dcba6f9cb1b38afcf2b584a70f2ce32d5a5a5df7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8050077-4868-87d1-92fe-a9641c9dc103`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exist_unique_eq_mul_prod (x : (𝓞 K)ˣ) : ∃! ζe : torsion K × (Fin (rank K) → ℤ),
    x = ζe.1 * ∏ i, (fundSystem K i) ^ (ζe.2 i) := by
  let ζ := x * (∏ i, (fundSystem K i) ^ ((basisModTorsion K).repr (Additive.ofMul ↑x) i))⁻¹
  have h_tors : ζ ∈ torsion K := by
    rw [← QuotientGroup.eq_one_iff, QuotientGroup.mk_mul, QuotientGroup.mk_inv, ← ofMul_eq_zero,
      ofMul_mul, ofMul_inv, QuotientGroup.mk_prod, ofMul_prod]
    simp_rw [QuotientGroup.mk_zpow, ofMul_zpow, fundSystem, QuotientGroup.out_eq']
    rw [add_eq_zero_iff_eq_neg, neg_neg]
    exact ((basisModTorsion K).sum_repr (Additive.ofMul ↑x)).symm
  refine ⟨⟨⟨ζ, h_tors⟩, ((basisModTorsion K).repr (Additive.ofMul ↑x) : Fin (rank K) → ℤ)⟩, ?_, ?_⟩
  · simp only [ζ, _root_.inv_mul_cancel_right]
  · rintro ⟨⟨ζ', h_tors'⟩, η⟩ hf
    simp only [ζ, ← fun_eq_repr K h_tors' hf, Prod.mk.injEq, Subtype.mk.injEq, and_true]
    nth_rewrite 1 [hf]
    rw [_root_.mul_inv_cancel_right]

end statements

end NumberField.Units
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66e59771eb655041fc341a01186f6754b23ff81e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
