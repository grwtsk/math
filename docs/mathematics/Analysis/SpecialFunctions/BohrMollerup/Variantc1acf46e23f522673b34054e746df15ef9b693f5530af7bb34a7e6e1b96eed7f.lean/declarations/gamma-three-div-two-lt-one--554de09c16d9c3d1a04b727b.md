# Gamma_three_div_two_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5aae1c6-2d63-eb12-28c0-324f2acf310e",
  "kind": "theorem",
  "lexical_name": "Gamma_three_div_two_lt_one",
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
  "slug": "gamma-three-div-two-lt-one--554de09c16d9c3d1a04b727b",
  "source": {
    "blob": "94400ea0c85b30a04ce15d85786d3cf2523cd725",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 331,
    "path": "GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:554de09c16d9c3d1a04b727b4a2baa4f694e74e9f9323ba6794595d5dd15c59f",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5aae1c6-2d63-eb12-28c0-324f2acf310e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Gamma_three_div_two_lt_one : Gamma (3 / 2) < 1 := by
  -- This can also be proved using the closed-form evaluation of `Gamma (1 / 2)` in
  -- `Mathlib/Analysis/SpecialFunctions/Gaussian.lean`, but we give a self-contained proof using
  -- log-convexity to avoid unnecessary imports.
  have A : (0 : ℝ) < 3 / 2 := by norm_num
  have :=
    BohrMollerup.f_add_nat_le convexOn_log_Gamma (fun {y} hy => ?_) two_ne_zero one_half_pos
      (by norm_num : 1 / 2 ≤ (1 : ℝ))
  swap
  · rw [Function.comp_apply, Gamma_add_one hy.ne', log_mul hy.ne' (Gamma_pos_of_pos hy).ne',
      add_comm, Function.comp_apply]
  rw [Function.comp_apply, Function.comp_apply, Nat.cast_two, Gamma_two, log_one, zero_add,
    (by norm_num : (2 : ℝ) + 1 / 2 = 3 / 2 + 1), Gamma_add_one A.ne',
    log_mul A.ne' (Gamma_pos_of_pos A).ne', ← le_sub_iff_add_le',
    log_le_iff_le_exp (Gamma_pos_of_pos A)] at this
  refine this.trans_lt (exp_lt_one_iff.mpr ?_)
  rw [mul_comm, ← mul_div_assoc, div_sub' two_ne_zero]
  refine div_neg_of_neg_of_pos ?_ two_pos
  rw [sub_neg, mul_one, ← Nat.cast_two, ← log_pow, ← exp_lt_exp, Nat.cast_two, exp_log two_pos,
      exp_log] <;>
    norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94400ea0c85b30a04ce15d85786d3cf2523cd725` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
