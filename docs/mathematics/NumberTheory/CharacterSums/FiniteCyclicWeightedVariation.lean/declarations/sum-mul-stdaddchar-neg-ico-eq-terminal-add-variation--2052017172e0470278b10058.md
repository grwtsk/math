# sum_mul_stdAddChar_neg_Ico_eq_terminal_add_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76faa5e2-737a-8b52-e843-130b29478d37",
  "kind": "theorem",
  "lexical_name": "sum_mul_stdAddChar_neg_Ico_eq_terminal_add_variation",
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
  "slug": "sum-mul-stdaddchar-neg-ico-eq-terminal-add-variation--2052017172e0470278b10058",
  "source": {
    "blob": "04d0569a302350bf6597cc870fcf957e0be61200",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 54,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2052017172e0470278b10058d7dc2899aa040557d4d224d8978f9029dbee5007",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76faa5e2-737a-8b52-e843-130b29478d37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mul_stdAddChar_neg_Ico_eq_terminal_add_variation
    (a : ℕ → ℂ)
    (t : ZMod q)
    (A B : ℕ)
    (hAB : A < B) :
    (∑ n ∈ Finset.Ico A B,
      a n * ZMod.stdAddChar (-((n : ZMod q) * t))) =
      a (B - 1) *
          (∑ n ∈ Finset.Ico A B,
            ZMod.stdAddChar (-((n : ZMod q) * t))) +
        ∑ k ∈ Finset.Ico A (B - 1),
          (a k - a (k + 1)) *
            (∑ n ∈ Finset.Ico A (k + 1),
              ZMod.stdAddChar (-((n : ZMod q) * t))) := by
  classical
  let g : ℕ → ℂ := fun n =>
    if A ≤ n then ZMod.stdAddChar (-((n : ZMod q) * t)) else 0
  have hpartial (K : ℕ) :
      (∑ n ∈ Finset.range K, g n) =
        ∑ n ∈ Finset.Ico A K,
          ZMod.stdAddChar (-((n : ZMod q) * t)) := by
    unfold g
    rw [← Finset.sum_filter]
    have hset :
        (Finset.range K).filter (fun n => A ≤ n) = Finset.Ico A K := by
      ext n
      simp [Finset.mem_Ico]
    rw [hset]
  have hparts := Finset.sum_Ico_by_parts a g hAB
  simp only [smul_eq_mul] at hparts
  simp_rw [hpartial] at hparts
  have hleft :
      (∑ n ∈ Finset.Ico A B, a n * g n) =
        ∑ n ∈ Finset.Ico A B,
          a n * ZMod.stdAddChar (-((n : ZMod q) * t)) := by
    apply Finset.sum_congr rfl
    intro n hn
    have hAn : A ≤ n := (Finset.mem_Ico.mp hn).1
    simp [g, hAn]
  rw [hleft] at hparts
  rw [hparts]
  simp only [Finset.Ico_self, Finset.sum_empty, mul_zero, sub_zero]
  rw [sub_eq_add_neg, ← Finset.sum_neg_distrib]
  apply congrArg (fun z =>
    a (B - 1) *
        (∑ n ∈ Finset.Ico A B,
          ZMod.stdAddChar (-((n : ZMod q) * t))) + z)
  apply Finset.sum_congr rfl
  intro k _hk
  ring

/-- Uniform interval cancellation transfers to arbitrary coefficients through
exact finite variation.  Empty and reversed intervals are included. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04d0569a302350bf6597cc870fcf957e0be61200` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
