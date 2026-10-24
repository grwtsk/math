# dyadicOrdinaryMertensTailSquareRootEnergy_of_geometricEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a84ddead-5634-a2a2-8107-bdfe9e1d3a4c",
  "kind": "theorem",
  "lexical_name": "dyadicOrdinaryMertensTailSquareRootEnergy_of_geometricEnvelope",
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
  "slug": "dyadicordinarymertenstailsquarerootenergy-of-geometricenvelope--0060d4e8692c0b159dc71dc8",
  "source": {
    "blob": "74a87969887ecee95536db010bad2b0434389bbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 193,
    "path": "GRWTSK/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0060d4e8692c0b159dc71dc85d6aa79d7568484963d1e82ac4cecabc8b653b89",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a84ddead-5634-a2a2-8107-bdfe9e1d3a4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicOrdinaryMertensTailSquareRootEnergy_of_geometricEnvelope
    (hGeom : DyadicOrdinaryMertensGeometricEnvelope) :
    DyadicOrdinaryMertensTailSquareRootEnergy := by
  intro δ hδ
  obtain ⟨C, ρ, hC, hρ0, hρ1, hdesc⟩ := hGeom δ hδ
  refine ⟨(C * (1 - ρ)⁻¹) ^ 2, sq_nonneg _, ?_⟩
  intro j b hb
  let A : ℝ := C * dyadicMertensSquareRootEpsilonScale j δ
  have hA : 0 ≤ A := by
    dsimp [A]
    exact mul_nonneg hC
      (dyadicMertensSquareRootEpsilonScale_nonneg j δ)
  have htail :
      ordinaryMertensDyadicTailMass b ≤
        C * dyadicMertensSquareRootEpsilonScale j δ *
          (1 - ρ)⁻¹ := by
    have h := ordinaryMertensDyadicTailMass_le_geometric
      b hA hρ0 hρ1
      (fun t => (hdesc j b hb t).1)
    simpa [A, mul_assoc] using h
  have htailHalf :
      ordinaryMertensDyadicTailMass (b / 2) ≤
        C * dyadicMertensSquareRootEpsilonScale j δ *
          (1 - ρ)⁻¹ := by
    have h := ordinaryMertensDyadicTailMass_le_geometric
      (b / 2) hA hρ0 hρ1
      (fun t => (hdesc j b hb t).2)
    simpa [A, mul_assoc] using h
  constructor
  · exact sq_tail_le_dyadic_target_of_geometric
      j hδ.le
      (ordinaryMertensDyadicTailMass_nonneg b)
      hC hρ0 hρ1 htail
  · exact sq_tail_le_dyadic_target_of_geometric
      j hδ.le
      (ordinaryMertensDyadicTailMass_nonneg (b / 2))
      hC hρ0 hρ1 htailHalf

/-- Therefore the same geometric envelope supplies the parity-Mertens zero
mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74a87969887ecee95536db010bad2b0434389bbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
