# derivative_bulk_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06284398-fa2c-2de1-feab-26451aacad71",
  "kind": "theorem",
  "lexical_name": "derivative_bulk_intervalIntegrable",
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
  "slug": "derivative-bulk-intervalintegrable--955b5cb34bb7829f02ee0b67",
  "source": {
    "blob": "85ab1cce50a371f1a323b764be74cfb0373c9aaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt04/Varianta80d8f86bffd4f35e96bf1912ed0b3d3b50215b81f307c62fcef5669441e02f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:955b5cb34bb7829f02ee0b670e416f1e3b167d1c4072db68500fca50c91ce816",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt04/Varianta80d8f86bffd4f35e96bf1912ed0b3d3b50215b81f307c62fcef5669441e02f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06284398-fa2c-2de1-feab-26451aacad71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem derivative_bulk_intervalIntegrable {A v b l r : ℝ} (hA : 0 < A)
    (hv : 0 < v) (hvb : v ≤ b) (hlr : l ≤ r) :
    IntervalIntegrable
      (fun t => ∫ u in v..b, |deriv (actualPeriodicPhysicalCellProfile A t) u|) volume l r := by
  apply (intervalIntegrable_iff_integrableOn_Ioc_of_le (μ := volume) hlr).2
  have h := (derivative_box_integrable hA hv hvb hlr).integral_prod_left
  simpa only [intervalIntegral.integral_of_le hvb, IntegrableOn] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt04/Varianta80d8f86bffd4f35e96bf1912ed0b3d3b50215b81f307c62fcef5669441e02f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt04/Varianta80d8f86bffd4f35e96bf1912ed0b3d3b50215b81f307c62fcef5669441e02f8.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85ab1cce50a371f1a323b764be74cfb0373c9aaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
