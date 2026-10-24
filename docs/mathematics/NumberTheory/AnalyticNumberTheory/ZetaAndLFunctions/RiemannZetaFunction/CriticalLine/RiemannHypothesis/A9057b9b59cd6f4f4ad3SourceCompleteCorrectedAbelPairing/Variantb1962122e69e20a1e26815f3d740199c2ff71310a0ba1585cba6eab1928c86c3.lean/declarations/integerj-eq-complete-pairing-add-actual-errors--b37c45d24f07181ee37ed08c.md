# integerJ_eq_complete_pairing_add_actual_errors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55f48f51-275a-814d-4604-0c17a3bf6a11",
  "kind": "theorem",
  "lexical_name": "integerJ_eq_complete_pairing_add_actual_errors",
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
  "slug": "integerj-eq-complete-pairing-add-actual-errors--b37c45d24f07181ee37ed08c",
  "source": {
    "blob": "e64d3b1a4438ca112a8b573b7796640487bd4019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variantb1962122e69e20a1e26815f3d740199c2ff71310a0ba1585cba6eab1928c86c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b37c45d24f07181ee37ed08c0edb4295597fd05cc01d547763bef20ddd1abe77",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variantb1962122e69e20a1e26815f3d740199c2ff71310a0ba1585cba6eab1928c86c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55f48f51-275a-814d-4604-0c17a3bf6a11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerJ_eq_complete_pairing_add_actual_errors (A : ℝ) (hA : 91 ≤ A) :
    integerJ A = completeCorrectedAbelPairing A + actualPeanoCubicError A +
      completeOmegaError A := by
  rw [integerJ_eq_completeOmega_add_error A hA,
    completeOmega_eq_complete_pairing_add_actualPeanoError A (by linarith)]

/-- The source residual retains the original independent discrete baseline. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variantb1962122e69e20a1e26815f3d740199c2ff71310a0ba1585cba6eab1928c86c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variantb1962122e69e20a1e26815f3d740199c2ff71310a0ba1585cba6eab1928c86c3.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64d3b1a4438ca112a8b573b7796640487bd4019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
