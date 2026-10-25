# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8a04a05d735f01bfa14d93a0fc765b98297e042fa0a022220a9c55d7362fe5c",
  "kind": "initialize",
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
  "slug": "initialize--eaac7c2a94d2672325eaad37",
  "source": {
    "blob": "1e5ae0f63770e44345eab0854b2a669618698685",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Varianta8b6b5f77cff57c676cf9312a48292c0f3e7758572407bc8e8f01f19a783f7f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaac7c2a94d2672325eaad376d2444075c0a19bb41a2788512ce08a7441523d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Varianta8b6b5f77cff57c676cf9312a48292c0f3e7758572407bc8e8f01f19a783f7f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8a04a05d735f01bfa14d93a0fc765b98297e042fa0a022220a9c55d7362fe5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize ignoreTacticKindsRef : IO.Ref NameHashSet ←
  IO.mkRef <| (∅ : NameHashSet)
    |>.insert ``Parser.Term.binderTactic
    |>.insert ``Lean.Parser.Term.dynamicQuot
    |>.insert ``Lean.Parser.Tactic.quotSeq
    |>.insert ``Lean.Parser.Tactic.tacticStop_
    |>.insert ``Lean.Parser.Command.notation
    |>.insert ``Lean.Parser.Command.mixfix
    |>.insert ``Lean.Parser.Command.registerTryTactic
    |>.insert ``Lean.Parser.Tactic.discharger

/-- Is this a syntax kind that contains intentionally unevaluated tactic subterms? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Varianta8b6b5f77cff57c676cf9312a48292c0f3e7758572407bc8e8f01f19a783f7f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Varianta8b6b5f77cff57c676cf9312a48292c0f3e7758572407bc8e8f01f19a783f7f2.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e5ae0f63770e44345eab0854b2a669618698685` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
