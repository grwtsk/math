# endpointValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a9c6b74bf7067f7009c0b1011d79eb9b67887cf1bcea26cdabb13eddd4b0285",
  "kind": "def",
  "lexical_name": "endpointValue",
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
  "slug": "endpointvalue--bbd4740bd8ed3125fd6531f7",
  "source": {
    "blob": "11a56e0850bd4f682e76cb96cc033613c74968ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbd4740bd8ed3125fd6531f71ca6edbc0a76dc924c3a9a65db04f1e98f8c1486",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a9c6b74bf7067f7009c0b1011d79eb9b67887cf1bcea26cdabb13eddd4b0285`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endpointValue (A : ℝ) : ℝ := normalizedPsiError (2 * A)

/-- The backward unit-sample slope of the same closed arithmetic discrepancy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11a56e0850bd4f682e76cb96cc033613c74968ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
