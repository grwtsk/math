# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b2206ccb48c1708e7847a8663e5bd5a8c2a2f179d9d8f5ab1a069e31eaa7bb4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--de3b02b132ec8a0fc158ad73",
  "source": {
    "blob": "09217708f089a1f32d1a614b555d99c15aea0ca6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/PontryaginDual/Variantf2fa33e9c8de38909e961bc8f40f32208dcf7eaded89bad9493b7a6c0c3613a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de3b02b132ec8a0fc158ad73cdf865c2e0daff5f789558e645f470431c0697e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PontryaginDual/Variantf2fa33e9c8de38909e961bc8f40f32208dcf7eaded89bad9493b7a6c0c3613a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b2206ccb48c1708e7847a8663e5bd5a8c2a2f179d9d8f5ab1a069e31eaa7bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [LocallyCompactSpace H] : LocallyCompactSpace (PontryaginDual H) := by
  let Vn : ℕ → Set Circle :=
    fun n ↦ Circle.exp '' { x | |x| < Real.pi / 2 ^ (n + 1)}
  have hVn : ∀ n x, x ∈ Vn n ↔ |Complex.arg x| < Real.pi / 2 ^ (n + 1) := by
    refine fun n x ↦ ⟨?_, fun hx ↦ ⟨Complex.arg x, hx, Circle.exp_arg x⟩⟩
    rintro ⟨t, ht : |t| < _, rfl⟩
    have ht' := ht.trans_le (div_le_self Real.pi_nonneg (one_le_pow₀ one_le_two))
    rwa [Circle.arg_exp (neg_lt_of_abs_lt ht') (lt_of_abs_lt ht').le]
  refine ContinuousMonoidHom.locallyCompactSpace_of_hasBasis Vn ?_ ?_
  · intro n x h1 h2
    rw [hVn] at h1 h2 ⊢
    rwa [Circle.coe_mul, Complex.arg_mul x.coe_ne_zero x.coe_ne_zero,
      ← two_mul, abs_mul, abs_two, ← lt_div_iff₀' two_pos, div_div, ← pow_succ] at h2
    apply Set.Ioo_subset_Ioc_self
    rw [← two_mul, Set.mem_Ioo, ← abs_lt, abs_mul, abs_two, ← lt_div_iff₀' two_pos]
    exact h1.trans_le
      (div_le_div_of_nonneg_left Real.pi_nonneg two_pos (le_self_pow₀ one_le_two n.succ_ne_zero))
  · rw [← Circle.exp_zero, ← isLocalHomeomorph_circleExp.map_nhds_eq 0]
    refine ((nhds_basis_zero_abs_lt ℝ).to_hasBasis
        (fun x hx ↦ ⟨Nat.ceil (Real.pi / x), trivial, fun t ht ↦ ?_⟩)
          fun k _ ↦ ⟨Real.pi / 2 ^ (k + 1), by positivity, le_rfl⟩).map Circle.exp
    rw [Set.mem_setOf_eq] at ht ⊢
    refine lt_of_lt_of_le ht ?_
    rw [div_le_iff₀' (pow_pos two_pos _), ← div_le_iff₀ hx]
    refine (Nat.le_ceil (Real.pi / x)).trans ?_
    exact_mod_cast (Nat.le_succ _).trans Nat.lt_two_pow_self.le

variable {A B C G}

namespace PontryaginDual

open ContinuousMonoidHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PontryaginDual/Variantf2fa33e9c8de38909e961bc8f40f32208dcf7eaded89bad9493b7a6c0c3613a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PontryaginDual/Variantf2fa33e9c8de38909e961bc8f40f32208dcf7eaded89bad9493b7a6c0c3613a5.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09217708f089a1f32d1a614b555d99c15aea0ca6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
