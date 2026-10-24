# MulChar.exists_apply_sub_one_eq_mul_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dd4f091-30e4-1188-7cb7-2a801960407a",
  "kind": "lemma",
  "lexical_name": "MulChar.exists_apply_sub_one_eq_mul_sub_one",
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
  "slug": "mulchar-exists-apply-sub-one-eq-mul-sub-one--a0ca72ae39393c365028dad0",
  "source": {
    "blob": "6e1af8b061b9d202ffe79e2881e13e2e895548a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 258,
    "path": "GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0ca72ae39393c365028dad08767d7ebd15c5c6217f620fb97146c862a47c210",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dd4f091-30e4-1188-7cb7-2a801960407a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MulChar.exists_apply_sub_one_eq_mul_sub_one {n : ℕ} [NeZero n] {χ : MulChar F R} {μ : R}
    (hχ : χ ^ n = 1) (hμ : IsPrimitiveRoot μ n) {x : F} (hx : x ≠ 0) :
    ∃ z ∈ ℤ[μ], χ x - 1 = z * (μ - 1) := by
  obtain ⟨k, _, hk⟩ := exists_apply_eq_pow hχ hμ hx
  refine hk ▸ ⟨(Finset.range k).sum (μ ^ ·), ?_, (geom_sum_mul μ k).symm⟩
  exact Subalgebra.sum_mem _ fun m _ ↦ Subalgebra.pow_mem _ (self_mem_adjoin_singleton _ μ) _

private
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e1af8b061b9d202ffe79e2881e13e2e895548a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
