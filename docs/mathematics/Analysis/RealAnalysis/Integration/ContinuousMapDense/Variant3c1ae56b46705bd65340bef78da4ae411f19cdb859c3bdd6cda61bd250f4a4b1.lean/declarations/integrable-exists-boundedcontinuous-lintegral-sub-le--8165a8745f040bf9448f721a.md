# Integrable.exists_boundedContinuous_lintegral_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a998085b-281b-282a-0a2b-e28dcca9eead",
  "kind": "theorem",
  "lexical_name": "Integrable.exists_boundedContinuous_lintegral_sub_le",
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
  "slug": "integrable-exists-boundedcontinuous-lintegral-sub-le--8165a8745f040bf9448f721a",
  "source": {
    "blob": "8e2e0b3b8f7e7468d1389b8f4ab139bb492e1f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 307,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8165a8745f040bf9448f721added1ed6246801a789c868cd00f6d54354df6ace",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a998085b-281b-282a-0a2b-e28dcca9eead`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.exists_boundedContinuous_lintegral_sub_le [μ.WeaklyRegular] {f : α → E}
    (hf : Integrable f μ) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∃ g : α →ᵇ E, ∫⁻ x, ‖f x - g x‖ₑ ∂μ ≤ ε ∧ Integrable g μ := by
  obtain ⟨g, hg, hg_mem⟩ := (memLp_one_iff_integrable.2 hf).exists_boundedContinuous_eLpNorm_sub_le
    ENNReal.one_ne_top hε
  exact ⟨g, by
    rwa [eLpNorm_one_eq_lintegral_enorm
      ((memLp_one_iff_integrable.2 hf).sub hg_mem).aestronglyMeasurable] at hg,
    memLp_one_iff_integrable.1 hg_mem⟩

/-- Any integrable function can be approximated by bounded continuous functions,
version in terms of `∫`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e2e0b3b8f7e7468d1389b8f4ab139bb492e1f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
