# mixedCoordinate_detects_moment_fibers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6a8ed55-8319-32d1-08c2-3059ebc9554a",
  "kind": "theorem",
  "lexical_name": "mixedCoordinate_detects_moment_fibers",
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
  "slug": "mixedcoordinate-detects-moment-fibers--ffd4c2855aecbd833e308a3c",
  "source": {
    "blob": "ae11a6e4490fa6f0a2d4819b43c277439ca8bd3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 40,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentMixedCoordinateRepair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffd4c2855aecbd833e308a3c7c23c0c33582038558205de59129e46ec90c6284",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentMixedCoordinateRepair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6a8ed55-8319-32d1-08c2-3059ebc9554a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mixedCoordinate_detects_moment_fibers
    (weight : ℂ) (hnonzero : cofactorTwo + weight * cofactorZero ≠ 0)
    (u v : Combination 2)
    (hm : bombieriMomentProfile u = bombieriMomentProfile v)
    (ha : mixedCoordinate weight u = mixedCoordinate weight v) :
    u = v := by
  have hordinary : ordinaryMomentRow (u - v) = 0 := by
    have heq : ordinaryMomentRow u = ordinaryMomentRow v :=
      congrArg Prod.fst hm
    have hsub : ordinaryMomentRow (u - v) =
        ordinaryMomentRow u - ordinaryMomentRow v := by
      simp only [ordinaryMomentRow, Pi.sub_apply]
      ring
    rw [hsub, heq, sub_self]
  have hreciprocal : reciprocalMomentRow (u - v) = 0 := by
    have heq : reciprocalMomentRow u = reciprocalMomentRow v :=
      congrArg Prod.snd hm
    have hsub : reciprocalMomentRow (u - v) =
        reciprocalMomentRow u - reciprocalMomentRow v := by
      simp only [reciprocalMomentRow, Pi.sub_apply]
      ring
    rw [hsub, heq, sub_self]
  obtain ⟨c, hc⟩ :=
    coefficient_line_of_two_moments (u - v) hordinary hreciprocal
  have hzero : c * (cofactorTwo + weight * cofactorZero) = 0 := by
    have h2 := hc (2 : Fin 3)
    have h0 := hc (0 : Fin 3)
    simp only [Pi.sub_apply, correctedCoordinates] at h2 h0
    dsimp [mixedCoordinate] at ha
    calc
      c * (cofactorTwo + weight * cofactorZero) =
          (u (2 : Fin 3) - v (2 : Fin 3)) +
            weight * (u (0 : Fin 3) - v (0 : Fin 3)) := by
              rw [h2, h0]
              ring
      _ = 0 := by
        linear_combination ha
  have hc0 : c = 0 := (mul_eq_zero.mp hzero).resolve_right hnonzero
  funext i
  have hi := hc i
  simp only [Pi.sub_apply, hc0, zero_mul] at hi
  exact sub_eq_zero.mp hi

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateRepair
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentMixedCoordinateRepair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentMixedCoordinateRepair.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae11a6e4490fa6f0a2d4819b43c277439ca8bd3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
