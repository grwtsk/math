# thetaPhiJet_eq_two_modes_add_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcf87d967ea5786fdead5c7a65d05f34b2d009bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b65046f2-e68c-adb7-4429-ede803534b4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6b5b5dc-5676-6ecf-42ad-2b968fc5ccc4",
  "kind": "theorem",
  "lexical_name": "thetaPhiJet_eq_two_modes_add_remainder",
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
  "slug": "thetaphijet-eq-two-modes-add-remainder--59e52e110daeeeece5b8ee3d",
  "source": {
    "blob": "dcf87d967ea5786fdead5c7a65d05f34b2d009bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59e52e110daeeeece5b8ee3d0f3845c90c1582253be10b80b6a7cb790aa64ddf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6b5b5dc-5676-6ecf-42ad-2b968fc5ccc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJet_eq_two_modes_add_remainder (k : Fin 5) (t : ℝ) :
    thetaPhiJet t k = (Real.pi * Real.exp (5 * t - thetaModeA t)) *
      (thetaPhiJetPolynomial k (thetaModeA t) +
        4 * Real.exp (-3 * thetaModeA t) * thetaPhiJetPolynomial k (4 * thetaModeA t) +
          ∑' m : ℕ, ((m : ℝ) + 3) ^ 2 *
            thetaPhiJetPolynomial k (thetaModeA t * ((m : ℝ) + 3) ^ 2) *
              Real.exp (-thetaModeA t * (((m : ℝ) + 3) ^ 2 - 1))) := by
  rw [thetaPhiJet_eq_polynomial_sum, thetaPhiJet_polynomial_sum_eq_two_modes]


/-- The actual source jet has a strictly negative third Hankel determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant01cecd7d0d1f212a68a974d5172f0c48a784cacad9d4f9fc20780edbd1256371.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcf87d967ea5786fdead5c7a65d05f34b2d009bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
