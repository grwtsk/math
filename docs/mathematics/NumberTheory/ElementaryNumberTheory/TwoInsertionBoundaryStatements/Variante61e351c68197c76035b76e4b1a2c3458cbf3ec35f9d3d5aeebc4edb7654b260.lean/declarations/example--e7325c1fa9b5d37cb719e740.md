# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b121a3c77fe79072ea9121e57d3c187f018e2640cfe836b4622274bfaeeb7d1",
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
  "slug": "example--e7325c1fa9b5d37cb719e740",
  "source": {
    "blob": "d11157f76c4b254f08ebdc0218cb4e0c741b1d3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 71,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryStatements/Variante61e351c68197c76035b76e4b1a2c3458cbf3ec35f9d3d5aeebc4edb7654b260.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7325c1fa9b5d37cb719e740daf2be2da373d78114db2094638f49f884ab53d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryStatements/Variante61e351c68197c76035b76e4b1a2c3458cbf3ec35f9d3d5aeebc4edb7654b260.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b121a3c77fe79072ea9121e57d3c187f018e2640cfe836b4622274bfaeeb7d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) (hg : ¬Nat.Coprime g 2) :
    rectangularContribution (insert 2 P) g T T
      (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) =
        rectangularContribution P g T T
          (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) :=
  TwoInsertionBoundary.rankOne_square_insert_two_not_coprime A P g T hP h2P hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryStatements/Variante61e351c68197c76035b76e4b1a2c3458cbf3ec35f9d3d5aeebc4edb7654b260.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryStatements/Variante61e351c68197c76035b76e4b1a2c3458cbf3ec35f9d3d5aeebc4edb7654b260.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d11157f76c4b254f08ebdc0218cb4e0c741b1d3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
