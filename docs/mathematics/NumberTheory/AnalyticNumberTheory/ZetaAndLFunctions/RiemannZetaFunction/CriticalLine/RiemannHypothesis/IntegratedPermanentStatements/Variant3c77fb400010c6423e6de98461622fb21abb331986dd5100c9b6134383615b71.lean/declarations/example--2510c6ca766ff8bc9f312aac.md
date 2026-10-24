# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f1cae7ac5ffa755eb0b4e73f5c3797bb8b1048078be182c05d1324c84f253ac",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--2510c6ca766ff8bc9f312aac",
  "source": {
    "blob": "36177e87859fed251f7c5fb5ed47610d87ce0d49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2144,
    "line": 2131,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant3c77fb400010c6423e6de98461622fb21abb331986dd5100c9b6134383615b71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2510c6ca766ff8bc9f312aac1a36075d53d8ce28b014cd63b0cf3402c8c43fde",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant3c77fb400010c6423e6de98461622fb21abb331986dd5100c9b6134383615b71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f1cae7ac5ffa755eb0b4e73f5c3797bb8b1048078be182c05d1324c84f253ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2131–2144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) :
    rectangularContribution (insert 2 P) g T T
      (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) =
        rectangularContribution P g T T
          (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) -
        (if Nat.Coprime g 2 then 1 else 0) *
          rectangularContribution P g (T / 2) T
            (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) :=
  TwoInsertionBoundary.rankOne_square_insert_two A P g T hP h2P

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant3c77fb400010c6423e6de98461622fb21abb331986dd5100c9b6134383615b71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant3c77fb400010c6423e6de98461622fb21abb331986dd5100c9b6134383615b71.lean#L2131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36177e87859fed251f7c5fb5ed47610d87ce0d49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
