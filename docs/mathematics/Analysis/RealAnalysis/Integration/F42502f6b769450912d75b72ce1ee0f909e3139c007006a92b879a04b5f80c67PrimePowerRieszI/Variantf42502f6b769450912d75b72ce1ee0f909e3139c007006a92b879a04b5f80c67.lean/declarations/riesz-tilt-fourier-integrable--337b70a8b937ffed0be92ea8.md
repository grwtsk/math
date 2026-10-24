# riesz_tilt_fourier_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1983d84dc0388d89ad0116c8e3532e9794195e8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebe0c747-032c-d783-3a41-9a20007808b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45fdd35e-69b9-ad2d-6214-aa2c324751f6",
  "kind": "theorem",
  "lexical_name": "riesz_tilt_fourier_integrable",
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
  "slug": "riesz-tilt-fourier-integrable--337b70a8b937ffed0be92ea8",
  "source": {
    "blob": "1983d84dc0388d89ad0116c8e3532e9794195e8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variantf42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:337b70a8b937ffed0be92ea8853aff35748c9191f428c85de54714a45fd08a34",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variantf42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45fdd35e-69b9-ad2d-6214-aa2c324751f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_tilt_fourier_integrable (A c : ℝ) (hc : 0 < c) :
    Integrable (FourierTransform.fourier (rieszTilt A c)) := by
  have hp : Integrable (fun t : ℝ ↦ Zeta23.paperFT (rieszTilt A c) t) := by
    have h := (boundary_riesz_line_integrable A c hc).comp_mul_left' (by norm_num : (-1 : ℝ) ≠ 0)
    apply h.congr
    filter_upwards [] with t
    rw [riesz_tilt_paper_fourier A c t hc]
    congr 2
    push_cast
    ring
  have h := hp.comp_mul_left' (R := -(2 * Real.pi))
    (neg_ne_zero.mpr (mul_ne_zero (by norm_num) Real.pi_ne_zero))
  apply h.congr
  filter_upwards [] with t
  rw [Zeta23.EF.paperFT_ofReal_eq_fourier]
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variantf42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variantf42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1983d84dc0388d89ad0116c8e3532e9794195e8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
