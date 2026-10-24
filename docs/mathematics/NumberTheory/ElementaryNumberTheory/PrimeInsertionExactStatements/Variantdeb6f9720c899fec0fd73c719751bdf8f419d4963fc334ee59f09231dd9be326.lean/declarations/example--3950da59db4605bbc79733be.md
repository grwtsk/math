# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b82a5ad668d61d55cfe8b8dedcd011ca4635cb21469870b6a73a301f35bb02d3",
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
  "slug": "example--3950da59db4605bbc79733be",
  "source": {
    "blob": "4666ee2c478c83421f1eab63608b4d404f57962d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 17,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertionExactStatements/Variantdeb6f9720c899fec0fd73c719751bdf8f419d4963fc334ee59f09231dd9be326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3950da59db4605bbc79733bed23147a2efb9d09f1d7fe9e614b587a39a163a17",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeInsertionExactStatements/Variantdeb6f9720c899fec0fd73c719751bdf8f419d4963fc334ee59f09231dd9be326.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b82a5ad668d61d55cfe8b8dedcd011ca4635cb21469870b6a73a301f35bb02d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (P : Finset ℕ) (g U V : ℕ) (E : ℕ → ℝ) :
    rectangularContribution P g U V E =
      ∑ a ∈ supportedPairs P, if a.1 ≤ U ∧ a.2 ≤ V then
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
            E ((a.1 * a.2) * g ^ 2) else 0 := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeInsertionExactStatements/Variantdeb6f9720c899fec0fd73c719751bdf8f419d4963fc334ee59f09231dd9be326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertionExactStatements/Variantdeb6f9720c899fec0fd73c719751bdf8f419d4963fc334ee59f09231dd9be326.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4666ee2c478c83421f1eab63608b4d404f57962d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
