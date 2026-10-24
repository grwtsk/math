# AEStronglyMeasurable'.aeStronglyMeasurable'_of_measurableSpace_le_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ab74dc7-13f4-22d7-a885-0d10bb9fa684",
  "kind": "theorem",
  "lexical_name": "AEStronglyMeasurable'.aeStronglyMeasurable'_of_measurableSpace_le_on",
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
  "slug": "aestronglymeasurable-aestronglymeasurable-of-measurablespace-le-on--4afb028ce4ae73dfda05c764",
  "source": {
    "blob": "8c1a73eeeeee7c6e18848965fb9a2c9cf35d6972",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 158,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant94baa6ff2a61af3c92014a29d6bb8414da7194f41de987b780b5a1ac7a592e2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4afb028ce4ae73dfda05c7648ae64b7a455cd80cf3b0e1829306c1fd0a69a789",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variant94baa6ff2a61af3c92014a29d6bb8414da7194f41de987b780b5a1ac7a592e2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ab74dc7-13f4-22d7-a885-0d10bb9fa684`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AEStronglyMeasurable'.aeStronglyMeasurable'_of_measurableSpace_le_on {α E}
    {m m₂ m0 : MeasurableSpace α} {μ : Measure α} [TopologicalSpace E] [Zero E] (hm : m ≤ m0)
    {s : Set α} {f : α → E} (hs_m : MeasurableSet[m] s)
    (hs : ∀ t, MeasurableSet[m] (s ∩ t) → MeasurableSet[m₂] (s ∩ t))
    (hf : AEStronglyMeasurable[m] f μ) (hf_zero : f =ᵐ[μ.restrict sᶜ] 0) :
    AEStronglyMeasurable[m₂] f μ :=
  .of_measurableSpace_le_on hm hs_m hs hf hf_zero

variable {α F 𝕜 : Type*} {p : ℝ≥0∞} [RCLike 𝕜]
  -- 𝕜 for ℝ or ℂ
  -- F for a Lp submodule
  [NormedAddCommGroup F] [NormedSpace 𝕜 F]

section LpMeas

/-! ## The subset `lpMeas` of `Lp` functions a.e. measurable with respect to a sub-sigma-algebra -/


variable (F)

/-- `lpMeasSubgroup F m p μ` is the subspace of `Lp F p μ` containing functions `f` verifying
`AEStronglyMeasurable[m] f μ`, i.e. functions which are `μ`-a.e. equal to
an `m`-strongly measurable function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variant94baa6ff2a61af3c92014a29d6bb8414da7194f41de987b780b5a1ac7a592e2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant94baa6ff2a61af3c92014a29d6bb8414da7194f41de987b780b5a1ac7a592e2b.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c1a73eeeeee7c6e18848965fb9a2c9cf35d6972` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
