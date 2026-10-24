# finite_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee24475f-7fcd-99d6-2de1-e4f83f4e463c",
  "kind": "theorem",
  "lexical_name": "finite_sound",
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
  "slug": "finite-sound--290fda0d8045e98cf8e13afa",
  "source": {
    "blob": "48bec43ae1bb96ed652f9e225fc6fa33416eb3a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 87,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:290fda0d8045e98cf8e13afaf4b9755abd76511b4ce2f937d8257479b8632faf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee24475f-7fcd-99d6-2de1-e4f83f4e463c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_sound (N : ℕ) (c : QComplex) (p : Plan N) (hp : Admissible N c p) :
    ‖approximation N (QComplex.embed c) - QComplex.embed (finiteValueQ N c p)‖ ≤
        (finiteValueErrorQ N c p : ℝ) ∧
      ‖approximationSlope N (QComplex.embed c) - QComplex.embed (finiteSlopeQ N c p)‖ ≤
        (finiteSlopeErrorQ N c p : ℝ) := by
  have hv : ‖(∑ i : Fin N, logPower ((i.1 : ℝ) + 1) (-QComplex.embed c)) -
      ∑ i : Fin N, QComplex.embed (GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute
        ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i)).value‖ ≤
      ∑ i : Fin N, ((GRWTSK.Analysis.Complex.RationalPowerEvaluation.compute
        ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i)).error : ℝ) := by
    rw [← Finset.sum_sub_distrib]
    refine (norm_sum_le _ _).trans (Finset.sum_le_sum ?_)
    intro i _
    simpa only [Rat.cast_add, Rat.cast_natCast, Rat.cast_one] using
      power_sound ((i.1 : ℚ) + 1) c (p.prefix i) (hp.2.2.2.1 i)
  have hd : ‖(∑ i : Fin N, -(Real.log ((i.1 : ℝ) + 1) : ℂ) *
        logPower ((i.1 : ℝ) + 1) (-QComplex.embed c)) -
      ∑ i : Fin N, QComplex.embed (powerLogValue ((i.1 : ℚ) + 1) c (p.prefix i))‖ ≤
      ∑ i : Fin N, (powerLogError ((i.1 : ℚ) + 1) c (p.prefix i) : ℝ) := by
    rw [← Finset.sum_sub_distrib]
    refine (norm_sum_le _ _).trans (Finset.sum_le_sum ?_)
    intro i _
    simpa only [Rat.cast_add, Rat.cast_natCast, Rat.cast_one] using
      powerLog_sound ((i.1 : ℚ) + 1) c (p.prefix i) (hp.2.2.2.1 i)
  have ht := power_sound (cutoffQ N) c p.terminal hp.2.2.2.2
  have hl := powerLog_sound (cutoffQ N) c p.terminal hp.2.2.2.2
  simp only [cast_cutoffQ] at ht hl
  have hH := FiniteZetaPowerEnclosure.PowerPacket.coefficient_error
    (terminalFactor N (QComplex.embed c)) _ _ _ ht
  have hJ := FiniteZetaPowerEnclosure.PowerPacket.coefficient_error
    (terminalSlope N (QComplex.embed c)) _ _ _ ht
  have hL := FiniteZetaPowerEnclosure.PowerPacket.coefficient_error
    (terminalFactor N (QComplex.embed c)) _ _ _ hl
  constructor
  · simp only [finiteValueQ, QComplex.embed_add, embed_sumQ, QComplex.embed_mul,
      embed_factorQ, approximation, finiteValueErrorQ, Rat.cast_add, Rat.cast_sum,
      Rat.cast_mul, QComplex.cast_rect]
    rw [add_sub_add_comm]
    exact (norm_add_le _ _).trans (add_le_add hv hH)
  · simp only [finiteSlopeQ, QComplex.embed_add, embed_sumQ, QComplex.embed_mul,
      embed_factorQ, embed_factorSlopeQ, approximationSlope, finiteSlopeErrorQ,
      Rat.cast_add, Rat.cast_sum, Rat.cast_mul, QComplex.cast_rect]
    rw [add_sub_add_comm, add_sub_add_comm]
    exact (norm_add_le _ _).trans
      (add_le_add hd ((norm_add_le _ _).trans (add_le_add hJ hL)))

/-- The squared guard excludes the actual pole before any raw-zeta theorem is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48bec43ae1bb96ed652f9e225fc6fa33416eb3a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
