# thetaPhiNormalizedParityCompression_eq_prod_eigenvalues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43fbdaad99e5c2a2708a7fa421bff61017793841",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bcb9c5c3-6dd8-6e4d-db7e-bfc620e67bf8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7cf0e6b-ccfc-c6fa-df44-009146b657ab",
  "kind": "theorem",
  "lexical_name": "thetaPhiNormalizedParityCompression_eq_prod_eigenvalues",
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
  "slug": "thetaphinormalizedparitycompression-eq-prod-eigenvalues--e131a6237c9bd14959411a48",
  "source": {
    "blob": "43fbdaad99e5c2a2708a7fa421bff61017793841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e131a6237c9bd14959411a4800939198446338c6c40cdecbb095b8207521db67",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7cf0e6b-ccfc-c6fa-df44-009146b657ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiNormalizedParityCompression_eq_prod_eigenvalues
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiNormalizedParityCompression k L N t =
      ∏ i : Fin k,
        (thetaPhiWhitenedParityCompression_isHermitian
          k L N t).eigenvalues i := by
  rw [thetaPhiNormalizedParityCompression_eq_whitened_det
    hk hN t]
  simpa using
    (thetaPhiWhitenedParityCompression_isHermitian
      k L N t).det_eq_prod_eigenvalues

/-- Number of strictly negative eigenvalues of the canonical finite theta
phase compression, counted with the fixed spectral-theorem indexing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43fbdaad99e5c2a2708a7fa421bff61017793841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
