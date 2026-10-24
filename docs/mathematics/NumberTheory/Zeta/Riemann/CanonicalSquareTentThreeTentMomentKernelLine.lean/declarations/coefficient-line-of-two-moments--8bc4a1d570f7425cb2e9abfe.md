# coefficient_line_of_two_moments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f332caa4-ce7c-94d7-e6b6-f422033978fd",
  "kind": "theorem",
  "lexical_name": "coefficient_line_of_two_moments",
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
  "slug": "coefficient-line-of-two-moments--8bc4a1d570f7425cb2e9abfe",
  "source": {
    "blob": "67e134dffd7ea3fa74cbbf6db37a4c8a67597dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bc4a1d570f7425cb2e9abfe239e71cdb82ae4c2254089bd394d952669e1f292",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f332caa4-ce7c-94d7-e6b6-f422033978fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_line_of_two_moments
    (u : Combination 2)
    (hordinary : ordinaryMomentRow u = 0)
    (hreciprocal : reciprocalMomentRow u = 0) :
    ∃ c : ℂ, ∀ i : Fin 3, u i = c * correctedCoordinates i := by
  have hA :
      u (0 : Fin 3) * (realOrdinaryMoment 0 : ℂ) +
        u (1 : Fin 3) * (realOrdinaryMoment 1 : ℂ) +
        u (2 : Fin 3) * (realOrdinaryMoment 2 : ℂ) = 0 := hordinary
  have hB :
      u (0 : Fin 3) * (realMultiplicativeMoment 0 : ℂ) +
        u (1 : Fin 3) * (realMultiplicativeMoment 1 : ℂ) +
        u (2 : Fin 3) * (realMultiplicativeMoment 2 : ℂ) = 0 := hreciprocal
  have hfirst :
      u (0 : Fin 3) * cofactorTwo = u (2 : Fin 3) * cofactorZero := by
    unfold cofactorTwo cofactorZero
    linear_combination
      (realOrdinaryMoment 1 : ℂ) * hB -
        (realMultiplicativeMoment 1 : ℂ) * hA
  have hsecond :
      u (1 : Fin 3) * cofactorTwo = u (2 : Fin 3) * cofactorOne := by
    unfold cofactorTwo cofactorOne
    linear_combination
      (realMultiplicativeMoment 0 : ℂ) * hA -
        (realOrdinaryMoment 0 : ℂ) * hB
  let c : ℂ := u (2 : Fin 3) / cofactorTwo
  have hc0 : u (0 : Fin 3) = c * cofactorZero := by
    dsimp [c]
    calc
      u (0 : Fin 3) =
          (u (0 : Fin 3) * cofactorTwo) / cofactorTwo := by
        field_simp [cofactorTwo_ne_zero]
      _ = (u (2 : Fin 3) * cofactorZero) / cofactorTwo := by rw [hfirst]
      _ = (u (2 : Fin 3) / cofactorTwo) * cofactorZero := by ring
  have hc1 : u (1 : Fin 3) = c * cofactorOne := by
    dsimp [c]
    calc
      u (1 : Fin 3) =
          (u (1 : Fin 3) * cofactorTwo) / cofactorTwo := by
        field_simp [cofactorTwo_ne_zero]
      _ = (u (2 : Fin 3) * cofactorOne) / cofactorTwo := by rw [hsecond]
      _ = (u (2 : Fin 3) / cofactorTwo) * cofactorOne := by ring
  have hc2 : u (2 : Fin 3) = c * cofactorTwo := by
    dsimp [c]
    field_simp [cofactorTwo_ne_zero]
  refine ⟨c, ?_⟩
  intro i
  fin_cases i
  · simpa [correctedCoordinates] using hc0
  · simpa [correctedCoordinates] using hc1
  · simpa [correctedCoordinates] using hc2

/-- Exact algebraic two-moment kernel, not just the constructed
existential witness from the earlier module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e134dffd7ea3fa74cbbf6db37a4c8a67597dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
