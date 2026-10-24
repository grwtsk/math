# contDiffOn_restrContDiff_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47d12df4bfb825b5388750802f58aa3a4019d8aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 907,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c4399af-1d8d-e5ba-b387-aa32c45bdfb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1eb48b1-75d9-3544-50d3-edf90248c3fe",
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
  "slug": "contdiffon-restrcontdiff-target--23cf8e705d34806aa2893379",
  "source": {
    "blob": "47d12df4bfb825b5388750802f58aa3a4019d8aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 931,
    "line": 907,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23cf8e705d34806aa2893379672e4964c8369d3d347ffec622a371f654531242",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1eb48b1-75d9-3544-50d3-edf90248c3fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 907–931.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Operations/Variant9e9a8e221acfa27972eced639be2a28edd34c04704595e5c8790ca79f9d9cb2c.lean#L907).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47d12df4bfb825b5388750802f58aa3a4019d8aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
