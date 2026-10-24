# hasRestrictedLowerFrameBound_of_small_reconstructionResidual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd3e911e-03b2-0be6-8537-bb8859ecf0b7",
  "kind": "theorem",
  "lexical_name": "hasRestrictedLowerFrameBound_of_small_reconstructionResidual",
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
  "slug": "hasrestrictedlowerframebound-of-small-reconstructionresidual--68f64ed7360d45df7ea835c4",
  "source": {
    "blob": "3d78133e07815dfd17a95daf9251da60c14d0cc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 101,
    "path": "GRWTSK/NumberTheory/Moebius/RestrictedFrameResidualComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68f64ed7360d45df7ea835c482bccf548455e30339104ab37fb9d15bfb0cd97a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RestrictedFrameResidualComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd3e911e-03b2-0be6-8537-bb8859ecf0b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasRestrictedLowerFrameBound_of_small_reconstructionResidual
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (T : FiniteArithmeticBridge ι κ)
    (D : RestrictedDifferenceSpace (ι := ι))
    (R : (κ → ℂ) → (ι → ℂ))
    (C q : ℝ)
    (hC : 0 < C)
    (hq : 0 ≤ q)
    (hsmall : 2 * q < 1)
    (hR : ∀ f : FiniteCenteredPacket ι, f ∈ D →
      finitePacketEnergy (R (T.linearPart f)) ≤
        C * finitePacketEnergy (T.linearPart f))
    (hres : ∀ f : FiniteCenteredPacket ι, f ∈ D →
      finitePacketEnergy (ReconstructionResidual T R f) ≤
        q * finitePacketEnergy f) :
    HasRestrictedLowerFrameBound T D ((1 - 2 * q) / (2 * C)) := by
  have hden : 0 < 2 * C := by positivity
  have hnum : 0 < 1 - 2 * q := by linarith
  refine ⟨div_pos hnum hden, ?_⟩
  intro f hfD
  have hsplit :=
    finitePacketEnergy_le_reconstruction_add_residual T R f
  have hcontract :
      finitePacketEnergy f ≤
        2 * C * finitePacketEnergy (T.linearPart f) +
          2 * q * finitePacketEnergy f := by
    nlinarith [hsplit, hR f hfD, hres f hfD]
  have hraw :
      (1 - 2 * q) * finitePacketEnergy f ≤
        finitePacketEnergy (T.linearPart f) * (2 * C) := by
    nlinarith [hcontract]
  calc
    ((1 - 2 * q) / (2 * C)) * finitePacketEnergy f =
        ((1 - 2 * q) * finitePacketEnergy f) / (2 * C) := by
      ring
    _ ≤ finitePacketEnergy (T.linearPart f) :=
      (div_le_iff₀ hden).2 hraw

end GRWTSK.RiemannHypothesis

#print axioms GRWTSK.RiemannHypothesis.finitePacketEnergy_add_le_two
#print axioms GRWTSK.RiemannHypothesis.finitePacketEnergy_le_reconstruction_add_residual
#print axioms GRWTSK.RiemannHypothesis.hasRestrictedLowerFrameBound_of_small_reconstructionResidual
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RestrictedFrameResidualComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RestrictedFrameResidualComparison.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d78133e07815dfd17a95daf9251da60c14d0cc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
