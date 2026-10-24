# kernel_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d70cf0d-f726-9a83-ddd3-199250f36f52",
  "kind": "theorem",
  "lexical_name": "kernel_hasDerivAt",
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
  "slug": "kernel-hasderivat--58b6d5278fdbad622cb9236d",
  "source": {
    "blob": "40956adf66168330a2ded1f3b2de9f4791b3abe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58b6d5278fdbad622cb9236d67a72647b39fd43f1459975543c56d72b2a39fe2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d70cf0d-f726-9a83-ddd3-199250f36f52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem kernel_hasDerivAt (t : ℝ) (z : ℂ) :
    HasDerivAt (fun z : ℂ => (profile t : ℂ) *
      Complex.exp (-z * (t : ℂ)))
      (-(t : ℂ) * (profile t : ℂ) *
        Complex.exp (-z * (t : ℂ))) z := by
  have hh := (((hasDerivAt_id z).neg.mul_const (t : ℂ)).cexp.const_mul
    (profile t : ℂ))
  convert hh using 1 <;> first | rfl | (simp only [Pi.neg_apply, id_eq]; ring)

/-- Genuine parameter differentiation retains the supplied actual full-area premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant4c9749e1b533ab3db2f75c3bb792ac63a5c17a61afd2951b6b0e67577ec3ebfe.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40956adf66168330a2ded1f3b2de9f4791b3abe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
