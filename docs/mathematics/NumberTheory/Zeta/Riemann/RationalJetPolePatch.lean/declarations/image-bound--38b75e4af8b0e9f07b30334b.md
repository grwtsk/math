# image_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02be31c5-2fac-66ae-f0e0-83db21dab779",
  "kind": "theorem",
  "lexical_name": "image_bound",
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
  "slug": "image-bound--38b75e4af8b0e9f07b30334b",
  "source": {
    "blob": "a23b1cb7dad20c5e46f1222f70c8015795334129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38b75e4af8b0e9f07b30334b1931e047d87fbf8b5a481bc1183165613e7e2aa6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02be31c5-2fac-66ae-f0e0-83db21dab779`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_bound {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : RationalPoleJet.check c S p = true) (hR : 0 ≤ R) (hRS : R < S) {z : ℂ}
    (hz : z ∈ closedBall (toComplex c) (R : ℝ)) :
    ‖poleNormalizedZeta z - toComplex (RationalPoleValue.valueBall c p).mid‖ ≤
      (imageRadius c R S p : ℝ) := by
  have hc0 : toComplex c ∈ closedBall (toComplex c) (R : ℝ) :=
    mem_closedBall_self (by exact_mod_cast hR)
  have hM : (0 : ℝ) ≤ (selectedSlope c R S p : ℝ) :=
    (norm_nonneg _).trans (selectedSlope_sound hc hR hRS hc0)
  have hv := Convex.norm_image_sub_le_of_norm_deriv_le
    (fun w _ => differentiable_poleNormalizedZeta w)
    (fun w hw => selectedSlope_sound hc hR hRS hw) (convex_closedBall _ _) hc0 hz
  have hv' : ‖poleNormalizedZeta z - poleNormalizedZeta (toComplex c)‖ ≤
      (selectedSlope c R S p : ℝ) * (R : ℝ) :=
    hv.trans (mul_le_mul_of_nonneg_left
      (by simpa only [mem_closedBall, dist_eq_norm] using hz) hM)
  have he := RationalPoleValue.valueBall_sound ((RationalPoleJet.check_iff _ _ _).mp hc).1
  calc
    _ ≤ ‖poleNormalizedZeta z - poleNormalizedZeta (toComplex c)‖ +
        ‖poleNormalizedZeta (toComplex c) - toComplex (RationalPoleValue.valueBall c p).mid‖ := by
      simpa only [dist_eq_norm] using dist_triangle (poleNormalizedZeta z)
        (poleNormalizedZeta (toComplex c)) (toComplex (RationalPoleValue.valueBall c p).mid)
    _ ≤ (selectedSlope c R S p : ℝ) * (R : ℝ) +
        ((RationalPoleValue.valueBall c p).rad : ℝ) := add_le_add hv' he
    _ = _ := by simp only [imageRadius, Rat.cast_add, Rat.cast_mul]; ring

/-- Return the EXISTING local patch type; no alternate definition of nonvanishing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a23b1cb7dad20c5e46f1222f70c8015795334129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
