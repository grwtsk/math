# collectGoalsAndCtxFromMessage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a3a595ab5b6ef60908e3425dbe6e5425962e5e5b5ff229f567a7a41f9c75d7d",
  "kind": "def",
  "lexical_name": "collectGoalsAndCtxFromMessage",
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
  "slug": "collectgoalsandctxfrommessage--44e9e0ec90516e0da77ec742",
  "source": {
    "blob": "6b7e4fa75788992bb30fdb5933e81e9f5d28c4d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44e9e0ec90516e0da77ec742dfe037fb9bf742898d529e4f60b514f9203614fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a3a595ab5b6ef60908e3425dbe6e5425962e5e5b5ff229f567a7a41f9c75d7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def collectGoalsAndCtxFromMessage (msg : MessageData) :
    Array (MessageDataContext × NamingContext × MVarId) := go none none msg #[]
where
  go (mc? : Option MessageDataContext) (nc? : Option NamingContext)
      (msg : MessageData) (acc : Array _) := match msg with
    | .withContext c msg         => go (some c) nc? msg acc
    | .withNamingContext n msg   => go mc? (some n) msg acc
    | .nest _ msg | .group msg   => go mc? nc? msg acc
    | .tagged _ msg              => go mc? nc? msg acc
    | .compose a b               => go mc? nc? b (go mc? nc? a acc)
    | .ofWidget _ alt            => go mc? nc? alt acc
    | .trace _ msg children      =>
      children.foldl (init := go mc? nc? msg acc) (fun acc m => go mc? nc? m acc)
    | .ofGoal mvarId             =>
      match mc?, nc? with
      | some mc, some nc => acc.push (mc, nc, mvarId)
      | _, _             => acc
    | _                          => acc

/--
Locate the tactic-sequence body in `cmd` "responsible" for an `unsolved goals` error
at `range`. Returns `(body, insertPos)` where `body` is the null-node holding the
tactics (used for separator computation) and `insertPos` is where to append a new
tactic.

Strategy: descend along the path of nodes whose range contains `range`, then take
the outermost seq-variant in the smallest containing node's subtree -- handling both
the case where the error is logged inside the body (`case h => skip`, `{ skip }`,
`· skip`) and the case where it's logged at an adjacent token (`by` keyword for
`by skip`, the synthetic case-body marker, etc.).

The only syntax-kind knowledge is `tacticSeq1Indented` vs `tacticSeqBracketed`,
needed to read the tactics-container at child index 0 vs 1 and to know that the
empty-body insertion point sits before `}` (for bracketed) or right after the
opening token (for indented -- the message range's `stop` is a reliable proxy).

These two kinds are the complete universe of tactic-sequence variants in the parser:
`tacticSeq` (`def tacticSeq := tacticSeqBracketed <|> tacticSeq1Indented`) and
`tacticSeqIndentGt` are pure wrappers that descend into one of the two real forms,
and `walkAndFind` pierces them transparently via DFS. New seq variants would have
to be added here; the silent-skip is reported via the call-site trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b7e4fa75788992bb30fdb5933e81e9f5d28c4d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
