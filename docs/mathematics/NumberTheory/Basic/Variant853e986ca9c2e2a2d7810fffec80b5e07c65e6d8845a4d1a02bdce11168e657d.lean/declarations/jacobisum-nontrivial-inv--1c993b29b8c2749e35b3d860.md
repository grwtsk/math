# jacobiSum_nontrivial_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bcbd8b5-0a48-c530-a5cd-333e419305c8",
  "kind": "theorem",
  "lexical_name": "jacobiSum_nontrivial_inv",
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
  "slug": "jacobisum-nontrivial-inv--1c993b29b8c2749e35b3d860",
  "source": {
    "blob": "6e1af8b061b9d202ffe79e2881e13e2e895548a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c993b29b8c2749e35b3d86050371905deb38dccb3431ca5b645a500545b554c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bcbd8b5-0a48-c530-a5cd-333e419305c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiSum_nontrivial_inv {χ : MulChar F R} (hχ : χ ≠ 1) : jacobiSum χ χ⁻¹ = -χ (-1) := by
  classical
  rw [jacobiSum]
  conv => enter [1, 2, x]; rw [MulChar.inv_apply', ← map_mul, ← div_eq_mul_inv]
  rw [sum_eq_sum_sdiff_singleton_add (mem_univ (1 : F)), sub_self, div_zero, χ.map_zero, add_zero]
  have : ∑ x ∈ univ \ {1}, χ (x / (1 - x)) = ∑ x ∈ univ \ {-1}, χ x := by
    refine sum_bij' (fun a _ ↦ a / (1 - a)) (fun b _ ↦ b / (1 + b)) (fun x hx ↦ ?_)
      (fun y hy ↦ ?_) (fun x hx ↦ ?_) (fun y hy ↦ ?_) (fun _ _ ↦ rfl)
    · simp only [mem_sdiff, mem_univ, mem_singleton, true_and] at hx ⊢
      rw [div_eq_iff <| sub_ne_zero.mpr ((ne_eq ..).symm ▸ hx).symm, mul_sub, mul_one,
        neg_one_mul, sub_neg_eq_add, right_eq_add, neg_eq_zero]
      exact one_ne_zero
    · simp only [mem_sdiff, mem_univ, mem_singleton, true_and] at hy ⊢
      rw [div_eq_iff fun h ↦ hy <| eq_neg_of_add_eq_zero_right h, one_mul, right_eq_add]
      exact one_ne_zero
    · simp only [mem_sdiff, mem_univ, mem_singleton, true_and] at hx
      rw [eq_comm, ← sub_eq_zero] at hx
      simp [field]
    · simp only [mem_sdiff, mem_univ, mem_singleton, true_and] at hy
      rw [eq_comm, neg_eq_iff_eq_neg, ← sub_eq_zero, sub_neg_eq_add] at hy
      simp [field]
  rw [this, ← add_eq_zero_iff_eq_neg, ← sum_eq_sum_sdiff_singleton_add (mem_univ (-1 : F))]
  exact MulChar.sum_eq_zero_of_ne_one hχ

/-- If `χ` and `φ` are multiplicative characters on a finite field `F` such that
`χφ` is nontrivial, then `g(χφ) * J(χ,φ) = g(χ) * g(φ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e1af8b061b9d202ffe79e2881e13e2e895548a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
