# factorial_smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8298a49809df177c2399108cdc29aad29172c363",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 755,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ac2d37d-e74e-22b6-1ab2-a7c5b4c769c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c51dd8a8-df8d-8d67-3f5f-eb006dbdca36",
  "kind": "theorem",
  "lexical_name": "factorial_smul'",
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
  "slug": "factorial-smul--142233b58adbe1f3a86db645",
  "source": {
    "blob": "8298a49809df177c2399108cdc29aad29172c363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 771,
    "line": 755,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:142233b58adbe1f3a86db6458c56ff01ab0b6fd837f760444a21c1a6873fed6c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c51dd8a8-df8d-8d67-3f5f-eb006dbdca36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–771.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem factorial_smul' {n : ℕ} : ∀ {F : Type max u v} [NormedAddCommGroup F]
    [NormedSpace 𝕜 F] [CompleteSpace F] {p : FormalMultilinearSeries 𝕜 E F}
    {f : E → F}, HasFPowerSeriesOnBall f p x r →
    n ! • p n (fun _ ↦ y) = iteratedFDeriv 𝕜 n f x (fun _ ↦ y) := by
  induction n with | zero => _ | succ n ih => _ <;> intro F _ _ _ p f h
  · rw [factorial_zero, one_smul, h.iteratedFDeriv_zero_apply_diag]
  · rw [factorial_succ, mul_comm, mul_smul, ← derivSeries_apply_diag,
      ← ContinuousLinearMap.smul_apply, ih h.fderiv, iteratedFDeriv_succ_apply_right]
    rfl

variable [CompleteSpace F]
include h

/-- The iterated derivative of an analytic function, on vectors `(y, ..., y)`, is given by `n!`
times the `n`-th term in the power series. For a more general result giving the full iterated
derivative as a sum over the permutations of `Fin n`, see
`HasFPowerSeriesOnBall.iteratedFDeriv_eq_sum`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8298a49809df177c2399108cdc29aad29172c363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
