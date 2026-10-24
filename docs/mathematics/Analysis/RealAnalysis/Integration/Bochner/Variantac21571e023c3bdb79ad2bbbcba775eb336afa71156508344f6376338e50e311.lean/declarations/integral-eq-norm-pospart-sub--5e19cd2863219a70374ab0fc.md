# integral_eq_norm_posPart_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e03c63fb3ab38f01e8a2e8f6fa0399dce565750",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 753,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac21571e023c3bdb79ad2bbbcba775eb336afa71156508344f6376338e50e311.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97eaf5ec-d8d7-752a-6a8a-d2ba64393a68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7782dd4-925e-cf88-0401-d4b050bafe72",
  "kind": "theorem",
  "lexical_name": "integral_eq_norm_posPart_sub",
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
  "slug": "integral-eq-norm-pospart-sub--5e19cd2863219a70374ab0fc",
  "source": {
    "blob": "3e03c63fb3ab38f01e8a2e8f6fa0399dce565750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 820,
    "line": 753,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variantac21571e023c3bdb79ad2bbbcba775eb336afa71156508344f6376338e50e311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e19cd2863219a70374ab0fc8faab2305696d3dd0d5d08f306de3433ead9479a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bochner/Variantac21571e023c3bdb79ad2bbbcba775eb336afa71156508344f6376338e50e311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7782dd4-925e-cf88-0401-d4b050bafe72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 753–820.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_eq_norm_posPart_sub (f : α →₁[μ] ℝ) :
    integral f = ‖Lp.posPart f‖ - ‖Lp.negPart f‖ := by
  -- Use `isClosed_property` and `isClosed_eq`
  refine' @isClosed_property _ _ _ ((↑) : (α →₁ₛ[μ] ℝ) → α →₁[μ] ℝ)
      (fun f : α →₁[μ] ℝ => integral f = ‖Lp.posPart f‖ - ‖Lp.negPart f‖)
      (simpleFunc.denseRange one_ne_top) (isClosed_eq _ _) _ f
  · simp only [integral]
    exact cont _
  · refine' Continuous.sub (continuous_norm.comp Lp.continuous_posPart)
      (continuous_norm.comp Lp.continuous_negPart)
  -- Show that the property holds for all simple functions in the `L¹` space.
  · intro s
    norm_cast
    exact SimpleFunc.integral_eq_norm_posPart_sub _
#align measure_theory.L1.integral_eq_norm_pos_part_sub MeasureTheory.L1.integral_eq_norm_posPart_sub

end PosPart

end IntegrationInL1

end L1

/-!
## The Bochner integral on functions

Define the Bochner integral on functions generally to be the `L1` Bochner integral, for integrable
functions, and 0 otherwise; prove its basic properties.
-/

variable [NormedAddCommGroup E] [NormedSpace ℝ E] [hE : CompleteSpace E] [NontriviallyNormedField 𝕜]
  [NormedSpace 𝕜 E] [SMulCommClass ℝ 𝕜 E] [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]
  {G : Type*} [NormedAddCommGroup G] [NormedSpace ℝ G]

section

open scoped Classical

/-- The Bochner integral -/
irreducible_def integral {_ : MeasurableSpace α} (μ : Measure α) (f : α → G) : G :=
  if _ : CompleteSpace G then
    if hf : Integrable f μ then L1.integral (hf.toL1 f) else 0
  else 0
#align measure_theory.integral MeasureTheory.integral

end

/-! In the notation for integrals, an expression like `∫ x, g ‖x‖ ∂μ` will not be parsed correctly,
  and needs parentheses. We do not set the binding power of `r` to `0`, because then
  `∫ x, f x = 0` will be parsed incorrectly. -/

@[inherit_doc MeasureTheory.integral]
notation3 "∫ "(...)", "r:60:(scoped f => f)" ∂"μ:70 => integral μ r

@[inherit_doc MeasureTheory.integral]
notation3 "∫ "(...)", "r:60:(scoped f => integral volume f) => r

@[inherit_doc MeasureTheory.integral]
notation3 "∫ "(...)" in "s", "r:60:(scoped f => f)" ∂"μ:70 => integral (Measure.restrict μ s) r

@[inherit_doc MeasureTheory.integral]
notation3 "∫ "(...)" in "s", "r:60:(scoped f => integral (Measure.restrict volume s) f) => r

section Properties

open ContinuousLinearMap MeasureTheory.SimpleFunc

variable {f g : α → E} {m : MeasurableSpace α} {μ : Measure α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bochner/Variantac21571e023c3bdb79ad2bbbcba775eb336afa71156508344f6376338e50e311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variantac21571e023c3bdb79ad2bbbcba775eb336afa71156508344f6376338e50e311.lean#L753).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e03c63fb3ab38f01e8a2e8f6fa0399dce565750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
