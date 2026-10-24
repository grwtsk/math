# add_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5f41c96-c48d-d687-f91b-ba122e413230",
  "kind": "theorem",
  "lexical_name": "add_rat",
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
  "slug": "add-rat--bd6ad5e45b01e70f963f13dc",
  "source": {
    "blob": "8eaa0268978e44ebd8e6dff557bcde313a85b349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 189,
    "path": "GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd6ad5e45b01e70f963f13dcd0adc1961f22a0118364ad4cc96ac5d67681a429",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5f41c96-c48d-d687-f91b-ba122e413230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_rat (h : LiouvilleWith p x) (r : ℚ) : LiouvilleWith p (x + r) := by
  rcases h.exists_pos with ⟨C, _hC₀, hC⟩
  refine ⟨r.den ^ p * C, (tendsto_id.nsmul_atTop r.pos).frequently (hC.mono ?_)⟩
  rintro n ⟨hn, m, hne, hlt⟩
  have hr : (0 : ℝ) < r.den := Nat.cast_pos.2 r.pos
  have hn' : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.2 (zero_lt_one.trans_le hn).ne'
  have : (↑(r.den * m + r.num * n : ℤ) / ↑(r.den • id n) : ℝ) = m / n + r := by
    rw [Algebra.id.smul_eq_mul, id.def]
    nth_rewrite 4 [← Rat.num_div_den r]
    push_cast
    rw [add_div, mul_div_mul_left _ _ (ne_of_gt hr), mul_div_mul_right _ _ hn']
  refine ⟨r.den * m + r.num * n, ?_⟩; rw [this, add_sub_add_right_eq_sub]
  refine ⟨by simpa, hlt.trans_le (le_of_eq ?_)⟩
  have : (r.den ^ p : ℝ) ≠ 0 := (rpow_pos_of_pos hr _).ne'
  simp [mul_rpow, Nat.cast_nonneg, mul_div_mul_left, this]
#align liouville_with.add_rat LiouvilleWith.add_rat

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eaa0268978e44ebd8e6dff557bcde313a85b349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
