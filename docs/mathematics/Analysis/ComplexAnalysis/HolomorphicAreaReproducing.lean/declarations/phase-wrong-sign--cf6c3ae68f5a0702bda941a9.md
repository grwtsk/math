# phase_wrong_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5995c524690bdc3f97da887d9759f6990cde08de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/Analysis/Complex/HolomorphicAreaReproducing.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9445a9ba-77cc-28e6-4bee-db6f6ccc722e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0df1f60f-88e6-c48d-7380-1dc5c81c1c79",
  "kind": "theorem",
  "lexical_name": "phase_wrong_sign",
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
  "slug": "phase-wrong-sign--cf6c3ae68f5a0702bda941a9",
  "source": {
    "blob": "5995c524690bdc3f97da887d9759f6990cde08de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 265,
    "path": "GRWTSK/Analysis/Complex/HolomorphicAreaReproducing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf6c3ae68f5a0702bda941a9e8c825334d0f74879e785a3a6796a6afba5ab090",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0df1f60f-88e6-c48d-7380-1dc5c81c1c79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phase_wrong_sign (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (x : D.X.carrier) :
    (ContinuousLinearMap.adjoint (completedRepresentation (MetricWeights.identity D)
      (areaMeasure D.X) hOpen (BoundedSymbol.constants D.X Complex.I)))
        (kernelVector hOpen x) ≠ Complex.I • kernelVector hOpen x := by
  intro h
  rw [phase_kernel] at h
  have he := congrArg (evaluationAt hOpen x) h
  simp only [map_smul, smul_eq_mul, evaluationAt_eq_value] at he
  change (-Complex.I) * kernel hOpen x x = Complex.I * kernel hOpen x x at he
  have hk : kernel hOpen x x ≠ 0 := by
    intro hz
    have hp := kernel_diagonal_pos hOpen hArea x
    rw [hz, Complex.zero_re] at hp
    exact (lt_irrefl 0) hp
  have hI := mul_right_cancel₀ hk he
  have hIm := congrArg Complex.im hI
  norm_num at hIm

/-- A concrete proper-domain counterexample supplies its finite-area and point hypotheses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicAreaReproducing.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5995c524690bdc3f97da887d9759f6990cde08de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
