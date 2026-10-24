# Rat.isFractionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2203a89db5a54945752eca3d8361c2954f39ec6eeedb2f7a32cd2bb7ae02419",
  "kind": "instance",
  "lexical_name": "Rat.isFractionRing",
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
  "slug": "rat-isfractionring--e0f452d67f335ad83135d51c",
  "source": {
    "blob": "a58a1890cee2e2af71ecd3ac5d9814fb59e17c6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 48,
    "path": "GRWTSK/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0f452d67f335ad83135d51c932c407e608b4e5c2b9326011f9531181825ec6e",
  "verification": {
    "reference": "docs/verification/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2203a89db5a54945752eca3d8361c2954f39ec6eeedb2f7a32cd2bb7ae02419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Rat.isFractionRing : IsFractionRing ℤ ℚ where
  map_units' := by
    rintro ⟨x, hx⟩
    rw [mem_nonZeroDivisors_iff_ne_zero] at hx
    simpa only [eq_intCast, isUnit_iff_ne_zero, Int.cast_eq_zero, Ne.def, Subtype.coe_mk] using hx
  surj' := by
    rintro ⟨n, d, hd, h⟩
    refine' ⟨⟨n, ⟨d, _⟩⟩, Rat.mul_den_eq_num⟩
    rw [mem_nonZeroDivisors_iff_ne_zero, Int.coe_nat_ne_zero_iff_pos]
    exact Nat.zero_lt_of_ne_zero hd
  eq_iff_exists' := by
    intro x y
    rw [eq_intCast, eq_intCast, Int.cast_inj]
    apply Iff.intro
    · rintro rfl
      use 1
    · rintro ⟨⟨c, hc⟩, h⟩
      apply mul_left_cancel₀ _ h
      rwa [mem_nonZeroDivisors_iff_ne_zero] at hc
#align rat.is_fraction_ring Rat.isFractionRing

namespace IsFractionRing

open IsLocalization

variable {R K}

section CommRing

variable [CommRing K] [Algebra R K] [IsFractionRing R K] [Algebra A K] [IsFractionRing A K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a58a1890cee2e2af71ecd3ac5d9814fb59e17c6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
