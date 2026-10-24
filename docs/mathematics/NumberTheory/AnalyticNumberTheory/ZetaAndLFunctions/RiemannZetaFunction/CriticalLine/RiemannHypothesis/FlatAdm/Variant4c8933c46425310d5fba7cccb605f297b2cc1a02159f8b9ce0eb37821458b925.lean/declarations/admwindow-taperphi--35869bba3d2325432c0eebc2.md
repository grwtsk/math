# admWindow_taperPhi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1184f352-16ca-596f-890e-9836a39a2cfa",
  "kind": "theorem",
  "lexical_name": "admWindow_taperPhi",
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
  "slug": "admwindow-taperphi--35869bba3d2325432c0eebc2",
  "source": {
    "blob": "6a594819b5b0c0056d0a4c92a4bca3d39cfd2805",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35869bba3d2325432c0eebc227c9bfef83e4be1b4ee6633ed05ceed3f4ad0b8a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1184f352-16ca-596f-890e-9836a39a2cfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admWindow_taperPhi {ϱ : ℝ → ℝ} {L w : ℝ} (hϱ : TaperProfile ϱ) (hw : 1 ≤ w) (hwL : 8 * w ≤ L) :
    AdmWindow (Taper.phi ϱ L w) L w (Taper.cRho ϱ) where
  one_le_w := hw
  w8 := hwL
  four_le_c := Taper.four_le_cRho hϱ
  even := Taper.phi_even
  nonneg := Taper.phi_nonneg hϱ
  le_one := Taper.phi_le_one hϱ
  contDiff := (Taper.phi_contDiff hϱ (by linarith) (by linarith)).of_le (by norm_num)
  support := fun _ hu => Taper.phi_eq_zero hϱ (by linarith) hu
  l1_deriv := (Taper.integral_abs_deriv_phi hϱ (by linarith) (by linarith)).le
  l1_deriv_sq := (Taper.integral_abs_deriv_phi_sq hϱ (by linarith) (by linarith)).le
  l1_deriv2 := by
    rw [Taper.integral_abs_deriv2_phi hϱ (by linarith) (by linarith)]
    exact div_le_div_of_nonneg_right (Taper.two_mul_l1Deriv2_le_cRho hϱ) (by linarith)
  l1_deriv2_sq := Taper.integral_abs_deriv2_phi_sq_le hϱ hw (by linarith)

/-- **the flat taper of a valid parameter set is an admissible window** (eventually 8w ≤ L). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a594819b5b0c0056d0a4c92a4bca3d39cfd2805` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
