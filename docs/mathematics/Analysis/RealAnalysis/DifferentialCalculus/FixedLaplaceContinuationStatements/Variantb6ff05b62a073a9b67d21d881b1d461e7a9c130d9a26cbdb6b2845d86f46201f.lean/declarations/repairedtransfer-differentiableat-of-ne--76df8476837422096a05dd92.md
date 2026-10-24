# repairedTransfer_differentiableAt_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4c84027-64aa-64b4-262e-44345014fc3e",
  "kind": "theorem",
  "lexical_name": "repairedTransfer_differentiableAt_of_ne",
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
  "slug": "repairedtransfer-differentiableat-of-ne--76df8476837422096a05dd92",
  "source": {
    "blob": "3a92f56e91664aab1500ccf6f3f9ee3bda0c3db9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76df8476837422096a05dd92985b990d9241d130f6a27de80587a0bb43adddf6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4c84027-64aa-64b4-262e-44345014fc3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repairedTransfer_differentiableAt_of_ne (z : ℂ) (hz : z ≠ 0)
    (hzp : z ≠ 1 / 2) : DifferentiableAt ℂ repairedTransfer z := by
  have hp : (1 / 2 : ℂ) + z ≠ 1 := by
    intro h
    apply hzp
    linear_combination h
  have hd : DifferentiableAt ℂ
      (fun w : ℂ ↦ Complex.exp (-w) * riemannZeta (1 / 2 + w) * V w) z :=
    ((Complex.differentiable_exp.differentiableAt.comp z differentiableAt_id.neg).mul
      ((differentiableAt_riemannZeta hp).comp z ((differentiableAt_const (1 / 2 : ℂ)).add differentiableAt_id))).mul
        (V_differentiableAt_of_ne_zero z hz)
  apply hd.congr_of_eventuallyEq
  filter_upwards [isOpen_compl_singleton.mem_nhds hzp] with w hw
  exact repairedTransfer_eq_product w hw

/-- The proved pole limit and punctured differentiability remove the source singularity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a92f56e91664aab1500ccf6f3f9ee3bda0c3db9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
