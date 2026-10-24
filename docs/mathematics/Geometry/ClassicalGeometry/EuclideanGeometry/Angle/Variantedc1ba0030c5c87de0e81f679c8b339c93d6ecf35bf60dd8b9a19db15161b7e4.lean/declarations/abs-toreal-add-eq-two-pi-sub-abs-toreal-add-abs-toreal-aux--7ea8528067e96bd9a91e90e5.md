# abs_toReal_add_eq_two_pi_sub_abs_toReal_add_abs_toReal_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:993846af-ba15-a34e-cc76-9d5f7acf923f",
  "kind": "lemma",
  "lexical_name": "abs_toReal_add_eq_two_pi_sub_abs_toReal_add_abs_toReal_aux",
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
  "slug": "abs-toreal-add-eq-two-pi-sub-abs-toreal-add-abs-toreal-aux--7ea8528067e96bd9a91e90e5",
  "source": {
    "blob": "69368b88c5b14c8e2d8ddd8da3fc1dbd608dc285",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 940,
    "line": 924,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantedc1ba0030c5c87de0e81f679c8b339c93d6ecf35bf60dd8b9a19db15161b7e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ea8528067e96bd9a91e90e5a4edfc9fe48c81a98e890c8917853a5fd04f290d",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantedc1ba0030c5c87de0e81f679c8b339c93d6ecf35bf60dd8b9a19db15161b7e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:993846af-ba15-a34e-cc76-9d5f7acf923f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 924–940.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma abs_toReal_add_eq_two_pi_sub_abs_toReal_add_abs_toReal_aux {θ ψ : Angle}
    (hθs : θ.sign = 1) (hψs : ψ.sign = 1)
    (hsa : (θ + ψ).sign ≠ 1) : |(θ + ψ).toReal| = 2 * π - (|θ.toReal| + |ψ.toReal|) := by
  rw [← toReal_mem_Ioo_iff_sign_pos] at hθs hψs
  have : ((θ + ψ).toReal : Angle) = ↑(θ.toReal + ψ.toReal) := by simp
  obtain ⟨k, hk⟩ := angle_eq_iff_two_pi_dvd_sub.mp this
  obtain (h | h) : (θ + ψ).toReal ≤ 0 ∨ θ + ψ = π := by
    have := (θ + ψ).sign.trichotomy
    grind [sign_eq_zero_iff, toReal_eq_zero_iff, toReal_neg_iff_sign_neg]
  · obtain rfl : k = -1 := IsStrictOrderedRing.int_eq_of_mul_mem_Ioo two_pi_pos <| by
      grind [toReal_mem_Ioc]
    grind [abs_of_nonpos]
  · simp_all only [sign_coe_pi, ne_eq, zero_ne_one, not_false_eq_true, toReal_pi, coe_add,
      coe_toReal, pi_pos, abs_of_pos]
    obtain rfl : k = 0 := IsStrictOrderedRing.int_eq_of_mul_mem_Ioo two_pi_pos (by grind)
    grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantedc1ba0030c5c87de0e81f679c8b339c93d6ecf35bf60dd8b9a19db15161b7e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantedc1ba0030c5c87de0e81f679c8b339c93d6ecf35bf60dd8b9a19db15161b7e4.lean#L924).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69368b88c5b14c8e2d8ddd8da3fc1dbd608dc285` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
