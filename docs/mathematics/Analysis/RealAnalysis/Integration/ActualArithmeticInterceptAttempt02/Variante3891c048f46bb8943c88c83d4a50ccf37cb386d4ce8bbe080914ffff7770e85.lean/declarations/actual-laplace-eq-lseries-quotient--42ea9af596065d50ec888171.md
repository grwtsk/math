# actual_laplace_eq_LSeries_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4959b51d-f6fc-d2e5-5504-d5af1050d1da",
  "kind": "theorem",
  "lexical_name": "actual_laplace_eq_LSeries_quotient",
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
  "slug": "actual-laplace-eq-lseries-quotient--42ea9af596065d50ec888171",
  "source": {
    "blob": "0887abde637747b954262eac4ea1127506df8f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt02/Variante3891c048f46bb8943c88c83d4a50ccf37cb386d4ce8bbe080914ffff7770e85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42ea9af596065d50ec8881711115f12f6873e7dbc17cd62b8abdd81e2782ebad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt02/Variante3891c048f46bb8943c88c83d4a50ccf37cb386d4ce8bbe080914ffff7770e85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4959b51d-f6fc-d2e5-5504-d5af1050d1da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_laplace_eq_LSeries_quotient {s : ℝ} (hs : 0 < s) :
    ((actualLaplace s : ℝ):ℂ) =
      (LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) (1+(s:ℂ))-
        (s:ℂ)⁻¹+(Real.eulerMascheroniConstant:ℂ))/(s:ℂ) := by
  have h := actual_prefix_laplace_eq_LSeries hs
  rw [Complex.ofReal_mul] at h
  have hn : (s:ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (ne_of_gt hs)
  rw [actual_laplace_compensation hs]
  push_cast
  rw [show ((s+1:ℝ):ℂ) = 1+(s:ℂ) by push_cast;ring] at h
  rw [←h]
  field_simp <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt02/Variante3891c048f46bb8943c88c83d4a50ccf37cb386d4ce8bbe080914ffff7770e85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt02/Variante3891c048f46bb8943c88c83d4a50ccf37cb386d4ce8bbe080914ffff7770e85.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0887abde637747b954262eac4ea1127506df8f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
