# norm_sub_modPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a7652df-66b9-5497-e961-cde1b9765027",
  "kind": "theorem",
  "lexical_name": "norm_sub_modPart",
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
  "slug": "norm-sub-modpart--6f2ed9792670dee829d11885",
  "source": {
    "blob": "3d6e63e6774a1826ab35c35833354a3029a48d17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f2ed9792670dee829d11885659c03992c75e4842998fbfa94b5a1418a59b4d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a7652df-66b9-5497-e961-cde1b9765027`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sub_modPart (h : ‖(r : ℚ_[p])‖ ≤ 1) : ‖(⟨r, h⟩ - modPart p r : ℤ_[p])‖ < 1 := by
  let n := modPart p r
  rw [norm_lt_one_iff_dvd, ← (isUnit_den r h).dvd_mul_right]
  suffices ↑p ∣ r.num - n * r.den by
    convert (Int.castRingHom ℤ_[p]).map_dvd this
    simp only [n, sub_mul, Int.cast_natCast, eq_intCast, Int.cast_mul, sub_left_inj,
      Int.cast_sub]
    apply Subtype.coe_injective
    simp only [coe_mul, Subtype.coe_mk, coe_natCast]
    norm_cast
    simp
  exact norm_sub_modPart_aux r h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d6e63e6774a1826ab35c35833354a3029a48d17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
