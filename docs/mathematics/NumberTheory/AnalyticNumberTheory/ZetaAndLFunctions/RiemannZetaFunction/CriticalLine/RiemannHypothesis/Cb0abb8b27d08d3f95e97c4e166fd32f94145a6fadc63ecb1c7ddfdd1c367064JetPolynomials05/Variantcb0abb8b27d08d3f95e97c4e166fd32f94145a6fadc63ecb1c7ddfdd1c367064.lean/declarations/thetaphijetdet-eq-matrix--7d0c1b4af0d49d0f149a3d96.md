# thetaPhiJetDet_eq_matrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d10c272c921162b6060d1a9d74e80ae15fd685ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9eaad7c5-e960-9ca3-200e-149c6478236f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62854592-c59a-4501-3577-a905a55a1b56",
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
  "slug": "thetaphijetdet-eq-matrix--7d0c1b4af0d49d0f149a3d96",
  "source": {
    "blob": "d10c272c921162b6060d1a9d74e80ae15fd685ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064JetPolynomials05/Variantcb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d0c1b4af0d49d0f149a3d96bb637cf2caaa1ef8c1639af39e72703635d9276e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064JetPolynomials05/Variantcb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62854592-c59a-4501-3577-a905a55a1b56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–53.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064JetPolynomials05/Variantcb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064JetPolynomials05/Variantcb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d10c272c921162b6060d1a9d74e80ae15fd685ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
