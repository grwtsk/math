# Hilbert.traceClass_operator_is_traceClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:745479e0-c143-9adf-f541-13820c44e366",
  "kind": "theorem",
  "lexical_name": "Hilbert.traceClass_operator_is_traceClass",
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
  "slug": "hilbert-traceclass-operator-is-traceclass--417a6cc32774f629b6f3726b",
  "source": {
    "blob": "debf0a0a2882325802dca68e17c8a1b232d44747",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TraceClass/Variant296fb7e3bd47824bb54fc4945c45c943dcc03ff2c09d1bbb2dd346f3ba9cc0c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:417a6cc32774f629b6f3726ba60ac734d83ce2437276f2afe8587b44a9da4199",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TraceClass/Variant296fb7e3bd47824bb54fc4945c45c943dcc03ff2c09d1bbb2dd346f3ba9cc0c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:745479e0-c143-9adf-f541-13820c44e366`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Hilbert.traceClass_operator_is_traceClass
    {H : Hilbert.Space.{u, v}}
    {T : Hilbert.LinearOperator H H}
    (C : Hilbert.TraceClassCertificate T) :
    C.traceClass :=
  C.traceClassCertified

end Surface
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TraceClass/Variant296fb7e3bd47824bb54fc4945c45c943dcc03ff2c09d1bbb2dd346f3ba9cc0c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TraceClass/Variant296fb7e3bd47824bb54fc4945c45c943dcc03ff2c09d1bbb2dd346f3ba9cc0c0.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `debf0a0a2882325802dca68e17c8a1b232d44747` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
