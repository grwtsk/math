# boundaryResidual_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58b29b6c816f3293fa0eb1668353b58fbec6f60a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1810b461-553b-11e3-8b35-425b3e9da92e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95e73a41-e475-848c-96ac-f76eb42be98a",
  "kind": "theorem",
  "lexical_name": "boundaryResidual_memLp",
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
  "slug": "boundaryresidual-memlp--98efeeb0cc252ee0a580a379",
  "source": {
    "blob": "58b29b6c816f3293fa0eb1668353b58fbec6f60a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98efeeb0cc252ee0a580a379ccc2fc89076f5a5f25283aca3bc12cf6f83d074b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95e73a41-e475-848c-96ac-f76eb42be98a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem boundaryResidual_memLp (N : ℕ) (hN : 1 ≤ N) (ε h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 < h) (hh1 : h ≤ 1) :
    MemLp (boundaryResidual N ε h) 2 volume := by
  have hH : Measurable (boundaryFilter ε h) := by
    unfold boundaryFilter
    have hw : Continuous MobiusSourceFilterQuotient.W :=
      (Complex.continuous_exp.comp continuous_neg).mul FixedLaplaceBoundary.V_continuous
    fun_prop
  have hz : Continuous (fun t : ℝ => riemannZeta (1 / 2 + (t : ℂ) * Complex.I)) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    have hn : (1 / 2 + (t : ℂ) * Complex.I : ℂ) ≠ 1 := by
      intro he
      have hr := congrArg Complex.re he
      norm_num at hr
    exact ContinuousAt.comp (f := fun t : ℝ => (1 / 2 : ℂ) + (t : ℂ) * Complex.I)
      (g := riemannZeta) (differentiableAt_riemannZeta hn).continuousAt
      (show ContinuousAt (fun t : ℝ => (1 / 2 : ℂ) + (t : ℂ) * Complex.I) t by fun_prop)
  have hb : Measurable (boundaryResidual N ε h) := by
    unfold boundaryResidual
    exact hH.mul (measurable_const.sub (hz.measurable.mul
      ((correctedNumerator_differentiable N).continuous.measurable.comp (by fun_prop))))
  exact (memLp_two_iff_integrable_sq_norm hb.aestronglyMeasurable).mpr
    (arithmetic_error_sq_integrable N hN ε h hε hsmall hh hh1)

/-- Off-diagonal products of actual residual increments have genuine whole-line integrals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58b29b6c816f3293fa0eb1668353b58fbec6f60a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
