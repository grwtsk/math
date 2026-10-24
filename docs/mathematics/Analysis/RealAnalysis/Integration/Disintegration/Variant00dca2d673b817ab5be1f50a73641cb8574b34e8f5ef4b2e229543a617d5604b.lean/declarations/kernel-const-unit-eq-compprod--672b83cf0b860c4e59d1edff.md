# kernel.const_unit_eq_compProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcf65f53557e43ad0721daecd32d7d5458b505b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8f96a0c-7668-ed06-b5d2-7d0e0109716c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fb77e26-96a6-3fe6-45f4-78e1fdc5189e",
  "kind": "theorem",
  "lexical_name": "kernel.const_unit_eq_compProd",
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
  "slug": "kernel-const-unit-eq-compprod--672b83cf0b860c4e59d1edff",
  "source": {
    "blob": "fcf65f53557e43ad0721daecd32d7d5458b505b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 359,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:672b83cf0b860c4e59d1edff16814b158203e417d3c08fc2e38c0247933df0ae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fb77e26-96a6-3fe6-45f4-78e1fdc5189e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel.const_unit_eq_compProd :
    kernel.const Unit ρ = kernel.const Unit ρ.fst ⊗ₖ kernel.prodMkLeft Unit ρ.condKernel := by
  simp_rw [condKernel_def]; exact (exists_cond_kernel ρ Unit).choose_spec.choose_spec
#align probability_theory.kernel.const_unit_eq_comp_prod ProbabilityTheory.kernel.const_unit_eq_compProd

/-- **Disintegration** of finite product measures on `α × Ω`, where `Ω` is Polish Borel. Such a
measure can be written as the composition-product of the constant kernel with value `ρ.fst`
(marginal measure over `α`) and a Markov kernel from `α` to `Ω`. We call that Markov kernel
`ProbabilityTheory.condKernel ρ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf65f53557e43ad0721daecd32d7d5458b505b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
