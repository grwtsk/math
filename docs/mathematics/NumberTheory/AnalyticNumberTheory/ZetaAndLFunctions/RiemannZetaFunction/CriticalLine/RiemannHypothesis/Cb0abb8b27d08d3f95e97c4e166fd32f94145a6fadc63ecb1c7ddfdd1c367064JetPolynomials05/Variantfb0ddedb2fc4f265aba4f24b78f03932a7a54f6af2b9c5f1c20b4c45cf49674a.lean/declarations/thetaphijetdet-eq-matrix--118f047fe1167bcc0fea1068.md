# thetaPhiJetDet_eq_matrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:751e573b-1b6f-bb27-0d5e-da314371aa3e",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetDet_eq_matrix",
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
  "slug": "thetaphijetdet-eq-matrix--118f047fe1167bcc0fea1068",
  "source": {
    "blob": "b837d60eb9be045a55669074fd0e3f6e5694925b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064JetPolynomials05/Variantfb0ddedb2fc4f265aba4f24b78f03932a7a54f6af2b9c5f1c20b4c45cf49674a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:118f047fe1167bcc0fea10680ccf8b87282e7115e4fdc96c7c88dd713d7d5b32",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064JetPolynomials05/Variantfb0ddedb2fc4f265aba4f24b78f03932a7a54f6af2b9c5f1c20b4c45cf49674a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:751e573b-1b6f-bb27-0d5e-da314371aa3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetDet_eq_matrix (v : Fin 5 → ℝ) :
    thetaPhiJetDet v = Matrix.det !![v 0, v 1, v 2; v 1, v 2, v 3; v 2, v 3, v 4] := by
  simp [thetaPhiJetDet, Matrix.det_fin_three]
  ring

/-- The first two modes already have a uniform negative jet determinant.
The proof is a nonnegative-coefficient certificate after the shift `A = x + 3`.
The second-mode exponential weight may be any nonnegative real number here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064JetPolynomials05/Variantfb0ddedb2fc4f265aba4f24b78f03932a7a54f6af2b9c5f1c20b4c45cf49674a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064JetPolynomials05/Variantfb0ddedb2fc4f265aba4f24b78f03932a7a54f6af2b9c5f1c20b4c45cf49674a.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b837d60eb9be045a55669074fd0e3f6e5694925b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
