# twoKernelTwistedMertensEnergy_of_halfOdd_and_chiFour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c6a5cbc-0d34-b702-f238-23922713ebcd",
  "kind": "theorem",
  "lexical_name": "twoKernelTwistedMertensEnergy_of_halfOdd_and_chiFour",
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
  "slug": "twokerneltwistedmertensenergy-of-halfodd-and-chifour--5f07b0cf1f05b11ef09e9b98",
  "source": {
    "blob": "c86320aa4fcaa58bb6a06247fa559e8be971d437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 250,
    "path": "GRWTSK/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f07b0cf1f05b11ef09e9b9889c0c48191feeb7fc600dcfb286ecafd0720a2b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c6a5cbc-0d34-b702-f238-23922713ebcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoKernelTwistedMertensEnergy_of_halfOdd_and_chiFour
    (hOdd : DyadicHalfScaleOddMertensSquareRootEnergy)
    (hChi : DyadicChiFourTwistedMertensSquareRootEnergy) :
    DyadicTwoKernelTwistedMertensSquareRootEnergy := by
  intro δ hδ
  obtain ⟨C₀, hC₀, hOddScale⟩ := hOdd δ hδ
  obtain ⟨C₁, hC₁, hChiScale⟩ := hChi δ hδ
  refine ⟨C₀ + C₁, add_nonneg hC₀ hC₁, ?_⟩
  intro j b d r hb hd hNonunit hr
  let : NeZero d := ⟨by
    have hd' := (Finset.mem_filter.mp hd).1
    exact ne_of_gt (Finset.mem_Ico.mp hd').1⟩
  dsimp only
  have hrCases : r = 0 ∨ r = 1 := by omega
  rcases hrCases with rfl | rfl
  · rw [exceptionalKernelTwistedMertensPrefix_even_eq_odd_half
      b d hNonunit, Complex.norm_real, Real.norm_eq_abs, sq_abs]
    exact (hOddScale j b hb).trans (by gcongr; linarith)
  · rw [exceptionalKernelTwistedMertensPrefix_odd_eq_chiFour
      b d hNonunit]
    exact (hChiScale j b hb).trans (by gcongr; linarith)

/-- Existing pointwise ordinary-Mertens control plus the independent `chi_4`
energy premise supplies the exceptional kernel energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c86320aa4fcaa58bb6a06247fa559e8be971d437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
