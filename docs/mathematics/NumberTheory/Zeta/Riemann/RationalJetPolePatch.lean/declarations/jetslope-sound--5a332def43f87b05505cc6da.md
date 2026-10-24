# jetSlope_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b5a6c60-20d1-2a07-28bd-ce28b70f5703",
  "kind": "theorem",
  "lexical_name": "jetSlope_sound",
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
  "slug": "jetslope-sound--5a332def43f87b05505cc6da",
  "source": {
    "blob": "a23b1cb7dad20c5e46f1222f70c8015795334129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a332def43f87b05505cc6daa0a799d47f08b812f71c25dd347e45783c70c71f",
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

Occurrence: `result:5b5a6c60-20d1-2a07-28bd-ce28b70f5703`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jetSlope_sound {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : RationalPoleJet.check c S p = true) (hR : 0 ≤ R) (hRS : R < S) {z : ℂ}
    (hz : z ∈ closedBall (toComplex c) (R : ℝ)) :
    ‖deriv poleNormalizedZeta z‖ ≤ (jetSlope c R S p : ℝ) := by
  have hR' : (0 : ℝ) ≤ (R : ℝ) := by exact_mod_cast hR
  have hL : (0 : ℝ) ≤ (curvature c R S : ℝ) :=
    (norm_nonneg _).trans (curvature_sound hc hRS (mem_closedBall_self hR'))
  have h := CenterJetVariation.derivative_norm_le hR' hL (centerBound_sound hc)
    (fun w _ => differentiable_poleNormalizedZeta.deriv w)
    (fun w hw => curvature_sound hc hRS hw) hz
  simpa only [jetSlope, Rat.cast_add, Rat.cast_mul] using h

/-- The inherited first-order Cauchy bound is still a valid fallback. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a23b1cb7dad20c5e46f1222f70c8015795334129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
