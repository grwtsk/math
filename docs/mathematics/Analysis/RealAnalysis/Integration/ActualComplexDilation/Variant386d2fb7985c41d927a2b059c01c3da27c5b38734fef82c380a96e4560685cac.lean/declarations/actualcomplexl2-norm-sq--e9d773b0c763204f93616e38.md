# actualComplexL2_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:239075e1-5012-5fa2-62cd-415c88650acd",
  "kind": "theorem",
  "lexical_name": "actualComplexL2_norm_sq",
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
  "slug": "actualcomplexl2-norm-sq--e9d773b0c763204f93616e38",
  "source": {
    "blob": "75484560b8993e87096a300ea5e67d8e0920ed4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant386d2fb7985c41d927a2b059c01c3da27c5b38734fef82c380a96e4560685cac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9d773b0c763204f93616e38588549e2b265f515666b6b8b28222f70faa9970b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant386d2fb7985c41d927a2b059c01c3da27c5b38734fef82c380a96e4560685cac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:239075e1-5012-5fa2-62cd-415c88650acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplexL2_norm_sq (A : ℝ) (hA : 1 ≤ A) :
    ‖actualComplexL2 A hA‖^2 = ∫ x in Ioi 0, (actualMuntz A x)^2 := by
  rw [norm_sq_integral]
  apply integral_congr_ae
  filter_upwards [actualComplexL2_ae A hA] with x hx
  simp only [hx,actualComplexOperator,Complex.norm_real,Real.norm_eq_abs,sq_abs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant386d2fb7985c41d927a2b059c01c3da27c5b38734fef82c380a96e4560685cac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant386d2fb7985c41d927a2b059c01c3da27c5b38734fef82c380a96e4560685cac.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75484560b8993e87096a300ea5e67d8e0920ed4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
