# norm_logDeriv_right_halfPlane_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6a5e7a2-6b45-7016-eefe-79d9b549cf59",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_right_halfPlane_le",
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
  "slug": "norm-logderiv-right-halfplane-le--59ebf3c3b0f566594000872a",
  "source": {
    "blob": "78ceb9569e89f20c2868e9dd6e6e6b459a3bd5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59ebf3c3b0f566594000872a761be561008affc4834c981c7d471b4b49c16a7a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6a5e7a2-6b45-7016-eefe-79d9b549cf59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_right_halfPlane_le (s : ℂ) (hs : 2 ≤ s.re) :
    ‖logDeriv riemannZeta s‖ ≤ mangoldtLineMass := by
  let f : ℕ → ℂ := fun m => (ArithmeticFunction.vonMangoldt m : ℂ)
  have h2 : LSeriesSummable f 2 := ArithmeticFunction.LSeriesSummable_vonMangoldt (by norm_num)
  have hσ : LSeriesSummable f s := ArithmeticFunction.LSeriesSummable_vonMangoldt (by linarith)
  have he : _root_.LSeries f s = -logDeriv riemannZeta s := by
    simpa only [logDeriv_apply, neg_div] using
      ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div (by linarith : 1 < s.re)
  rw [← norm_neg, ← he, _root_.LSeries]
  calc
    _ ≤ ∑' m, ‖_root_.LSeries.term f s m‖ := norm_tsum_le_tsum_norm hσ.norm
    _ ≤ ∑' m, ‖_root_.LSeries.term f 2 m‖ :=
      Summable.tsum_le_tsum (fun m => _root_.LSeries.norm_term_le_of_re_le_re f
        (by simpa using hs) m) hσ.norm h2.norm
    _ = _ := rfl

/-- A finite reciprocal increment and two controlled reflected source terms suffice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ceb9569e89f20c2868e9dd6e6e6b459a3bd5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
