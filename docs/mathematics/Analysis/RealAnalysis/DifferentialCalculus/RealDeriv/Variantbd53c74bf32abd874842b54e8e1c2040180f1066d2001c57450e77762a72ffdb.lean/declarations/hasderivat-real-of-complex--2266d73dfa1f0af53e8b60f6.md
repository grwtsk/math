# HasDerivAt.real_of_complex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2815e13c-a8fd-a3b9-b292-60768886e83e",
  "kind": "theorem",
  "lexical_name": "HasDerivAt.real_of_complex",
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
  "slug": "hasderivat-real-of-complex--2266d73dfa1f0af53e8b60f6",
  "source": {
    "blob": "141affe4dc46c932589b74b59acaf1c519cd6c40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2266d73dfa1f0af53e8b60f6a80c3becde308dedf9f42e8776d395d9ac6fecfc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2815e13c-a8fd-a3b9-b292-60768886e83e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasDerivAt.real_of_complex (h : HasDerivAt e e' z) :
    HasDerivAt (fun x : ℝ => (e x).re) e'.re z := by
  have A : HasFDerivAt ((↑) : ℝ → ℂ) ofRealClm z := ofRealClm.hasFDerivAt
  have B :
    HasFDerivAt e ((ContinuousLinearMap.smulRight 1 e' : ℂ →L[ℂ] ℂ).restrictScalars ℝ)
      (ofRealClm z) :=
    h.hasFDerivAt.restrictScalars ℝ
  have C : HasFDerivAt re reClm (e (ofRealClm z)) := reClm.hasFDerivAt
  -- Porting note: this should be by:
  -- simpa using (C.comp z (B.comp z A)).hasStrictDerivAt
  -- but for some reason simp can not use `ContinuousLinearMap.comp_apply`
  convert (C.comp z (B.comp z A)).hasDerivAt
  rw [ContinuousLinearMap.comp_apply, ContinuousLinearMap.comp_apply]
  simp
#align has_deriv_at.real_of_complex HasDerivAt.real_of_complex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `141affe4dc46c932589b74b59acaf1c519cd6c40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
