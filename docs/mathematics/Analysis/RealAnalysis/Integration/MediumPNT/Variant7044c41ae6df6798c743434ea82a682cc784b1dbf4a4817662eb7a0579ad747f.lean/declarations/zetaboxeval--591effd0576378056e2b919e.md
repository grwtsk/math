# ZetaBoxEval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e6424e5ffdfa1d4ba46e7573ad6c1572df4f529",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1581,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7aff9c1-e363-7e66-e974-26f1d48b6c78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:011c8a15-ad81-8b78-8427-e81e8d529167",
  "kind": "theorem",
  "lexical_name": "ZetaBoxEval",
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
  "slug": "zetaboxeval--591effd0576378056e2b919e",
  "source": {
    "blob": "7e6424e5ffdfa1d4ba46e7573ad6c1572df4f529",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1600,
    "line": 1581,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:591effd0576378056e2b919e606eebb33548d1dbbc378fc232be34785a9b484c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:011c8a15-ad81-8b78-8427-e81e8d529167`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1581–1600.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZetaBoxEval {SmoothingF : ℝ → ℝ}
    (suppSmoothingF : Function.support SmoothingF ⊆ Icc (1 / 2) 2)
    (mass_one : ∫ x in Ioi 0, SmoothingF x / x = 1)
    (ContDiffSmoothingF : ContDiff ℝ 1 SmoothingF) :
    ∃ C, ∀ᶠ ε in (nhdsWithin 0 (Ioi 0)), ∀ X : ℝ, 0 ≤ X →
    ‖𝓜 (fun x ↦ (Smooth1 SmoothingF ε x : ℂ)) 1 * X - X‖ ≤ C * ε * X := by
  have := MellinOfSmooth1c ContDiffSmoothingF suppSmoothingF mass_one
  clear suppSmoothingF mass_one ContDiffSmoothingF
  rw[Asymptotics.isBigO_iff] at this
  obtain ⟨C, hC⟩ := this
  use C
  have εpos : ∀ᶠ (ε : ℝ) in nhdsWithin 0 (Ioi 0), ε > 0 :=
    eventually_mem_of_tendsto_nhdsWithin fun ⦃U⦄ hU ↦ hU
  filter_upwards [hC, εpos] with ε hC εpos
  rw[id_eq, norm_of_nonneg (le_of_lt εpos)] at hC
  intro X Xnne
  nth_rw 2 [← one_mul (X : ℂ)]
  rw[← sub_mul, norm_mul, norm_real, norm_of_nonneg Xnne]
  exact mul_le_mul_of_nonneg_right hC Xnne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant7044c41ae6df6798c743434ea82a682cc784b1dbf4a4817662eb7a0579ad747f.lean#L1581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e6424e5ffdfa1d4ba46e7573ad6c1572df4f529` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
