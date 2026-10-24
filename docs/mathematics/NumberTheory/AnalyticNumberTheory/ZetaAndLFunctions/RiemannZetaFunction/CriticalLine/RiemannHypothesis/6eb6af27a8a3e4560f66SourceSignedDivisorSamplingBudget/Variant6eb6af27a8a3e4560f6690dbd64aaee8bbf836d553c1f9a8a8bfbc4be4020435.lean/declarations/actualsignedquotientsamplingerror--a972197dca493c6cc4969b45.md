# actualSignedQuotientSamplingError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db5c3f2c87a27f1f9f1de14ac51694a5606d2f6ebf68d32e3fb78fd019286a9c",
  "kind": "def",
  "lexical_name": "actualSignedQuotientSamplingError",
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
  "slug": "actualsignedquotientsamplingerror--a972197dca493c6cc4969b45",
  "source": {
    "blob": "bd9c409e3fac27fc8d433e9376d731b9b18390c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a972197dca493c6cc4969b45d1835b54ee543337002dff3907da8e4515ec921b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db5c3f2c87a27f1f9f1de14ac51694a5606d2f6ebf68d32e3fb78fd019286a9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualSignedQuotientSamplingError (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
    (∑ m ∈ longInventory A, vonMangoldt m * actualQuotientSamplingError A d m)

/-- The original divisor remainder retains all independently specified rows and diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd9c409e3fac27fc8d433e9376d731b9b18390c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
