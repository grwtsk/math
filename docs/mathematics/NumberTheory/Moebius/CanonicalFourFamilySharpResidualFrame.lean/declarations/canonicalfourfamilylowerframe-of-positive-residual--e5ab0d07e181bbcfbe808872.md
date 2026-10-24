# canonicalFourFamilyLowerFrame_of_positive_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecaf39b1-a58b-2abb-fa0e-668c5cbac230",
  "kind": "theorem",
  "lexical_name": "canonicalFourFamilyLowerFrame_of_positive_residual",
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
  "slug": "canonicalfourfamilylowerframe-of-positive-residual--e5ab0d07e181bbcfbe808872",
  "source": {
    "blob": "a89118b81caacde46b59dabc28039d273aa64f79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 34,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilySharpResidualFrame.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5ab0d07e181bbcfbe80887243ebfde7fe2b907ad4c2f55dbd5bbbd832851978",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilySharpResidualFrame.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecaf39b1-a58b-2abb-fa0e-668c5cbac230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalFourFamilyLowerFrame_of_positive_residual
    (X : ℕ) (D : Set CanonicalFourFamilyRealPacket)
    (R : ({n : ℕ // n ∈ centeredGreenWindow X} → ℝ) → CanonicalFourFamilyRealPacket)
    (C q : ℝ) (hC : 0 < C) (hq : 0 < q) (hsmall : q < 1)
    (hR : ∀ v ∈ D, canonicalFourFamilyAmbientSourceEnergy X
      (R (canonicalFourFamilyWindowReadout X v)) ≤
        C * canonicalFourFamilyWindowOutputEnergy X v)
    (hres : ∀ v ∈ D, canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyReconstructionResidual X R v) ≤
        q * canonicalFourFamilyAmbientSourceEnergy X v) :
    HasCanonicalFourFamilyRestrictedLowerFrame X D
      ((1 - Real.sqrt q) ^ 2 / C) := by
  have hs : 0 < Real.sqrt q := Real.sqrt_pos.2 hq
  have hs2 : Real.sqrt q ^ 2 = q := Real.sq_sqrt (le_of_lt hq)
  have hs1 : Real.sqrt q < 1 := by nlinarith
  refine ⟨div_pos (sq_pos_of_pos (by linarith)) hC, ?_⟩
  intro v hv
  have hy := canonicalFourFamilyEnergy_young X
    (R (canonicalFourFamilyWindowReadout X v))
    (canonicalFourFamilyReconstructionResidual X R v) (1 - Real.sqrt q)
  have hid : R (canonicalFourFamilyWindowReadout X v) +
      canonicalFourFamilyReconstructionResidual X R v = v := by
    unfold canonicalFourFamilyReconstructionResidual
    abel
  rw [hid] at hy
  have hr := mul_le_mul_of_nonneg_left (hR v hv) (le_of_lt hs)
  have he := mul_le_mul_of_nonneg_left (hres v hv)
    (show 0 ≤ 1 - Real.sqrt q by linarith)
  have he' : (1 - Real.sqrt q) * canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyReconstructionResidual X R v) ≤
      (1 - Real.sqrt q) * (Real.sqrt q ^ 2 *
        canonicalFourFamilyAmbientSourceEnergy X v) := by
    simpa only [hs2] using he
  have hb : Real.sqrt q * ((1 - Real.sqrt q) ^ 2 *
      canonicalFourFamilyAmbientSourceEnergy X v) ≤
      Real.sqrt q * (C * canonicalFourFamilyWindowOutputEnergy X v) := by
    nlinarith only [hy, hr, he']
  have hb' := (mul_le_mul_iff_right₀ hs).mp hb
  rw [div_mul_eq_mul_div]
  exact (div_le_iff₀ hC).mpr (by nlinarith [hb'])

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilySharpResidualFrame.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilySharpResidualFrame.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89118b81caacde46b59dabc28039d273aa64f79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
