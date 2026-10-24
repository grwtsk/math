# narrow_root_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93ae3723-0567-54c6-eacd-53ef3a2cc247",
  "kind": "theorem",
  "lexical_name": "narrow_root_transport",
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
  "slug": "narrow-root-transport--a5a2bd299556b172fe8305b3",
  "source": {
    "blob": "e9722238202ea6a32049e45d036a9d1e60cf9af9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 19,
    "path": "GRWTSK/Analysis/InnerProductSpace/SignedWindowRootBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5a2bd299556b172fe8305b350a9cb78fbea59614d5eda0068101e1977dc7468",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/SignedWindowRootBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93ae3723-0567-54c6-eacd-53ef3a2cc247`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem narrow_root_transport {b T : ℝ} {parent : Chart b T}
    (cert : NarrowCertificate parent) :
    Real.sqrt (packetEnergy parent) ≤
      Real.sqrt (cert.transport*packetEnergy cert.child)+Real.sqrt cert.residualBudget := by
  let μ : Measure ℝ := volume.restrict (Icc (T-b) T)
  let f : ℝ → ℝ := fun u => cert.amplitude*(maturePacket cert.child
    (cert.scale*u+cert.offset)+horizonPacket cert.child (cert.scale*u+cert.offset))
  let r : ℝ → ℝ := fun u => cert.residualMature u+cert.residualHorizon u
  have hf : Integrable (fun u => (f u)^2) μ := cert.pulled_integrable
  have hr : Integrable (fun u => (r u)^2) μ := (narrow_residual_integrable cert).restrict
  have hs : Integrable (fun u => (f u+r u)^2) μ := by
    apply (packet_sum_square_integrable parent).restrict.congr
    filter_upwards [ae_restrict_mem measurableSet_Icc] with u hu
    rw [cert.mature_reconstruction u hu, cert.horizon_reconstruction u hu]
    dsimp [f, r]
    ring
  have he : energy μ (fun u => f u+r u) = packetEnergy parent := by
    apply integral_congr_ae
    filter_upwards [ae_restrict_mem measurableSet_Icc] with u hu
    rw [cert.mature_reconstruction u hu, cert.horizon_reconstruction u hu]
    dsimp [f, r]
    ring
  have ht := sqrt_energy_add_le μ hf hr hs
  rw [he] at ht
  exact ht.trans (add_le_add
    (Real.sqrt_le_sqrt cert.transport_bound)
    (Real.sqrt_le_sqrt cert.residual_bound))

/-- The parent energy budget uses the sharp root sum instead of two doubled terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/SignedWindowRootBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/SignedWindowRootBounds.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9722238202ea6a32049e45d036a9d1e60cf9af9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
