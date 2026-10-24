# defect_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b0d49b5-f04a-0b87-76a4-a7430def7ab1",
  "kind": "theorem",
  "lexical_name": "defect_zero_iff",
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
  "slug": "defect-zero-iff--29c6e376fc18e840b02557de",
  "source": {
    "blob": "abe64202b8b86c97d84276c7ec74fc5b8688eb81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 211,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29c6e376fc18e840b02557de4ec2a968def3935c206f15813399c2cc6e482e05",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b0d49b5-f04a-0b87-76a4-a7430def7ab1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem defect_zero_iff (a b : ℝ) (k : ℕ) (lam : ℝ) (hlam : 0 < lam)
    (z : Fin 3 → stage a b k) (c : stage a b k) :
    defectEnergy a b k lam z c = 0 ↔ (∀ j, z j = meanStage a b k z) ∧ c = 0 := by
  constructor
  · intro h
    have hi : ∀ i : Index k, ThreePhaseCoefficientHeat.defectEnergy lam
        (phaseCoefficients a b k z i) (coordinates a b k c i) = 0 := by
      intro i
      have hlo := ThreePhaseCoefficientHeat.defect_nonneg lam hlam.le
        (phaseCoefficients a b k z i) (coordinates a b k c i)
      have hhi : ThreePhaseCoefficientHeat.defectEnergy lam
          (phaseCoefficients a b k z i) (coordinates a b k c i) ≤ defectEnergy a b k lam z c :=
        Finset.single_le_sum (fun j _ => ThreePhaseCoefficientHeat.defect_nonneg lam hlam.le _ _)
          (Finset.mem_univ i)
      rw [h] at hhi
      linarith
    constructor
    · intro j
      apply coordinates_injective a b k
      funext i
      have hz := ((ThreePhaseCoefficientHeat.defect_zero_iff lam hlam _ _).mp (hi i)).1 j
      exact hz.trans (mean_coordinates a b k z i).symm
    · apply coordinates_injective a b k
      funext i
      have hc := ((ThreePhaseCoefficientHeat.defect_zero_iff lam hlam _ _).mp (hi i)).2
      simpa [coordinates] using hc
  · rintro ⟨hz, hc⟩
    apply Finset.sum_eq_zero
    intro i _
    apply (ThreePhaseCoefficientHeat.defect_zero_iff lam hlam _ _).mpr
    constructor
    · intro j
      change coordinates a b k (z j) i = _
      rw [hz j, mean_coordinates]
    · simp [hc, coordinates]

/-- Positive-time contraction, with the positive closure metric assumption retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abe64202b8b86c97d84276c7ec74fc5b8688eb81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
