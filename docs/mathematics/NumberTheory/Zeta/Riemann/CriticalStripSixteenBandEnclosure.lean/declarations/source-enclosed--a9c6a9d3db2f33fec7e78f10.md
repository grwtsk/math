# source_enclosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:509e4b81-2622-307d-5799-6648455aa96f",
  "kind": "theorem",
  "lexical_name": "source_enclosed",
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
  "slug": "source-enclosed--a9c6a9d3db2f33fec7e78f10",
  "source": {
    "blob": "f9ee4e40b06ae8952b19c8082061dabbf4ac3664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 160,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9c6a9d3db2f33fec7e78f101f4b85008f91c4b38498ba82dd0f081a6e49c38c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:509e4b81-2622-307d-5799-6648455aa96f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_enclosed {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) :
    ‖poleNormalizedZeta s-polynomial s‖ ≤ (1/8 : ℝ) := by
  have htail := actual_tail_error hx hx1 ht ht1
  have hmodel := finiteModel_jet_error hx hx1 ht ht1
  have hround := polynomial_rounding (band_geometry hx hx1 ht ht1).1
  calc
    _ = ‖(poleNormalizedZeta s-SexticPrimitive.finiteModel 8 s)+
        (SexticPrimitive.finiteModel 8 s-sourcePolynomial s)+(sourcePolynomial s-polynomial s)‖ := by
      congr 1
      ring
    _ ≤ ‖poleNormalizedZeta s-SexticPrimitive.finiteModel 8 s‖+
        ‖SexticPrimitive.finiteModel 8 s-sourcePolynomial s‖+‖sourcePolynomial s-polynomial s‖ :=
      (norm_add_le _ _).trans (add_le_add_right (norm_add_le _ _) _)
    _ ≤ (17^6*18 : ℝ)/(30240*(11/2)*65536)+
        (17*(∑ i : Fin 8, powerError i)+22*powerError 7)+1/1048576 :=
      add_le_add (add_le_add htail hmodel) hround
    _ ≤ 1/8 := by linarith [finite_error_budget]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SixteenBandJet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandEnclosure.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9ee4e40b06ae8952b19c8082061dabbf4ac3664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
