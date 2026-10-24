# dyadicChiFourTwistedMertensEnergy_of_pointwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3535020-5c3e-85c2-6741-df9e1b0773b7",
  "kind": "theorem",
  "lexical_name": "dyadicChiFourTwistedMertensEnergy_of_pointwise",
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
  "slug": "dyadicchifourtwistedmertensenergy-of-pointwise--3bf65ad6de4176c603bc84b9",
  "source": {
    "blob": "c24091ce15da2b587d9a7cb2343fdc8e9da8fcad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 120,
    "path": "GRWTSK/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bf65ad6de4176c603bc84b9b147d282ab0a160ae37ff248a6e345a67d7c8e31",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3535020-5c3e-85c2-6741-df9e1b0773b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicChiFourTwistedMertensEnergy_of_pointwise
    (hPoint : PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope) :
    DyadicChiFourTwistedMertensSquareRootEnergy := by
  intro δ hδ
  obtain ⟨C, hC, hM⟩ :=
    hPoint (pointwiseMertensDyadicEpsilon δ)
      (by
        unfold pointwiseMertensDyadicEpsilon
        positivity)
  let K : ℝ :=
    C * pointwiseMertensDyadicConstantFactor δ
  refine ⟨K ^ 2, sq_nonneg K, ?_⟩
  intro j b hb
  have hbound :
      ‖chiFourTwistedMertensPrefix b‖ ≤
        K * dyadicMertensSquareRootEpsilonScale j δ := by
    dsimp [K]
    exact
      chiFourTwistedMertens_le_dyadicScale
        hδ hC hM hb
  have hK : 0 ≤ K := by
    dsimp [K, pointwiseMertensDyadicConstantFactor]
    positivity
  have hscale :
      0 ≤ dyadicMertensSquareRootEpsilonScale j δ :=
    dyadicMertensSquareRootEpsilonScale_nonneg j δ
  have hsq :
      ‖chiFourTwistedMertensPrefix b‖ ^ 2 ≤
        (K * dyadicMertensSquareRootEpsilonScale j δ) ^ 2 := by
    nlinarith [norm_nonneg (chiFourTwistedMertensPrefix b)]
  calc
    ‖chiFourTwistedMertensPrefix b‖ ^ 2 ≤
        (K * dyadicMertensSquareRootEpsilonScale j δ) ^ 2 :=
      hsq
    _ = K ^ 2 *
        dyadicMertensSquareRootEpsilonScale j δ ^ 2 := by
      ring
    _ ≤ K ^ 2 *
        ((((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) := by
      exact mul_le_mul_of_nonneg_left
        (dyadicMertensSquareRootEpsilonScale_sq_le_target j hδ.le)
        (sq_nonneg K)
    _ = K ^ 2 * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      ring

/-- Constructed proof-relevant scale-transport adapter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c24091ce15da2b587d9a7cb2343fdc8e9da8fcad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
