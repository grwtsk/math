# instPreInnerProductSpaceCoreH₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c3fd61c77af4fad11c9c18eb47463e97a22489c67a7b85bf57989e512fc143e",
  "kind": "instance",
  "lexical_name": "instPreInnerProductSpaceCoreH₀",
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
  "slug": "instpreinnerproductspacecoreh--8230bc8a62e0449118ec2808",
  "source": {
    "blob": "8813c268d018faaad6fd110801a41dd59228481a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 294,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant8045d34735b313a61ee6a2d474762b53b335ebb5e8d3495450c8e20abce6ef5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8230bc8a62e0449118ec2808bb6acd2fbf07716937a291937202536522e5fc55",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reproducing/Variant8045d34735b313a61ee6a2d474762b53b335ebb5e8d3495450c8e20abce6ef5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c3fd61c77af4fad11c9c18eb47463e97a22489c67a7b85bf57989e512fc143e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instPreInnerProductSpaceCoreH₀ : PreInnerProductSpace.Core 𝕜 (H₀ K) where
  inner f g := f.sum fun ⟨y, u⟩ z ↦ g.sum fun ⟨x, v⟩ w ↦ star z * w * ⟪K x y u, v⟫_𝕜
  conj_inner_symm f g := by
    rw [Finsupp.sum_comm]
    simp only [map_finsuppSum]
    congr! 6
    rw [← (Fact.out : K.PosSemidef).isHermitian.apply]
    simp [star, adjoint_inner_right, mul_comm]
  add_left _ _ _ := by
    rw [Finsupp.sum_add_index'] <;> simp [← Finsupp.sum_add, add_mul]
  smul_left _ _ _ := by
    rw [Finsupp.sum_smul_index] <;> simp [Finsupp.mul_sum, ← mul_assoc]
  re_inner_nonneg := (Fact.out : K.PosSemidef).re_sum_kernel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reproducing/Variant8045d34735b313a61ee6a2d474762b53b335ebb5e8d3495450c8e20abce6ef5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant8045d34735b313a61ee6a2d474762b53b335ebb5e8d3495450c8e20abce6ef5a.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8813c268d018faaad6fd110801a41dd59228481a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
