# verify_integral_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1eea4d15-e92a-b3ac-5428-1d7b14950ad3",
  "kind": "theorem",
  "lexical_name": "verify_integral_bound",
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
  "slug": "verify-integral-bound--801c5670fe5a50ca567bfdc1",
  "source": {
    "blob": "3b7d4c1861f6e1e2bb0a88ec270b0b892d196bec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 203,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:801c5670fe5a50ca567bfdc195d7c7d3855cfa0f9b13bd394c14a1d0edbd7187",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1eea4d15-e92a-b3ac-5428-1d7b14950ad3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_integral_bound (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (_target : ℚ) (cfg : EvalConfig)
    (h_cert : checkIntegralBoundsCore e I _target cfg = true)
    (hcontdom : LeanCert.Meta.exprContinuousDomainValid e (Set.Icc I.lo I.hi)) :
    ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ∈ integrateInterval1Core e I cfg := by
  simp only [checkIntegralBoundsCore, Bool.and_eq_true] at h_cert
  have hdom := checkDomainValid1_correct e I cfg h_cert.1
  exact integrateInterval1Core_correct e hsupp I cfg hdom hcontdom

/-- Extract the computed integral bound as an interval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b7d4c1861f6e1e2bb0a88ec270b0b892d196bec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
