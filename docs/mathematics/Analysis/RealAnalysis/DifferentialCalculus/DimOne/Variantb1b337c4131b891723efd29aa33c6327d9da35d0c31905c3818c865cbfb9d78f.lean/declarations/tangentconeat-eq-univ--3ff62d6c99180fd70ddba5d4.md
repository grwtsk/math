# tangentConeAt_eq_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a44d5aecd97e3c1dba0306b5a73f593f41dc4f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3cadd49-4c33-d883-537c-6911f5649099",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4749d330-3bdf-f47d-84e8-28a5d2c35152",
  "kind": "theorem",
  "lexical_name": "tangentConeAt_eq_univ",
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
  "slug": "tangentconeat-eq-univ--3ff62d6c99180fd70ddba5d4",
  "source": {
    "blob": "7a44d5aecd97e3c1dba0306b5a73f593f41dc4f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ff62d6c99180fd70ddba5d47befc8f8a580eeb47bff74270a1a7644e495f3a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4749d330-3bdf-f47d-84e8-28a5d2c35152`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tangentConeAt_eq_univ {s : Set 𝕜} {x : 𝕜} (hx : AccPt x (𝓟 s)) :
    tangentConeAt 𝕜 s x = univ := by
  refine eq_univ_of_forall fun y ↦ ?_
  apply mem_tangentConeAt_of_frequently (𝓝[≠] x) (fun z ↦ y / (z - x)) (· - x)
  · exact Continuous.tendsto' (by fun_prop) _ _ (by simp) |>.mono_left inf_le_left
  · simpa [accPt_iff_frequently_nhdsNE] using hx
  · apply tendsto_nhds_of_eventually_eq
    refine eventually_mem_nhdsWithin.mono fun z hz ↦ ?_
    have : z - x ≠ 0 := by simpa [sub_eq_zero] using hz
    simp [div_mul_cancel₀ _ this]

/-- In one dimension, a point is a point of unique differentiability of a set
iff it is an accumulation point of the set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a44d5aecd97e3c1dba0306b5a73f593f41dc4f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
