# lintegral_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5666d349-91e3-a5e4-426c-80ac6e7fb47d",
  "kind": "theorem",
  "lexical_name": "lintegral_lt_top",
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
  "slug": "lintegral-lt-top--5e300c5286cae709988f16c0",
  "source": {
    "blob": "66ebaf55a63f8a691411eebfd3dca650a66650bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1129,
    "line": 1119,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e300c5286cae709988f16c075110a9948c2aac1049967eddaf3907e87738496",
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

Occurrence: `result:5666d349-91e3-a5e4-426c-80ac6e7fb47d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1119–1129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_lt_top {f : α →ₛ ℝ≥0∞} (hm : f.FinMeasSupp μ) (hf : ∀ᵐ a ∂μ, f a ≠ ∞) :
    f.lintegral μ < ∞ := by
  refine sum_lt_top.2 fun a ha => ?_
  rcases eq_or_ne a ∞ with (rfl | ha)
  · simp only [ae_iff, Ne, Classical.not_not] at hf
    simp [Set.preimage, hf]
  · by_cases ha0 : a = 0
    · subst a
      simp
    · exact mul_lt_top ha.lt_top (finMeasSupp_iff.1 hm _ ha0)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean#L1119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ebaf55a63f8a691411eebfd3dca650a66650bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
