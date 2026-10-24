# withDensityᵥ_smul_eq_withDensityᵥ_withDensity'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72f0ca3782527d19dd5efdd2a82b0fe0ed943cfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecf5d09b-e2e8-556c-98cd-4fca75101bd8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e2ce2ba-bd30-df88-0739-98106de3f643",
  "kind": "theorem",
  "lexical_name": "withDensityᵥ_smul_eq_withDensityᵥ_withDensity'",
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
  "slug": "withdensity-smul-eq-withdensity-withdensity--564096f0858f4a930ee32db1",
  "source": {
    "blob": "72f0ca3782527d19dd5efdd2a82b0fe0ed943cfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:564096f0858f4a930ee32db150ca7989ab9b88da26672301940b8c6744868bad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e2ce2ba-bd30-df88-0739-98106de3f643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensityᵥ_smul_eq_withDensityᵥ_withDensity' {f : α → ℝ≥0∞} {g : α → E}
    (hf : AEMeasurable f μ) (hflt : ∀ᵐ x ∂μ, f x < ∞)
    (hfg : Integrable (fun x ↦ (f x).toReal • g x) μ) :
    μ.withDensityᵥ (fun x ↦ (f x).toReal • g x) = (μ.withDensity f).withDensityᵥ g := by
  rw [← withDensity_congr_ae (coe_toNNReal_ae_eq hflt),
    ← withDensityᵥ_smul_eq_withDensityᵥ_withDensity hf.ennreal_toNNReal hfg]
  apply congr_arg
  ext
  simp [NNReal.smul_def, ENNReal.coe_toNNReal_eq_toReal]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72f0ca3782527d19dd5efdd2a82b0fe0ed943cfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
