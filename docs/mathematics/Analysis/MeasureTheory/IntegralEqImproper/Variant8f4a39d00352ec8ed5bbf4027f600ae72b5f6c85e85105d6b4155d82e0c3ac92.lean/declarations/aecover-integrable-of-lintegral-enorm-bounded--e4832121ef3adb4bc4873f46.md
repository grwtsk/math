# AECover.integrable_of_lintegral_enorm_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e4f0937-ee57-ede4-deab-e165cfa1e200",
  "kind": "theorem",
  "lexical_name": "AECover.integrable_of_lintegral_enorm_bounded",
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
  "slug": "aecover-integrable-of-lintegral-enorm-bounded--e4832121ef3adb4bc4873f46",
  "source": {
    "blob": "a9cd29cd83cffc82b346ff6c62d50ebd2c26c519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 403,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant8f4a39d00352ec8ed5bbf4027f600ae72b5f6c85e85105d6b4155d82e0c3ac92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4832121ef3adb4bc4873f468962a7f4c8e17c27d4a0f377dfa728e9e8a6d58c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegralEqImproper/Variant8f4a39d00352ec8ed5bbf4027f600ae72b5f6c85e85105d6b4155d82e0c3ac92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e4f0937-ee57-ede4-deab-e165cfa1e200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AECover.integrable_of_lintegral_enorm_bounded [l.NeBot] [l.IsCountablyGenerated]
    {φ : ι → Set α} (hφ : AECover μ l φ) {f : α → E} (I : ℝ) (hfm : AEStronglyMeasurable f μ)
    (hbounded : ∀ᶠ i in l, ∫⁻ x in φ i, ‖f x‖ₑ ∂μ ≤ ENNReal.ofReal I) : Integrable f μ := by
  refine ⟨hfm, (le_of_tendsto ?_ hbounded).trans_lt ENNReal.ofReal_lt_top⟩
  exact hφ.lintegral_tendsto_of_countably_generated hfm.enorm

@[deprecated (since := "2025-01-22")]
alias AECover.integrable_of_lintegral_nnnorm_bounded :=
  AECover.integrable_of_lintegral_enorm_bounded

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant8f4a39d00352ec8ed5bbf4027f600ae72b5f6c85e85105d6b4155d82e0c3ac92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant8f4a39d00352ec8ed5bbf4027f600ae72b5f6c85e85105d6b4155d82e0c3ac92.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9cd29cd83cffc82b346ff6c62d50ebd2c26c519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
