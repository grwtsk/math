# evalCase'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50aac0928cc4df95b24e96951004f757c19af062da2ee0c88cb9e902593f10a7",
  "kind": "def",
  "lexical_name": "evalCase'",
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
  "slug": "evalcase--8b1085293978a3fe4f2aeac9",
  "source": {
    "blob": "33b1ad92faeeedea2580823a3a9656fcec893769",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 625,
    "line": 609,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b1085293978a3fe4f2aeac99899fad7d296e02a828b159ac1f9c12f1f115c5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50aac0928cc4df95b24e96951004f757c19af062da2ee0c88cb9e902593f10a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–625.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic «case'»] def evalCase' : Tactic
  | `(tactic| case'%$caseTk $[$tag $hs*]|* =>%$arr $tac:tacticSeq) => do
    let mut acc := #[]
    for tag in tag, hs in hs do
      let (g, gs) ← getCaseGoals tag
      let g ← renameInaccessibles g hs
      let mvarTag ← g.getTag
      setGoals [g]
      withCaseRef arr tac <| withTacticInfoContext (mkNullNode #[caseTk, arr]) <| evalTactic tac
      let gs' ← getUnsolvedGoals
      if let [g'] := gs' then
        g'.setTag mvarTag
      acc := acc ++ gs'
      setGoals gs
    setGoals (acc.toList ++ (← getGoals))
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantfb8a36d5798f0b4ad891e3b8f136c50f6e6202e8f4a970615a71050e55649b20.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33b1ad92faeeedea2580823a3a9656fcec893769` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
