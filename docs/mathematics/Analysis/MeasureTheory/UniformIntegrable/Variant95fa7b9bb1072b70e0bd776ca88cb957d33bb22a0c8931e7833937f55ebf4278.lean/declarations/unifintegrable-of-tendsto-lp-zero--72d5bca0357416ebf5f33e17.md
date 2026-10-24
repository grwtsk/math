# unifIntegrable_of_tendsto_Lp_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a20fe34047ff03983087f39f261020e75101cf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 577,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fbe73cd-05d6-2eee-eb63-ede4f0f463e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbf35c06-8fc0-aebc-1803-0304d503790d",
  "kind": "theorem",
  "lexical_name": "unifIntegrable_of_tendsto_Lp_zero",
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
  "slug": "unifintegrable-of-tendsto-lp-zero--72d5bca0357416ebf5f33e17",
  "source": {
    "blob": "0a20fe34047ff03983087f39f261020e75101cf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 577,
    "path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72d5bca0357416ebf5f33e173fe1afcd2bc8d3af64825fd1e224432ddfcace4e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbf35c06-8fc0-aebc-1803-0304d503790d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unifIntegrable_of_tendsto_Lp_zero (hp : 1 ≤ p) (hp' : p ≠ ∞) (hf : ∀ n, Memℒp (f n) p μ)
    (hf_tendsto : Tendsto (fun n => snorm (f n) p μ) atTop (𝓝 0)) : UnifIntegrable f p μ := by
  intro ε hε
  rw [ENNReal.tendsto_atTop_zero] at hf_tendsto
  obtain ⟨N, hN⟩ := hf_tendsto (ENNReal.ofReal ε) (by simpa)
  let F : Fin N → α → β := fun n => f n
  have hF : ∀ n, Memℒp (F n) p μ := fun n => hf n
  obtain ⟨δ₁, hδpos₁, hδ₁⟩ := unifIntegrable_fin μ hp hp' hF hε
  refine' ⟨δ₁, hδpos₁, fun n s hs hμs => _⟩
  by_cases hn : n < N
  · exact hδ₁ ⟨n, hn⟩ s hs hμs
  · exact (snorm_indicator_le _).trans (hN n (not_lt.1 hn))
set_option linter.uppercaseLean3 false in
#align measure_theory.unif_integrable_of_tendsto_Lp_zero MeasureTheory.unifIntegrable_of_tendsto_Lp_zero

/-- Convergence in Lp implies uniform integrability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a20fe34047ff03983087f39f261020e75101cf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
