# exists_fixedElement_realizesRequiredSign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e8c1145-0e53-84c7-9bbf-df9660b63753",
  "kind": "theorem",
  "lexical_name": "exists_fixedElement_realizesRequiredSign",
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
  "slug": "exists-fixedelement-realizesrequiredsign--47cd5bef9c41631b49f71e8f",
  "source": {
    "blob": "1b133e9d19caf02a52f34f18607ebfe291eaf3f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 74,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMRealRescaling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47cd5bef9c41631b49f71e8fb3ba966a181d9475969a9cd8d13aa715e2342505",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e8c1145-0e53-84c7-9bbf-df9660b63753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_fixedElement_realizesRequiredSign
    (R : RealRescalingInterface E F)
    (v : OddSignRow E)
    (P : TracePolarizationData E) :
    ∃ f : E,
      galoisComplexConj E f = f ∧ f ≠ 0 ∧
        FixedElementRealizesRequiredSign E v P f := by
  let s := requiredSignPattern E F R v P
  obtain ⟨a, ha⟩ :=
    exists_realEmbeddingVector_realizesSigns
      (Module.finBasis ℚ F) R.order s
  have hn : 0 < Module.finrank ℚ F := Module.finrank_pos
  letI : Nonempty (Fin (Module.finrank ℚ F)) := ⟨⟨0, hn⟩⟩
  have ha0 : a ≠ 0 :=
    ne_zero_of_realizesSigns R.order s ha
  have hf0 : R.include a ≠ 0 :=
    (map_ne_zero R.include.toRingHom).mpr ha0
  refine ⟨R.include a, R.fixed a, hf0, ?_⟩
  intro σ
  obtain ⟨i, hσ | hσ⟩ := R.covers σ
  · subst σ
    constructor
    · intro hs
      have hp := (ha i).1 hs
      rw [R.real_eval]
      exact hp
    · intro hs
      have hn' := (ha i).2 hs
      rw [R.real_eval]
      exact hn'
  · subst σ
    have hrep :
        ((requiredRescalingSign E v P).value (R.representative i) = 1 →
          0 < (complexEmbeddingAt E (R.representative i) (R.include a)).re) ∧
        ((requiredRescalingSign E v P).value (R.representative i) = -1 →
          (complexEmbeddingAt E (R.representative i) (R.include a)).re < 0) := by
      constructor
      · intro hs
        have hp := (ha i).1 hs
        rw [R.real_eval]
        exact hp
      · intro hs
        have hn' := (ha i).2 hs
        rw [R.real_eval]
        exact hn'
    have hval := requiredRescalingSign_conj E v P (R.representative i)
    have hemb := complexEmbeddingAt_conj_eq_of_fixed E (R.fixed a)
      (R.representative i)
    constructor
    · intro hs
      rw [hval] at hs
      have hp := hrep.1 hs
      simpa [hemb] using hp
    · intro hs
      rw [hval] at hs
      have hn' := hrep.2 hs
      simpa [hemb] using hn'

/-- The real-rescaling interface plus finite weak approximation produces an
actual sign-controlled CM polarization parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMRealRescaling.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b133e9d19caf02a52f34f18607ebfe291eaf3f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
