# integrable_of_norm_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:baac673e-2b7a-66ee-3e5a-7a87a73c5f17",
  "kind": "theorem",
  "lexical_name": "integrable_of_norm_sub_le",
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
  "slug": "integrable-of-norm-sub-le--c53b576881b137a7fa44d7c3",
  "source": {
    "blob": "64ffe648dbd9ee88a982acbaa79369cb7573210a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 629,
    "path": "GRWTSK/Analysis/MeasureTheory/Integrable/Variant878f63ec7e132bc28776da0f6fa24f28605cdc905a6d120e0c97717bf8a5f1c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c53b576881b137a7fa44d7c3e3c3b7509e6fc9d067d243aca182193cab245c5f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integrable/Variant878f63ec7e132bc28776da0f6fa24f28605cdc905a6d120e0c97717bf8a5f1c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baac673e-2b7a-66ee-3e5a-7a87a73c5f17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_of_norm_sub_le {f₀ f₁ : α → β} {g : α → ℝ} (hf₁_m : AEStronglyMeasurable f₁ μ)
    (hf₀_i : Integrable f₀ μ) (hg_i : Integrable g μ) (h : ∀ᵐ a ∂μ, ‖f₀ a - f₁ a‖ ≤ g a) :
    Integrable f₁ μ :=
  haveI : ∀ᵐ a ∂μ, ‖f₁ a‖ ≤ ‖f₀ a‖ + g a := by
    apply h.mono
    intro a ha
    calc
      ‖f₁ a‖ ≤ ‖f₀ a‖ + ‖f₀ a - f₁ a‖ := norm_le_insert _ _
      _ ≤ ‖f₀ a‖ + g a := by gcongr
  Integrable.mono' (hf₀_i.norm.add hg_i) hf₁_m this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integrable/Variant878f63ec7e132bc28776da0f6fa24f28605cdc905a6d120e0c97717bf8a5f1c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Integrable/Variant878f63ec7e132bc28776da0f6fa24f28605cdc905a6d120e0c97717bf8a5f1c5.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64ffe648dbd9ee88a982acbaa79369cb7573210a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
