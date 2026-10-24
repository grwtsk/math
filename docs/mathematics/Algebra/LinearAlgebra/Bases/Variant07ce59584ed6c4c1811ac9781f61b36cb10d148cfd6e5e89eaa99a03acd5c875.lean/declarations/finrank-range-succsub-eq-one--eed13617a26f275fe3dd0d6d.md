# finrank_range_succSub_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d07fb370da9edc99f72e875de13adac15b59147c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 396,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:485225f0-850a-14fa-1c0b-a13b0196c080",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e06406cc-b4dd-6151-9cb7-dfc22206587c",
  "kind": "lemma",
  "lexical_name": "finrank_range_succSub_eq_one",
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
  "slug": "finrank-range-succsub-eq-one--eed13617a26f275fe3dd0d6d",
  "source": {
    "blob": "d07fb370da9edc99f72e875de13adac15b59147c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 396,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eed13617a26f275fe3dd0d6da3ff0744c9b858a7d6cd2e833141f92fc144399d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e06406cc-b4dd-6151-9cb7-dfc22206587c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finrank_range_succSub_eq_one {P : ℕ → X →L[𝕜] X}
    (hrank : ∀ n, Module.finrank 𝕜 (P n).toLinearMap.range = n)
    (hcomp : ∀ n m, ∀ x : X, P n (P m x) = P (min n m) x) (n : ℕ) :
    Module.finrank 𝕜 (succSub P n).toLinearMap.range = 1 := by
  let U := (succSub P n).toLinearMap.range
  let V := (P n).toLinearMap.range
  let W := (P (n + 1)).toLinearMap.range
  have hV : V ≤ W := by
    rintro _ ⟨y, rfl⟩
    exact ⟨P n y, by simp [ContinuousLinearMap.coe_coe, hcomp]⟩
  have hUW : U ≤ W := by
    rintro _ ⟨y, rfl⟩
    exact Submodule.sub_mem W ⟨y, rfl⟩ (hV ⟨y, rfl⟩)
  have hW : W = U ⊔ V := by
    apply le_antisymm
    · rintro x ⟨y, hy⟩
      rw [← hy, ContinuousLinearMap.coe_coe, ← sub_add_cancel ((P (n + 1)) y) ((P n) y)]
      exact Submodule.add_mem_sup ⟨y, rfl⟩ ⟨y, rfl⟩
    · exact sup_le hUW hV
  have hdisj : U ⊓ V = ⊥ := eq_bot_iff.mpr fun x ⟨⟨y, hy⟩, ⟨z, hz⟩⟩ ↦ by
    simp only [Submodule.mem_bot]
    calc x = (P n) x := by rw [← hz, ContinuousLinearMap.coe_coe, hcomp, min_self]
         _ = 0       := by rw [← hy, ContinuousLinearMap.coe_coe]; simp [succSub, map_sub, hcomp]
  have : FiniteDimensional 𝕜 W := .of_finrank_pos (by rw [hrank]; exact Nat.succ_pos n)
  have : FiniteDimensional 𝕜 U := Submodule.finiteDimensional_of_le hUW
  have : FiniteDimensional 𝕜 V := Submodule.finiteDimensional_of_le hV
  have h_dim := Submodule.finrank_sup_add_finrank_inf_eq U V
  rw [hdisj, finrank_bot, add_zero, ← hW, hrank, hrank, Nat.add_comm] at h_dim
  exact Nat.add_right_cancel h_dim.symm

variable (𝕜 X) in
/-- Data for constructing a Schauder basis from a sequence of finite-rank projections.

Given a sequence of continuous linear maps `P n : X →L[𝕜] X` satisfying:
* `P 0 = 0` and `finrank(range(P n)) = n`,
* `P n ∘ P m = P (min n m)` (the projections are nested and commute),
* `P n x → x` for every `x` (pointwise convergence to the identity),

the differences `succSub P n = P (n+1) - P n` are rank-one operators
(see `finrank_range_succSub_eq_one`). Choosing a nonzero vector `e n` in the range of each
`succSub P n` yields a Schauder basis for `X`.

Use `RankOneDecomposition.basis` to construct the `SchauderBasis` from this data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d07fb370da9edc99f72e875de13adac15b59147c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
