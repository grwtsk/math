# lintegral_restrict_iUnion_of_directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26319c92-754e-7f2c-d969-fe517ee652e6",
  "kind": "theorem",
  "lexical_name": "lintegral_restrict_iUnion_of_directed",
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
  "slug": "lintegral-restrict-iunion-of-directed--31e46175e24ba0ce4595f8d7",
  "source": {
    "blob": "66ebaf55a63f8a691411eebfd3dca650a66650bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 971,
    "line": 963,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31e46175e24ba0ce4595f8d7d977e48a36e8c9ff1d791278a5e0874e13ffd2f0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26319c92-754e-7f2c-d969-fe517ee652e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 963–971.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_restrict_iUnion_of_directed {ι : Type*} [Countable ι]
    (f : α →ₛ ℝ≥0∞) {s : ι → Set α} (hd : Directed (· ⊆ ·) s) (μ : Measure α) :
    f.lintegral (μ.restrict (⋃ i, s i)) = ⨆ i, f.lintegral (μ.restrict (s i)) := by
  simp only [lintegral, Measure.restrict_iUnion_apply_eq_iSup hd (measurableSet_preimage ..),
    ENNReal.mul_iSup]
  refine finsetSum_iSup fun i j ↦ (hd i j).imp fun k ⟨hik, hjk⟩ ↦ fun a ↦ ?_
  -- TODO https://github.com/leanprover-community/mathlib4/pull/14739 make `gcongr` close this goal
  constructor <;> · gcongr; refine Measure.restrict_mono ?_ le_rfl _; assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean#L963).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ebaf55a63f8a691411eebfd3dca650a66650bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
