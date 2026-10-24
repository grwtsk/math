# outer_scaled_value_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:853f0b1a-dd8e-9410-66d1-120b5fba0b77",
  "kind": "theorem",
  "lexical_name": "outer_scaled_value_lower",
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
  "slug": "outer-scaled-value-lower--770e98b63a397337ca74c248",
  "source": {
    "blob": "500481f020a298e3f0bc7812a4c4273d5dbfdc95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 84,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:770e98b63a397337ca74c248015b81d64c032166dae8df8eec24bf73fefb19ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:853f0b1a-dd8e-9410-66d1-120b5fba0b77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem outer_scaled_value_lower (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (w : ℂ) (member : w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    (2 / 3 : ℝ) * (‖w - QComplex.embed ConcreteNewtonPacket.center‖ - (innerRadius : ℝ)) ≤
      ‖QComplex.embed ConcreteNewtonPacket.inverse * riemannZeta w‖ := by
  obtain ⟨root, _, located, _, _, _⟩ := local_zero_with_inner_geometry_of_source hsource
  have nested : (innerRadius : ℝ) ≤ (ConcreteNewtonPacket.newtonRadius : ℝ) := by
    exact_mod_cast inner_radius_lt_outer.le
  have rootMember : root.1 ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ) := by
    simpa only [mem_closedBall, dist_eq_norm] using located.le.trans nested
  have bound := scaled_value_lower_on_disk riemannZeta
    (QComplex.embed ConcreteNewtonPacket.inverse) (QComplex.embed ConcreteNewtonPacket.center)
    w root.1 (ConcreteNewtonPacket.newtonRadius : ℝ) (1 / 3 : ℝ)
    root.2.1 rootMember member (fun z hz => (outer_analytic z hz).differentiableAt)
    (outer_derivative_defect hsource)
  have triangle := norm_sub_le_norm_sub_add_norm_sub w root.1
    (QComplex.embed ConcreteNewtonPacket.center)
  have separation : ‖w - QComplex.embed ConcreteNewtonPacket.center‖ - (innerRadius : ℝ) ≤
      ‖w - root.1‖ := by linarith
  calc
    _ ≤ (2 / 3 : ℝ) * ‖w - root.1‖ := mul_le_mul_of_nonneg_left separation (by norm_num)
    _ ≤ _ := by norm_num only [show (1 - 1 / 3 : ℝ) = 2 / 3 by norm_num] at bound; simpa only [norm_mul] using bound

/-- A positive modulus floor outside the inner radius, with the ORIGINAL outer-domain restriction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundary.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `500481f020a298e3f0bc7812a4c4273d5dbfdc95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
