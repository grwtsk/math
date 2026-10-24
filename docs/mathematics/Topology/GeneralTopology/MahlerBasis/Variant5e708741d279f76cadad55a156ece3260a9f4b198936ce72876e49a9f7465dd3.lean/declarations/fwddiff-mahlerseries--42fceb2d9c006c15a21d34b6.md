# fwdDiff_mahlerSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f23f9ba1-b0a4-b254-1c05-f15c0be8857f",
  "kind": "lemma",
  "lexical_name": "fwdDiff_mahlerSeries",
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
  "slug": "fwddiff-mahlerseries--42fceb2d9c006c15a21d34b6",
  "source": {
    "blob": "cd62cb6ad733b398334edb67ac5a6a553488532e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 321,
    "path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42fceb2d9c006c15a21d34b6e7d93af7d04231b1548e6115c859350e7a91394f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f23f9ba1-b0a4-b254-1c05-f15c0be8857f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fwdDiff_mahlerSeries (ha : Tendsto a atTop (𝓝 0)) (n) :
    Δ_[1]^[n] (mahlerSeries a) (0 : ℤ_[p]) = a n :=
  calc Δ_[1]^[n] (mahlerSeries a) 0
  -- throw away terms after the nth
  _ = Δ_[1]^[n] (fun k ↦ ∑ j ∈ range (n + 1), k.choose j • (a j)) 0 := by
    simp only [fwdDiff_iter_eq_sum_shift, zero_add]
    refine Finset.sum_congr rfl fun j hj ↦ ?_
    rw [nsmul_one, nsmul_one,
      mahlerSeries_apply_nat ha (Nat.lt_succ_iff.mp <| Finset.mem_range.mp hj), Nat.cast_id]
  -- bring `Δ_[1]` inside sum
  _ = ∑ j ∈ range (n + 1), Δ_[1]^[n] (fun k ↦ k.choose j • (a j)) 0 := by
    simp only [fwdDiff_iter_eq_sum_shift, smul_sum]
    rw [sum_comm]
  -- bring `Δ_[1]` inside scalar-mult
  _ = ∑ j ∈ range (n + 1), (Δ_[1]^[n] (fun k ↦ k.choose j : ℕ → ℤ) 0) • (a j) := by
    simp only [fwdDiff_iter_eq_sum_shift, zero_add, sum_smul, smul_assoc,
      natCast_zsmul]
  -- finish using `fwdDiff_iter_choose_zero`
  _ = a n := by
    simp only [fwdDiff_iter_choose_zero, ite_smul, one_smul, zero_smul, sum_ite_eq,
      Finset.mem_range, lt_add_iff_pos_right, zero_lt_one, ↓reduceIte]

/--
**Mahler's theorem**: for any continuous function `f` from `ℤ_[p]` to a `p`-adic Banach space, the
Mahler series with coefficients `n ↦ Δ_[1]^[n] f 0` converges to the original function `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd62cb6ad733b398334edb67ac5a6a553488532e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
