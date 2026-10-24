# derivativeBall_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4065220-70ad-0cb4-4574-fc298e7ff12a",
  "kind": "theorem",
  "lexical_name": "derivativeBall_sound",
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
  "slug": "derivativeball-sound--40bec5a92e147d5d9307ab41",
  "source": {
    "blob": "f44d2d5cbac7cab9f1b784cd4c4ffdf8f96fccf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 99,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40bec5a92e147d5d9307ab415a93c812f2c7053c631153141c4f5a21e3679a3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4065220-70ad-0cb4-4574-fc298e7ff12a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivativeBall_sound {c : Coordinates} {S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : check c S p = true) :
    Holds (derivativeBall c S p) (deriv poleNormalizedZeta (toComplex c)) := by
  obtain ⟨hp,hS,_hl⟩ := (check_iff _ _ _).mp hc
  have hN := ((RationalPoleValue.check_iff_valid _ _).mp hp).2.1
  have he := ClosedDiskCauchy.derivative_error_at_center (by exact_mod_cast hS)
    (fun z _ => differentiable_poleNormalizedZeta z)
    (fun z _ => PoleNormalizedEndpointJet.differentiable_model hN (p.extraCorrections + 1) z)
    (fun z hz => uniform_source_error hc (sphere_subset_closedBall hz))
  have hf := (RationalPoleValue.finiteJet_sound hp).2
  unfold Holds derivativeBall
  calc
    _ ≤ ‖deriv poleNormalizedZeta (toComplex c) -
          deriv (PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections + 1)) (toComplex c)‖ +
        ‖deriv (PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections + 1)) (toComplex c) -
          toComplex (RationalPoleValue.finiteJet c p).2.mid‖ := by
      simpa only [dist_eq_norm] using dist_triangle (deriv poleNormalizedZeta (toComplex c))
        (deriv (PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections + 1)) (toComplex c))
        (toComplex (RationalPoleValue.finiteJet c p).2.mid)
    _ ≤ (uniformError c S p : ℝ) / (S : ℝ) +
        ((RationalPoleValue.finiteJet c p).2.rad : ℝ) := add_le_add he hf
    _ = _ := by push_cast; ring

/-- Both components now refer to the actual source; no new value approximation is made. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleJet.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f44d2d5cbac7cab9f1b784cd4c4ffdf8f96fccf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
