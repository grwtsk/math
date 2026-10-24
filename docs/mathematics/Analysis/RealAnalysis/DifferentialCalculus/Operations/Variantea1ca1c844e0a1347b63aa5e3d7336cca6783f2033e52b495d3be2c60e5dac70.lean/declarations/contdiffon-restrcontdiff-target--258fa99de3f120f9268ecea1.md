# contDiffOn_restrContDiff_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5747fc33-bfff-d1c5-3b2c-cec20a8ed7f6",
  "kind": "lemma",
  "lexical_name": "contDiffOn_restrContDiff_target",
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
  "slug": "contdiffon-restrcontdiff-target--258fa99de3f120f9268ecea1",
  "source": {
    "blob": "8aa1a77e69b2e25c7208d7cb52107e017c7bc3b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 939,
    "line": 915,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:258fa99de3f120f9268ecea10a0f045bf56c5985630a1f5b76e94bed550be678",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5747fc33-bfff-d1c5-3b2c-cec20a8ed7f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 915–939.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contDiffOn_restrContDiff_target (f : PartialHomeomorph E F) {n : WithTop ℕ∞} (hn : n ≠ ∞) :
    ContDiffOn 𝕜 n f.symm (f.restrContDiff 𝕜 n hn).target := fun _x hx ↦ hx.2.1.contDiffWithinAt

end PartialHomeomorph

end FunctionInverse

section RestrictScalars

/-!
### Restricting from `ℂ` to `ℝ`, or generally from `𝕜'` to `𝕜`

If a function is `n` times continuously differentiable over `ℂ`, then it is `n` times continuously
differentiable over `ℝ`. In this paragraph, we give variants of this statement, in the general
situation where `ℂ` and `ℝ` are replaced respectively by `𝕜'` and `𝕜` where `𝕜'` is a normed algebra
over `𝕜`.
-/


variable (𝕜)
variable {𝕜' : Type*} [NontriviallyNormedField 𝕜'] [NormedAlgebra 𝕜 𝕜']
variable [NormedSpace 𝕜' E] [IsScalarTower 𝕜 𝕜' E]
variable [NormedSpace 𝕜' F] [IsScalarTower 𝕜 𝕜' F]
variable {p' : E → FormalMultilinearSeries 𝕜' E F}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variantea1ca1c844e0a1347b63aa5e3d7336cca6783f2033e52b495d3be2c60e5dac70.lean#L915).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aa1a77e69b2e25c7208d7cb52107e017c7bc3b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
