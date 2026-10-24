# analyticOrderNatAt_completedLSym

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c05f2966-2049-d2ef-bb81-a96dd60cfd99",
  "kind": "lemma",
  "lexical_name": "analyticOrderNatAt_completedLSym",
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
  "slug": "analyticordernatat-completedlsym--f79bd8c67d0e66c1c487fc6c",
  "source": {
    "blob": "81fa7096ed581512e747d05525dfdc80cba590d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Varianta8ae3047d5b1874a2cc30f02cac8bfda637cba50c3357ada269584c0b02e8f14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f79bd8c67d0e66c1c487fc6c174e60e0b600caf23afadfa70d47bdc7ae7a9e51",
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

Occurrence: `result:c05f2966-2049-d2ef-bb81-a96dd60cfd99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma analyticOrderNatAt_completedLSym (hq : 1 < q) (hχ1 : χ ≠ 1) {ρ : ℂ} (h : 0 < ρ.re) :
    analyticOrderNatAt (completedLSym χ) ρ = zeroMultL χ ρ := by
  have hqan : AnalyticAt ℂ (fun s : ℂ => (q : ℂ) ^ (s / 2)) ρ := differentiable_qpow.analyticAt ρ
  have hΛan : AnalyticAt ℂ (completedLFunction χ) ρ :=
    (differentiable_completedLFunction hχ1).analyticAt ρ
  have hmul : completedLSym χ = (fun s : ℂ => (q : ℂ) ^ (s / 2)) * completedLFunction χ := rfl
  rw [← analyticOrderNatAt_completedLFunction hq hχ1 h]
  unfold analyticOrderNatAt
  rw [hmul, analyticOrderAt_mul hqan hΛan, hqan.analyticOrderAt_eq_zero.mpr (qpow_ne_zero ρ),
    zero_add]


/-- **Bridge for the Γ-side (GammaSideChi).** On Re s > 0 with L(s,χ) ≠ 0:
logDeriv Λ_sym(s,χ) = logDeriv L(s,χ) + logDeriv (z ↦ q^{z/2}·γ_χ(z)) (s). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Varianta8ae3047d5b1874a2cc30f02cac8bfda637cba50c3357ada269584c0b02e8f14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Varianta8ae3047d5b1874a2cc30f02cac8bfda637cba50c3357ada269584c0b02e8f14.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81fa7096ed581512e747d05525dfdc80cba590d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
