# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e46c772041c1b2039437cde9bd79e2b3677931e0ee1f777c103a07fe0abdac9a",
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
  "slug": "example--c480022c87a2ffa6b78029fd",
  "source": {
    "blob": "4bbd0fc12fca5f8c4ce373c5cc894e4fd74b48f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 122,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryStatements/Variantcf7b45e7cd244b60c82fda9544d6cea43a787e2d3ce767b40246a1630e03d84d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c480022c87a2ffa6b78029fd0142830c29ee1715485d42238ac7133d13793b63",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryStatements/Variantcf7b45e7cd244b60c82fda9544d6cea43a787e2d3ce767b40246a1630e03d84d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e46c772041c1b2039437cde9bd79e2b3677931e0ee1f777c103a07fe0abdac9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) =
      (∑ d ∈ (Icc 1 N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) -
      ∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A (2 * d : ℕ) :=
  TwoInsertionBoundary.sourceLinear_two_split A N

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryStatements/Variantcf7b45e7cd244b60c82fda9544d6cea43a787e2d3ce767b40246a1630e03d84d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryStatements/Variantcf7b45e7cd244b60c82fda9544d6cea43a787e2d3ce767b40246a1630e03d84d.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bbd0fc12fca5f8c4ce373c5cc894e4fd74b48f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
