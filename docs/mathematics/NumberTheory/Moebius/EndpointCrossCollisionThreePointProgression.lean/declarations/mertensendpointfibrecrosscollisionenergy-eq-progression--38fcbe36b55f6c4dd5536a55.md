# mertensEndpointFibreCrossCollisionEnergy_eq_progression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fdf49d6-1ae9-558e-f90b-3d5c20f08c74",
  "kind": "theorem",
  "lexical_name": "mertensEndpointFibreCrossCollisionEnergy_eq_progression",
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
  "slug": "mertensendpointfibrecrosscollisionenergy-eq-progression--38fcbe36b55f6c4dd5536a55",
  "source": {
    "blob": "60832bdd30318040a29d3be790717f33c04e4df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 205,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38fcbe36b55f6c4dd5536a55b3c5456a34be06aa087904d1bd8a25b3ada88fd9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fdf49d6-1ae9-558e-f90b-3d5c20f08c74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensEndpointFibreCrossCollisionEnergy_eq_progression
    (b : ℕ) :
    mertensEndpointFibreCrossCollisionEnergy b =
      mertensEndpointCrossCollisionProgressionEnergy b := by
  unfold mertensEndpointFibreCrossCollisionEnergy
    mertensEndpointCrossCollisionProgressionEnergy
  calc
    (∑ n ∈ Finset.Ico 1 b,
      ((∑ p ∈ mertensEndpointStratumPairSet b n .forwardCross,
          mertensEndpointFourMobiusTerm b n p.1 p.2) +
        (∑ p ∈ mertensEndpointStratumPairSet b n .backwardCross,
          mertensEndpointFourMobiusTerm b n p.1 p.2))) =
      ∑ n ∈ Finset.Ico 1 b,
        ((∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
            mertensThreePointProgressionTerm (b - n) a) +
          (∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
            mertensThreePointProgressionTerm (b - n) a)) := by
        apply Finset.sum_congr rfl
        intro n hn
        have hnb := (Finset.mem_Ico.mp hn).2
        rw [sum_mertensEndpointForwardCross_eq_progression hnb,
          sum_mertensEndpointBackwardCross_eq_progression hnb]
    _ = 2 * ∑ n ∈ Finset.Ico 1 b,
        ∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
          mertensThreePointProgressionTerm (b - n) a := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _hn
      ring

/-- Reciprocal endpoint-weighted version of the exact three-point
cross-collision observable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60832bdd30318040a29d3be790717f33c04e4df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
