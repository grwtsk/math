# twoMomentRows_zero_iff_two_cofactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32a8ef52-98de-c164-7509-54012fe35112",
  "kind": "theorem",
  "lexical_name": "twoMomentRows_zero_iff_two_cofactors",
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
  "slug": "twomomentrows-zero-iff-two-cofactors--f6f801cfd778bb206e6e5b43",
  "source": {
    "blob": "3fc41b00fb882d2dc93f46e9d2bb79bafec780d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 163,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6f801cfd778bb206e6e5b4393768031b46cf198065ca02069ffeddf443b8708",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32a8ef52-98de-c164-7509-54012fe35112`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoMomentRows_zero_iff_two_cofactors (u : Combination 3) :
    (fourTentOrdinaryRow u = 0 ∧ fourTentReciprocalRow u = 0) ↔
      ∃ a b : ℂ, ∀ i : Fin 4,
        u i = a * stageFourKernelVector i + b * stageFiveKernelVector i := by
  constructor
  · rintro ⟨hOrd, hRec⟩
    let a : ℂ := u (2 : Fin 4) / cofactorTwo
    let b : ℂ := u (3 : Fin 4) / cofactorTwo
    have ha : cofactorTwo * a = u (2 : Fin 4) := by
      dsimp [a]
      field_simp [cofactorTwo_ne_zero]
    have hb : cofactorTwo * b = u (3 : Fin 4) := by
      dsimp [b]
      field_simp [cofactorTwo_ne_zero]
    refine ⟨a, b, ?_⟩
    intro i
    have hscaled := scaled_decomposition_of_zero_rows u hOrd hRec i
    apply (mul_left_cancel₀ cofactorTwo_ne_zero)
    calc
      cofactorTwo * u i =
          u (2 : Fin 4) * stageFourKernelVector i +
            u (3 : Fin 4) * stageFiveKernelVector i := hscaled
      _ = (cofactorTwo * a) * stageFourKernelVector i +
            (cofactorTwo * b) * stageFiveKernelVector i := by
              rw [ha, hb]
      _ = cofactorTwo * (a * stageFourKernelVector i +
            b * stageFiveKernelVector i) := by ring
  · rintro ⟨a, b, hu⟩
    have heq :
        u = fun i => a * stageFourKernelVector i +
          b * stageFiveKernelVector i := by
      funext i
      exact hu i
    rw [heq]
    constructor
    · calc
        fourTentOrdinaryRow (fun i =>
            a * stageFourKernelVector i + b * stageFiveKernelVector i) =
          a * fourTentOrdinaryRow stageFourKernelVector +
            b * fourTentOrdinaryRow stageFiveKernelVector := by
              unfold fourTentOrdinaryRow
              ring
        _ = 0 := by rw [stageFour_ordinary_zero, stageFive_ordinary_zero]; ring
    · calc
        fourTentReciprocalRow (fun i =>
            a * stageFourKernelVector i + b * stageFiveKernelVector i) =
          a * fourTentReciprocalRow stageFourKernelVector +
            b * fourTentReciprocalRow stageFiveKernelVector := by
              unfold fourTentReciprocalRow
              ring
        _ = 0 := by rw [stageFour_reciprocal_zero, stageFive_reciprocal_zero]; ring

/-- A literal physical four-tent source test, with all original stages. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc41b00fb882d2dc93f46e9d2bb79bafec780d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
