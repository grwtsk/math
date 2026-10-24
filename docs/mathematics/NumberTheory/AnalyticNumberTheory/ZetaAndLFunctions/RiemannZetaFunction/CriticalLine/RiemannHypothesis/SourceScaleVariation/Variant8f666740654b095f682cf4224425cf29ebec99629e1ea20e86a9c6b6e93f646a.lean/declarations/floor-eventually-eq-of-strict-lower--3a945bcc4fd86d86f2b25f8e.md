# floor_eventually_eq_of_strict_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a4bef09-49f4-f778-01af-87d30281038f",
  "kind": "theorem",
  "lexical_name": "floor_eventually_eq_of_strict_lower",
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
  "slug": "floor-eventually-eq-of-strict-lower--3a945bcc4fd86d86f2b25f8e",
  "source": {
    "blob": "3438d467373894453bb4fa4e905b6ef4b654ae42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaleVariation/Variant8f666740654b095f682cf4224425cf29ebec99629e1ea20e86a9c6b6e93f646a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a945bcc4fd86d86f2b25f8e1dd16a7ee182ee5433b5bdb3c487a1221130e4f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaleVariation/Variant8f666740654b095f682cf4224425cf29ebec99629e1ea20e86a9c6b6e93f646a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a4bef09-49f4-f778-01af-87d30281038f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem floor_eventually_eq_of_strict_lower {f : ℝ → ℝ} {A : ℝ}
    (hf : ContinuousAt f A) (hlo : (⌊f A⌋₊ : ℝ) < f A) :
    ∀ᶠ B in nhds A, ⌊f B⌋₊ = ⌊f A⌋₊ := by
  have hl : ∀ᶠ B in nhds A, (⌊f A⌋₊ : ℝ) < f B :=
    hf.eventually (eventually_gt_nhds hlo)
  have hu : ∀ᶠ B in nhds A, f B < (⌊f A⌋₊ : ℝ) + 1 :=
    hf.eventually (eventually_lt_nhds (Nat.lt_floor_add_one (f A)))
  filter_upwards [hl, hu] with B hB hB'
  exact (Nat.floor_eq_iff ((Nat.cast_nonneg _ : (0 : ℝ) ≤ ⌊f A⌋₊).trans hB.le)).2
    ⟨hB.le, hB'⟩

end
end FormalResearch.RiemannHypothesis.SourceScaleVariation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaleVariation/Variant8f666740654b095f682cf4224425cf29ebec99629e1ea20e86a9c6b6e93f646a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaleVariation/Variant8f666740654b095f682cf4224425cf29ebec99629e1ea20e86a9c6b6e93f646a.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3438d467373894453bb4fa4e905b6ef4b654ae42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
