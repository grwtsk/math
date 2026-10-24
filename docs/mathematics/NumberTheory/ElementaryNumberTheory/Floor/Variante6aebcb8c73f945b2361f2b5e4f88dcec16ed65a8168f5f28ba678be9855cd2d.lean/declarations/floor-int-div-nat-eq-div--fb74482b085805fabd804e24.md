# floor_int_div_nat_eq_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3a68f71-9daf-5360-2f7b-41ec3ee8ed29",
  "kind": "theorem",
  "lexical_name": "floor_int_div_nat_eq_div",
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
  "slug": "floor-int-div-nat-eq-div--fb74482b085805fabd804e24",
  "source": {
    "blob": "a9ed8e515441704b61324a64306195be30957c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 64,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb74482b085805fabd804e24adbcc8f30181493dbec8227cabb6cd95cdf08b89",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3a68f71-9daf-5360-2f7b-41ec3ee8ed29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem floor_int_div_nat_eq_div {n : ℤ} {d : ℕ} : ⌊(↑n : ℚ) / (↑d : ℚ)⌋ = n / (↑d : ℤ) := by
  rw [Rat.floor_def]
  obtain rfl | hd := @eq_zero_or_pos _ _ d
  · simp
  set q := (n : ℚ) / d with q_eq
  obtain ⟨c, n_eq_c_mul_num, d_eq_c_mul_denom⟩ : ∃ c, n = c * q.num ∧ (d : ℤ) = c * q.den := by
    rw [q_eq]
    exact_mod_cast @Rat.exists_eq_mul_div_num_and_eq_mul_div_den n d (by exact_mod_cast hd.ne')
  rw [n_eq_c_mul_num, d_eq_c_mul_denom]
  refine' (Int.mul_ediv_mul_of_pos _ _ <| pos_of_mul_pos_left _ <| Int.coe_nat_nonneg q.den).symm
  rwa [← d_eq_c_mul_denom, Int.coe_nat_pos]
#align rat.floor_int_div_nat_eq_div Rat.floor_int_div_nat_eq_div

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variante6aebcb8c73f945b2361f2b5e4f88dcec16ed65a8168f5f28ba678be9855cd2d.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9ed8e515441704b61324a64306195be30957c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
