# jointFlux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98e1bf6c46907939c6d4e623241d245c62f05e427ca77f4404bf8a7a63676f26",
  "kind": "def",
  "lexical_name": "jointFlux",
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
  "slug": "jointflux--4b0efa2eb82b91b29c78b449",
  "source": {
    "blob": "b36c4d494fe5293e83afda3a1053376b434c005d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 491,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment04/Variant5fef77b01d2df7b78f37fbc7bbcf44ca95ef5b9bf9d5b19237f9b5a4c310083a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b0efa2eb82b91b29c78b449b63b4fc719e0d78634b80b906ad726a97d8df9da",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment04/Variant5fef77b01d2df7b78f37fbc7bbcf44ca95ef5b9bf9d5b19237f9b5a4c310083a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98e1bf6c46907939c6d4e623241d245c62f05e427ca77f4404bf8a7a63676f26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def jointFlux (A : ℝ) (U N : ℕ) : ℝ :=
  -(moebius (U + 1) : ℝ) * multiplesOffAt A (U + 1) N (U + 1) -
    boundaryAt A U N (beta U) +
    (Real.log (U + 1 : ℕ) - Real.log (U : ℝ)) +
    vonMangoldt (U + 1) * sourcePlainWeight A (U + 1 : ℕ) +
    (moebius (U + 1) : ℝ) * sourceLogSamplingMainTerm A (U + 1 : ℕ) -
    shortPlainIncrement A U

/-- Exact complete adjacent balance; no absolute estimate is applied to its joint signed terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment04/Variant5fef77b01d2df7b78f37fbc7bbcf44ca95ef5b9bf9d5b19237f9b5a4c310083a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment04/Variant5fef77b01d2df7b78f37fbc7bbcf44ca95ef5b9bf9d5b19237f9b5a4c310083a.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b36c4d494fe5293e83afda3a1053376b434c005d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
