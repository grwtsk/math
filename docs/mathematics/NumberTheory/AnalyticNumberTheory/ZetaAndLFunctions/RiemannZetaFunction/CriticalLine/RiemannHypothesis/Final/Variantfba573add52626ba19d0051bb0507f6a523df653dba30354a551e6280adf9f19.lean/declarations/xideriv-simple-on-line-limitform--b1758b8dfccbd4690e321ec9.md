# xiDeriv_simple_on_line_limitForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:551a2be8-bf60-dedf-62c7-89d52adcc006",
  "kind": "theorem",
  "lexical_name": "xiDeriv_simple_on_line_limitForm",
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
  "slug": "xideriv-simple-on-line-limitform--b1758b8dfccbd4690e321ec9",
  "source": {
    "blob": "78c32ce3fb65e3ec681a110d62a62c1070edd465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 235,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantfba573add52626ba19d0051bb0507f6a523df653dba30354a551e6280adf9f19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1758b8dfccbd4690e321ec988532c4929df56a48b2fa17dff7a613530d0b905",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantfba573add52626ba19d0051bb0507f6a523df653dba30354a551e6280adf9f19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:551a2be8-bf60-dedf-62c7-89d52adcc006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiDeriv_simple_on_line_limitForm :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (2 - kappaXi 1 vFlat - ε) * (Ncount T (2 * T) : ℝ) ≤ (N0simple T (2 * T) : ℝ) ∧
      (3 / 2 - kappaXi 1 vFlat / 2 - ε) * (Ncount T (2 * T) : ℝ) ≤ (Ndist T (2 * T) : ℝ) := by
  have hκ : ContinuousOn (fun lam => kappaXi lam vFlat) (Set.Icc (1/2) 1) :=
    continuousOn_kappaXi_vFlat.mono fun x hx => ⟨by linarith [hx.1], hx.2⟩
  have hA := eps_form_of_continuousOn (g := fun lam => 2 - kappaXi lam vFlat)
    (N := fun T => (Ncount T (2 * T) : ℝ)) (lower := fun T => (N0simple T (2 * T) : ℝ))
    (continuousOn_const.sub hκ) (fun _ => Nat.cast_nonneg _)
    (fun lam hl1 hl2 ε hε => by
      obtain ⟨T₀, hT₀⟩ := xiDeriv_fixedLamBounds (by linarith) hl2 ε hε
      exact ⟨T₀, fun T hT => (hT₀ T hT).1⟩)
  have hB := eps_form_of_continuousOn (g := fun lam => 3 / 2 - kappaXi lam vFlat / 2)
    (N := fun T => (Ncount T (2 * T) : ℝ)) (lower := fun T => (Ndist T (2 * T) : ℝ))
    (continuousOn_const.sub (hκ.div_const 2)) (fun _ => Nat.cast_nonneg _)
    (fun lam hl1 hl2 ε hε => by
      obtain ⟨T₀, hT₀⟩ := xiDeriv_fixedLamBounds (by linarith) hl2 ε hε
      exact ⟨T₀, fun T hT => (hT₀ T hT).2⟩)
  intro ε hε
  obtain ⟨T₁, hT₁⟩ := hA ε hε
  obtain ⟨T₂, hT₂⟩ := hB ε hε
  exact ⟨max T₁ T₂, fun T hT =>
    ⟨hT₁ T ((le_max_left _ _).trans hT), hT₂ T ((le_max_right _ _).trans hT)⟩⟩

/-- Non-vacuity companions.  The counted sets are finite — so Ncount (a finsum) and N0simple/Ndist (ncard's) are
honest cardinalities, not Lean's junk value 0 for infinite sets — and the denominator N_{ξ′}(T,2T) → ∞. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantfba573add52626ba19d0051bb0507f6a523df653dba30354a551e6280adf9f19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantfba573add52626ba19d0051bb0507f6a523df653dba30354a551e6280adf9f19.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78c32ce3fb65e3ec681a110d62a62c1070edd465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
