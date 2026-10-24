# logProfile_hasDerivAt_chain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:565164fd-8c0d-91b6-a886-ca27c0a66032",
  "kind": "theorem",
  "lexical_name": "logProfile_hasDerivAt_chain",
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
  "slug": "logprofile-hasderivat-chain--519a1ecadd8d5c446d780c51",
  "source": {
    "blob": "0d69fa87e0c697dcf51df2ecbdbb5c630098feae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:519a1ecadd8d5c446d780c51b7901312caaff797c69eedbf06de2ab86338c3e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:565164fd-8c0d-91b6-a886-ca27c0a66032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logProfile_hasDerivAt_chain {A d y : ℝ}
    (hA : 1 ≤ A) (hd : 0 < d) (hy : 0 < y) :
    HasDerivAt (logProfile A d)
      (plainProfile A 1 (d * y) / y +
        d * Real.log y * deriv (plainProfile A 1) (d * y)) y := by
  have hplain := ((plainProfile_contDiff (by linarith : 0 < A) 1).differentiable
    (by norm_num) (d * y)).hasDerivAt
  have hcomp := hplain.comp y ((hasDerivAt_id y).const_mul d)
  have hprod : HasDerivAt (fun z : ℝ => Real.log z * plainProfile A 1 (d * z))
      (plainProfile A 1 (d * y) / y +
        d * Real.log y * deriv (plainProfile A 1) (d * y)) y := by
    apply ((Real.hasDerivAt_log hy.ne').mul hcomp).congr_deriv
    simp only [Function.comp_apply]
    ring
  apply hprod.congr_of_eventuallyEq
  filter_upwards [isOpen_Ioi.mem_nhds hy] with z hz
  rw [logProfile_eq_log_mul, plainProfile_scale_identity hd hz]

end InnerAbelSourceCandidate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d69fa87e0c697dcf51df2ecbdbb5c630098feae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
