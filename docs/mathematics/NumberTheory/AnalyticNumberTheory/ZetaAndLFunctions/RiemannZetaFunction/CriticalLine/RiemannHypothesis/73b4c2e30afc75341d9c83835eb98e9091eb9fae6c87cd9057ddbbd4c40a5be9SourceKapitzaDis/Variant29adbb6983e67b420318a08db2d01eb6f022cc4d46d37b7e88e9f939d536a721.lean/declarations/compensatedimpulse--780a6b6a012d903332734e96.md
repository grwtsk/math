# compensatedImpulse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4e51a2a534c077b88fd2fff073fb8acdb83a044f2c7cbe053bccfa998bad7e6",
  "kind": "def",
  "lexical_name": "compensatedImpulse",
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
  "slug": "compensatedimpulse--780a6b6a012d903332734e96",
  "source": {
    "blob": "04f70a5ade55978582a7665b31ad4bf855132c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9SourceKapitzaDis/Variant29adbb6983e67b420318a08db2d01eb6f022cc4d46d37b7e88e9f939d536a721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:780a6b6a012d903332734e960264d2446bdd5b273cd003d3adcffcbb7636d901",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9SourceKapitzaDis/Variant29adbb6983e67b420318a08db2d01eb6f022cc4d46d37b7e88e9f939d536a721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4e51a2a534c077b88fd2fff073fb8acdb83a044f2c7cbe053bccfa998bad7e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compensatedImpulse (n : ℕ) : ℝ := ArithmeticFunction.vonMangoldt n - 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9SourceKapitzaDis/Variant29adbb6983e67b420318a08db2d01eb6f022cc4d46d37b7e88e9f939d536a721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9SourceKapitzaDis/Variant29adbb6983e67b420318a08db2d01eb6f022cc4d46d37b7e88e9f939d536a721.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04f70a5ade55978582a7665b31ad4bf855132c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
