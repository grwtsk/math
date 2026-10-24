# mul_invOfUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e842f409e4da1ad35fc9d2ff7957d8d13ca3eae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f8f6e82-648a-7ef7-c7d4-bca9e90314de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1f31f7b-299c-2be5-868c-b9084ea3cf39",
  "kind": "theorem",
  "lexical_name": "mul_invOfUnit",
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
  "slug": "mul-invofunit--96fd0a5c40467c207109a5ba",
  "source": {
    "blob": "1e842f409e4da1ad35fc9d2ff7957d8d13ca3eae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 105,
    "path": "GRWTSK/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96fd0a5c40467c207109a5ba0d6c0d8ca0ce54ad9f1ded58f6527ab64ee0716d",
  "verification": {
    "reference": "docs/verification/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1f31f7b-299c-2be5-868c-b9084ea3cf39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_invOfUnit (φ : MvPowerSeries σ R) (u : Rˣ) (h : constantCoeff φ = u) :
    φ * invOfUnit φ u = 1 :=
  ext fun n =>
    letI := Classical.decEq (σ →₀ ℕ)
    if H : n = 0 then by
      rw [H]
      simp [h]
    else by
      classical
      have : ((0 : σ →₀ ℕ), n) ∈ antidiagonal n := by rw [mem_antidiagonal, zero_add]
      rw [coeff_one, ite_eq_right H, coeff_mul, ← Finset.insert_erase this,
        Finset.sum_insert (Finset.notMem_erase _ _), coeff_zero_eq_constantCoeff_apply, h,
        coeff_invOfUnit, ite_eq_right H, neg_mul, mul_neg, Units.mul_inv_cancel_left, ←
        Finset.insert_erase this, Finset.sum_insert (Finset.notMem_erase _ _),
        Finset.insert_erase this, ite_eq_right (not_lt_of_ge <| le_rfl), zero_add, add_comm, ←
        sub_eq_add_neg, sub_eq_zero, Finset.sum_congr rfl]
      rintro ⟨i, j⟩ hij
      rw [Finset.mem_erase, mem_antidiagonal] at hij
      obtain ⟨h₁, rfl⟩ := hij
      rw [ite_eq_left]
      refine lt_add_of_pos_left _ <| pos_iff_ne_zero.2 ?_
      rintro rfl
      simp at h₁

-- TODO : can one prove equivalence?
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inverse/Variant1ba2ceae223445c00c50e37bb2d79c90b98deff3eee603935713b9bc5786e048.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e842f409e4da1ad35fc9d2ff7957d8d13ca3eae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
