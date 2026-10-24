# one_column_signed_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a149f4e-b4cd-1599-f3fb-6b54b84da115",
  "kind": "theorem",
  "lexical_name": "one_column_signed_expansion",
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
  "slug": "one-column-signed-expansion--358f69c6aaf3ba66fbe0f3d1",
  "source": {
    "blob": "843f31a66253ce123b3508acd9aee9760351d18e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 55,
    "path": "GRWTSK/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:358f69c6aaf3ba66fbe0f3d1eb56f1c0ddcb93dbaf7f5679a6343caae731bd9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a149f4e-b4cd-1599-f3fb-6b54b84da115`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_column_signed_expansion (s : Finset ℕ) (hs : ∀ p ∈ s, p.Prime) (m : ℕ) :
    unitMask (∏ p ∈ s, p) m =
      ∑ t ∈ s.powerset, μ (∏ p ∈ t, p) * ∏ p ∈ t, divisorMask p m := by
  rw [unit_mask_finite_product]
  have hp : (∏ p ∈ s, unitMask p m) = ∏ p ∈ s, (1 - divisorMask p m) :=
    Finset.prod_congr rfl (fun p hp => unit_mask_prime (hs p hp) m)
  rw [hp]
  have hexp := Finset.prod_sub (fun _p : ℕ => (1 : ℤ)) (fun p => divisorMask p m) s
  simp only [Finset.prod_const_one, mul_one] at hexp
  rw [hexp]
  apply Finset.sum_congr rfl
  intro t ht
  rw [subset_mobius_sign t (fun p hp => hs p (Finset.mem_powerset.mp ht hp))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `843f31a66253ce123b3508acd9aee9760351d18e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
