# contract_mul_expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bf00266-127e-59d7-b329-e29dba05347d",
  "kind": "theorem",
  "lexical_name": "contract_mul_expand",
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
  "slug": "contract-mul-expand--c14e640d5a558abc5c763da0",
  "source": {
    "blob": "356025ff874c6aa1358c17164e242d15a12bcaa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 218,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c14e640d5a558abc5c763da05d786b58691ff1f9759b40f89a1819eace0e87ed",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bf00266-127e-59d7-b329-e29dba05347d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contract_mul_expand {p : ℕ} (hp : p ≠ 0) (f g : R[X]) :
    contract p (f * expand R p g) = contract p f * g := by
  ext n
  rw [coeff_contract hp, coeff_mul, coeff_mul, ← sum_subset
    (s₁ := (antidiagonal n).image fun x ↦ (x.1 * p, x.2 * p)), sum_image]
  · simp_rw [coeff_expand_mul hp.bot_lt, coeff_contract hp]
  · intro x hx y hy eq; simpa only [Prod.ext_iff, Nat.mul_right_cancel_iff hp.bot_lt] using eq
  · simp_rw [subset_iff, mem_image, mem_antidiagonal]; rintro _ ⟨x, rfl, rfl⟩; simp_rw [add_mul]
  simp_rw [mem_image, mem_antidiagonal]
  intro ⟨x, y⟩ eq nex
  by_cases h : p ∣ y
  · obtain ⟨x, rfl⟩ : p ∣ x := (Nat.dvd_add_iff_left h).mpr (eq ▸ dvd_mul_left p n)
    obtain ⟨y, rfl⟩ := h
    refine (nex ⟨⟨x, y⟩, (Nat.mul_right_cancel_iff hp.bot_lt).mp ?_, by simp_rw [mul_comm]⟩).elim
    rw [← eq, mul_comm, mul_add]
  · rw [coeff_expand hp.bot_lt, if_neg h, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `356025ff874c6aa1358c17164e242d15a12bcaa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
