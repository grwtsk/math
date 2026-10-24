# finite_contact_functions_no_linear_mix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa5f46fc-99c2-888e-0bb3-cf094967d68b",
  "kind": "theorem",
  "lexical_name": "finite_contact_functions_no_linear_mix",
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
  "slug": "finite-contact-functions-no-linear-mix--5311cd87a0f402b4e80896c2",
  "source": {
    "blob": "f7fdd9638aba7e0a551c1ae213b09466e5ab6f93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 115,
    "path": "GRWTSK/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5311cd87a0f402b4e80896c2011b5c72ab07e36f9042a11b02668087a819c482",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa5f46fc-99c2-888e-0bb3-cf094967d68b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_contact_functions_no_linear_mix {ι : Type*} [Fintype ι] [DecidableEq ι]
    {A : ℝ} (hA : 0 < A) (label : ι → ℕ) (positive : ∀ i, 0 < label i)
    (distinct : Function.Injective label) (contact : ι)
    (mix : (ι → ℝ) →ₗ[ℝ] (ι → ℝ)) (map : (ℝ → ℝ) →ₗ[ℝ] (ℝ → ℝ)) :
    ¬ ∀ i, map (Fintype.linearCombination ℝ
      (fun j ↦ windowResponse (Real.log (label contact : ℝ)) (label j))
      (mix (Pi.single i (1 : ℝ)))) = SourceGram.sourceVector A (label i) :=
  zero_coordinate_no_independent_linear_mix _ _
    (distinct_source_vectors_linearIndependent hA label positive distinct) contact
    (touching_window_response_eq_zero (Nat.succ_le_iff.mpr (positive contact))) mix map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7fdd9638aba7e0a551c1ae213b09466e5ab6f93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
