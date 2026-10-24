# integral_continuousLinearMap_prod'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5424ee4-1c16-47db-872f-8a59d1d5042c",
  "kind": "lemma",
  "lexical_name": "integral_continuousLinearMap_prod'",
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
  "slug": "integral-continuouslinearmap-prod--942ede78559f2c4bd3b0c40b",
  "source": {
    "blob": "1801c1787071c513d02810bfe62707e7c4cb520e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 582,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variantcba9d4cc8a746c5f24960e850f54162414f8b420079baf26e37c7e8e7eaad49a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:942ede78559f2c4bd3b0c40b176edfc8d905a8c5faa733915be0d4d8c0326d48",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Prod/Variantcba9d4cc8a746c5f24960e850f54162414f8b420079baf26e37c7e8e7eaad49a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5424ee4-1c16-47db-872f-8a59d1d5042c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_continuousLinearMap_prod'
    (hLμ : Integrable (L.comp (.inl ℝ E F)) μ) (hLν : Integrable (L.comp (.inr ℝ E F)) ν) :
    ∫ p, L p ∂(μ.prod ν) = ∫ x, L.comp (.inl ℝ E F) x ∂μ + ∫ y, L.comp (.inr ℝ E F) y ∂ν := by
  simp_rw [← L.comp_inl_add_comp_inr]
  replace hLμ := ((memLp_one_iff_integrable.mpr hLμ).comp_fst ν).integrable le_rfl
  replace hLν := ((memLp_one_iff_integrable.mpr hLν).comp_snd μ).integrable le_rfl
  rw [integral_add hLμ hLν, integral_prod _ hLμ, integral_prod _ hLν]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Prod/Variantcba9d4cc8a746c5f24960e850f54162414f8b420079baf26e37c7e8e7eaad49a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variantcba9d4cc8a746c5f24960e850f54162414f8b420079baf26e37c7e8e7eaad49a.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1801c1787071c513d02810bfe62707e7c4cb520e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
