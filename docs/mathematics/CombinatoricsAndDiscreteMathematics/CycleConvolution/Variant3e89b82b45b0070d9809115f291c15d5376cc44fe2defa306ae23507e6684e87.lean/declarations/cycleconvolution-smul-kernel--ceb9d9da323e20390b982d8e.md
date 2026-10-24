# cycleConvolution_smul_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "977b64c923a7c235c9c665b44165cfe3d68ea2a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a543ffb-de73-a9fc-12bc-271caa95a7d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7be545c3-7d6a-7eac-cdea-a0538d7f2f1c",
  "kind": "theorem",
  "lexical_name": "cycleConvolution_smul_kernel",
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
  "slug": "cycleconvolution-smul-kernel--ceb9d9da323e20390b982d8e",
  "source": {
    "blob": "977b64c923a7c235c9c665b44165cfe3d68ea2a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ceb9d9da323e20390b982d8e68d648c1b29f6da9ad19a5370c55ecce28f42a0c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7be545c3-7d6a-7eac-cdea-a0538d7f2f1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycleConvolution_smul_kernel
    (cycle : DirectedCycleQuantum X)
    (c : ℝ) (a : CycleKernel cycle.period ℝ)
    (f : X → ℝ) :
    cycleConvolution cycle (c • a) f =
      c • cycleConvolution cycle a f := by
  funext x
  simp only [cycleConvolution_apply, Pi.smul_apply, smul_eq_mul]
  change (∑ k : Fin cycle.period,
    (c * a k) * f (cycle.orderedTransport k.val x)) =
    c * ∑ k : Fin cycle.period,
      a k * f (cycle.orderedTransport k.val x)
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k _
  ring

/-- The delta kernel at prefix zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `977b64c923a7c235c9c665b44165cfe3d68ea2a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
