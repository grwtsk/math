# exists_mem_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60a90704-7a44-144c-2c25-7f185e2b6886",
  "kind": "theorem",
  "lexical_name": "exists_mem_range",
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
  "slug": "exists-mem-range--7a70493b22a5d333fb8ccdce",
  "source": {
    "blob": "133710057c59a33dfd614205c183159246a63030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 179,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a70493b22a5d333fb8ccdceaef45663d39ca7c9853b2eb4ed4ad1bd7975cae2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60a90704-7a44-144c-2c25-7f185e2b6886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_range : ∃ n : ℕ, n < p ∧ x - n ∈ maximalIdeal ℤ_[p] := by
  simp only [maximalIdeal_eq_span_p, Ideal.mem_span_singleton, ← norm_lt_one_iff_dvd]
  obtain ⟨r, hr⟩ := rat_dense p (x : ℚ_[p]) zero_lt_one
  have H : ‖(r : ℚ_[p])‖ ≤ 1 := by
    rw [norm_sub_rev] at hr
    calc
      _ = ‖(r : ℚ_[p]) - x + x‖ := by ring_nf
      _ ≤ _ := padicNormE.nonarchimedean _ _
      _ ≤ _ := max_le (le_of_lt hr) x.2

  obtain ⟨n, hzn, hnp, hn⟩ := exists_mem_range_of_norm_rat_le_one r H
  lift n to ℕ using hzn
  use n
  constructor
  · exact_mod_cast hnp
  simp only [norm_def, coe_sub, Subtype.coe_mk, coe_nat_cast] at hn ⊢
  rw [show (x - n : ℚ_[p]) = x - r + (r - n) by ring]
  apply lt_of_le_of_lt (padicNormE.nonarchimedean _ _)
  apply max_lt hr
  simpa using hn
#align padic_int.exists_mem_range PadicInt.exists_mem_range

/-- `zmod_repr x` is the unique natural number smaller than `p`
satisfying `‖(x - zmod_repr x : ℤ_[p])‖ < 1`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133710057c59a33dfd614205c183159246a63030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
