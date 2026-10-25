# evalIntros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a3c176078937e81a2e068590786f4ad1cb11ef105e78eb13f157899b80811e5",
  "kind": "def",
  "lexical_name": "evalIntros",
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
  "slug": "evalintros--aa7dfc21de3e7811c2b121de",
  "source": {
    "blob": "9ac72035c41bb6175b7b6f262220e570d44586cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 387,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa7dfc21de3e7811c2b121de28d3e2c397fab658b815b2af658f8bb28ec02db1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a3c176078937e81a2e068590786f4ad1cb11ef105e78eb13f157899b80811e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic «intros»] def evalIntros : Tactic := fun stx =>
  match stx with
  | `(tactic| intros) => liftMetaTactic fun mvarId => do
    let (_, mvarId) ← mvarId.intros
    return [mvarId]
  | `(tactic| intros $ids*) => do
    let fvars ← liftMetaTacticAux fun mvarId => do
      let (fvars, mvarId) ← mvarId.introN ids.size (ids.map getNameOfIdent').toList
      return (fvars, [mvarId])
    withMainContext do
      for stx in ids, fvar in fvars do
        Term.addLocalVarInfo stx (mkFVar fvar)
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ac72035c41bb6175b7b6f262220e570d44586cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
