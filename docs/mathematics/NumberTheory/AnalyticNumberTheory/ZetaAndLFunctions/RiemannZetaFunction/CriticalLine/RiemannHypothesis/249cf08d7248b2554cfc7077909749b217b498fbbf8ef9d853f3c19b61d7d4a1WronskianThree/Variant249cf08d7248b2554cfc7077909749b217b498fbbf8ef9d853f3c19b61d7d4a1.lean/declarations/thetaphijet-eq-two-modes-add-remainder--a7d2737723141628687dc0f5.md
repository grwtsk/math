# thetaPhiJet_eq_two_modes_add_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64657c9881bdb2249f169c0e48e2a57b1aa1b2f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a6f2341-2c32-7e3a-0a7e-c0b5a581549e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:472068fd-e7a7-0dec-f159-f674f40278d6",
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
  "slug": "thetaphijet-eq-two-modes-add-remainder--a7d2737723141628687dc0f5",
  "source": {
    "blob": "64657c9881bdb2249f169c0e48e2a57b1aa1b2f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1WronskianThree/Variant249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7d2737723141628687dc0f5f7fe51e72eb9c5d787ee1add01e2d8e2066ccc53",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1WronskianThree/Variant249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:472068fd-e7a7-0dec-f159-f674f40278d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–53.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1WronskianThree/Variant249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1WronskianThree/Variant249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64657c9881bdb2249f169c0e48e2a57b1aa1b2f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
