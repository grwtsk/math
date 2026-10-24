# smul_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fbb2d6d6d9bff445d082976a66e3c5723503487",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 583,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:470009ff-28e7-848c-b078-89acade03f48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63540793-cd90-e124-a3a1-a0f913df6de4",
  "kind": "theorem",
  "lexical_name": "smul_top",
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
  "slug": "smul-top--77f4b98a903bea62d5b5c841",
  "source": {
    "blob": "0fbb2d6d6d9bff445d082976a66e3c5723503487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 583,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77f4b98a903bea62d5b5c841b18f209e0ac063cbb412bfe215d84fd968f1e0fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63540793-cd90-e124-a3a1-a0f913df6de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_top {R} [Zero R] [SMulWithZero R ℝ≥0∞] [IsScalarTower R ℝ≥0∞ ℝ≥0∞]
    [NoZeroSMulDivisors R ℝ≥0∞] [DecidableEq R] (c : R) :
    c • ∞ = if c = 0 then 0 else ∞ := by
  rw [← smul_one_mul, mul_top']
  -- porting note: need the primed version of `one_ne_zero` now
  simp_rw [smul_eq_zero, or_iff_left (one_ne_zero' ℝ≥0∞)]
#align ennreal.smul_top ENNReal.smul_top

-- porting note: todo: assume `n ≠ 0` instead of `0 < n`
-- porting note: todo: generalize to `WithTop`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fbb2d6d6d9bff445d082976a66e3c5723503487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
