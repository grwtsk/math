# logDeriv_completedLSym

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6581fd11-3ebb-6d80-7e23-c3be93ad29f2",
  "kind": "lemma",
  "lexical_name": "logDeriv_completedLSym",
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
  "slug": "logderiv-completedlsym--d6ce3a21bcb6564345116e34",
  "source": {
    "blob": "81fa7096ed581512e747d05525dfdc80cba590d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Varianta8ae3047d5b1874a2cc30f02cac8bfda637cba50c3357ada269584c0b02e8f14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6ce3a21bcb6564345116e343013c6b31766a5787e9a8645c1431642421e7958",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Varianta8ae3047d5b1874a2cc30f02cac8bfda637cba50c3357ada269584c0b02e8f14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6581fd11-3ebb-6d80-7e23-c3be93ad29f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logDeriv_completedLSym (hχ1 : χ ≠ 1) {s : ℂ} (hΛ : completedLFunction χ s ≠ 0) :
    logDeriv (completedLSym χ) s = Real.log q / 2 + logDeriv (completedLFunction χ) s := by
  unfold completedLSym
  rw [logDeriv_mul (f := fun s : ℂ => (q : ℂ) ^ (s / 2)) (g := completedLFunction χ) s
    (qpow_ne_zero s) hΛ (differentiable_qpow s) (differentiable_completedLFunction hχ1 s), logDeriv_qpow]

/-- **Functional equation for Λ_sym**: Λ_sym(1−w,χ) = W(χ)·Λ_sym(w,χ⁻¹). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Varianta8ae3047d5b1874a2cc30f02cac8bfda637cba50c3357ada269584c0b02e8f14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Varianta8ae3047d5b1874a2cc30f02cac8bfda637cba50c3357ada269584c0b02e8f14.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81fa7096ed581512e747d05525dfdc80cba590d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
