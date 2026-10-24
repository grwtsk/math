# div_max_sq_ge_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7a680a2-b54c-1bfc-8d9f-ed43409411bf",
  "kind": "lemma",
  "lexical_name": "div_max_sq_ge_one",
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
  "slug": "div-max-sq-ge-one--e2c5d1a380a74879198d19e5",
  "source": {
    "blob": "f8f2c11e167477ed5a48678c5acf6e98eac293db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 107,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2c5d1a380a74879198d19e5fdc9042c88d40bbe4caf58ac40fe8d333162e956",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7a680a2-b54c-1bfc-8d9f-ed43409411bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma div_max_sq_ge_one (x : Fin 2 → ℤ) (hx : x ≠ 0) :
    1 ≤ (x 0 / ‖x‖) ^ 2 ∨ 1 ≤ (x 1 / ‖x‖) ^ 2 := by
  refine (max_choice (x 0).natAbs (x 1).natAbs).imp (fun H0 ↦ ?_) (fun H1 ↦ ?_)
  · have : x 0 ≠ 0 := by
      rwa [← norm_ne_zero_iff, norm_eq_max_natAbs, H0, Nat.cast_ne_zero, Int.natAbs_ne_zero] at hx
    simp only [norm_eq_max_natAbs, H0, Int.cast_natAbs, Int.cast_abs, div_pow, sq_abs, ne_eq,
      OfNat.ofNat_ne_zero, not_false_eq_true, pow_eq_zero_iff, Int.cast_eq_zero, this, div_self,
      le_refl]
  · have : x 1 ≠ 0 := by
      rwa [← norm_ne_zero_iff, norm_eq_max_natAbs, H1, Nat.cast_ne_zero, Int.natAbs_ne_zero] at hx
    simp only [norm_eq_max_natAbs, H1, Int.cast_natAbs, Int.cast_abs, div_pow, sq_abs, ne_eq,
      OfNat.ofNat_ne_zero, not_false_eq_true, pow_eq_zero_iff, Int.cast_eq_zero, this, div_self,
      le_refl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f2c11e167477ed5a48678c5acf6e98eac293db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
