# Submartingale.tendsto_eLpNorm_one_limitProcess

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eee61c90e22fc45ce28b0e191e341db83914e3f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15ca8caa-c0d4-8ade-8250-62c33798a201",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10f3ad3d-dcaa-f944-ec4b-796040fe1e76",
  "kind": "theorem",
  "lexical_name": "Submartingale.tendsto_eLpNorm_one_limitProcess",
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
  "slug": "submartingale-tendsto-elpnorm-one-limitprocess--1afb4da061f9d915d40c0840",
  "source": {
    "blob": "eee61c90e22fc45ce28b0e191e341db83914e3f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 311,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1afb4da061f9d915d40c0840ca044c4d9d8dad24996656fddcbc1fe6ad5111b4",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10f3ad3d-dcaa-f944-ec4b-796040fe1e76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.tendsto_eLpNorm_one_limitProcess (hf : Submartingale f ℱ μ)
    (hunif : UniformIntegrable f 1 μ) :
    Tendsto (fun n => eLpNorm (f n - ℱ.limitProcess f μ) 1 μ) atTop (𝓝 0) := by
  obtain ⟨R, hR⟩ := hunif.2.2
  have hmeas : ∀ n, AEStronglyMeasurable (f n) μ := fun n =>
    ((hf.stronglyMeasurable n).mono (ℱ.le _)).aestronglyMeasurable
  exact tendsto_Lp_finite_of_tendstoInMeasure le_rfl ENNReal.one_ne_top hmeas
    (memLp_limitProcess_of_eLpNorm_bdd hmeas hR) hunif.2.1
    (tendstoInMeasure_of_tendsto_ae hmeas <| hf.ae_tendsto_limitProcess hR)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eee61c90e22fc45ce28b0e191e341db83914e3f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
