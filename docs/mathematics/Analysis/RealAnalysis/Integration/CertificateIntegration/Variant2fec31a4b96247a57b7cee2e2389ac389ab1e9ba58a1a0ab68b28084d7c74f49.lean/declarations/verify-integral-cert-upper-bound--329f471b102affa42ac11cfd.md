# verify_integral_cert_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b8cbaee-48a5-a938-401d-65d7c691cec8",
  "kind": "theorem",
  "lexical_name": "verify_integral_cert_upper_bound",
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
  "slug": "verify-integral-cert-upper-bound--329f471b102affa42ac11cfd",
  "source": {
    "blob": "823024257f25d2ab06d8e4b433ae52ba395d781e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 880,
    "line": 857,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:329f471b102affa42ac11cfd7fcd8da2c88095cee12d98877c340b9955df6e73",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b8cbaee-48a5-a938-401d-65d7c691cec8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 857–880.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_integral_cert_upper_bound (e : Expr) (hsupp : ExprSupportedWithInv e)
    (cert : IntegralCertificate) (c : ℚ)
    (hcheck : checkIntegralCertUpperBound e cert c = true)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e)
      MeasureTheory.volume (cert.domain.lo : ℝ) (cert.domain.hi : ℝ)) :
    ∫ x in (cert.domain.lo : ℝ)..(cert.domain.hi : ℝ), Expr.eval (fun _ => x) e ≤ c := by
  simp only [checkIntegralCertUpperBound, Bool.and_eq_true, decide_eq_true_eq] at hcheck
  obtain ⟨⟨hcov, hbounds⟩, hhi⟩ := hcheck
  -- Build target interval (-∞, c] represented as [sumBounds.lo, c]
  let target : IntervalRat := ⟨(sumBounds cert.partitions).lo, c, by
    calc (sumBounds cert.partitions).lo ≤ (sumBounds cert.partitions).hi := (sumBounds cert.partitions).le
      _ ≤ c := hhi⟩
  -- checkSumInTarget target holds
  have hsum : checkSumInTarget cert.partitions target = true := by
    simp only [checkSumInTarget, decide_eq_true_eq]
    exact ⟨le_refl _, hhi⟩
  have hverify : verifyCertificate e cert target = true := by
    simp only [verifyCertificate, Bool.and_eq_true]
    exact ⟨⟨hcov, hbounds⟩, hsum⟩
  have hmem := verify_certificate_correct e hsupp cert target hverify hInt
  simp only [IntervalRat.mem_def] at hmem
  exact_mod_cast hmem.2

end LeanCert.Validity.CertificateIntegration
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean#L857).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823024257f25d2ab06d8e4b433ae52ba395d781e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
