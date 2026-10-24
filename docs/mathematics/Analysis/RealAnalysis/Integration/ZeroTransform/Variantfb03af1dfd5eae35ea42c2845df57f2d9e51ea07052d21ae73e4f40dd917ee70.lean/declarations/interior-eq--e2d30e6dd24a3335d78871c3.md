# interior_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b01ceb99dcca3b98410b832b57e05abf3fff361",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:859e94c0-2fcb-985c-6a36-1efb3bfb0d47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09aff4b6-b5f0-030c-becd-c23735e204c4",
  "kind": "theorem",
  "lexical_name": "interior_eq",
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
  "slug": "interior-eq--e2d30e6dd24a3335d78871c3",
  "source": {
    "blob": "5b01ceb99dcca3b98410b832b57e05abf3fff361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2d30e6dd24a3335d78871c3ab7eae226d85e7db27ca3344366f26c7f559d022",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09aff4b6-b5f0-030c-becd-c23735e204c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_eq (A : ℝ) (hA : 0 < A) (x : ℝ) :
    interior A x =
      ((Realization.secondInterior A x - Realization.bumpInterior A x / 4 : ℝ) : ℂ) := by
  unfold interior bumpPolynomial Realization.secondInterior Realization.bumpInterior
  simp only [derivative_pow, derivative_sub, derivative_C, derivative_X, derivative_mul,
    derivative_one, derivative_zero, eval_sub, eval_add,
    eval_mul, eval_pow, eval_C, eval_X, eval_one, eval_zero]
  push_cast
  have ha : (A : ℂ) ≠ 0 := by exact_mod_cast hA.ne'
  have hs : (Real.sqrt A : ℂ) ≠ 0 := by exact_mod_cast (Real.sqrt_pos.mpr hA).ne'
  field_simp
  ring
/-- The real-variable derivative of the complex polynomial exponential is checked exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b01ceb99dcca3b98410b832b57e05abf3fff361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
