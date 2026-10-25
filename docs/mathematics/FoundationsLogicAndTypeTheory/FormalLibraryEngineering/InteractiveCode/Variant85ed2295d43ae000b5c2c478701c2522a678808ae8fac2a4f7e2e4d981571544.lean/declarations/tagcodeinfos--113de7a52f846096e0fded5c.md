# tagCodeInfos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:376806c4e1ba63b78e12f725958970cf6d7d99de1d42862a82c59c2d068f06eb",
  "kind": "def",
  "lexical_name": "tagCodeInfos",
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
  "slug": "tagcodeinfos--113de7a52f846096e0fded5c",
  "source": {
    "blob": "ce001c361df3c3a0c540706bea083c1c4f1fe978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveCode/Variant85ed2295d43ae000b5c2c478701c2522a678808ae8fac2a4f7e2e4d981571544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:113de7a52f846096e0fded5cc15b6a3107498d7192bff262d7772d5cbc3d1402",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveCode/Variant85ed2295d43ae000b5c2c478701c2522a678808ae8fac2a4f7e2e4d981571544.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:376806c4e1ba63b78e12f725958970cf6d7d99de1d42862a82c59c2d068f06eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def tagCodeInfos (ctx : Elab.ContextInfo) (infos : SubExpr.PosMap Elab.Info) (tt : TaggedText (Nat × Nat))
    : BaseIO CodeWithInfos :=
  go tt
where
  go (tt : TaggedText (Nat × Nat)) : BaseIO (TaggedText SubexprInfo) :=
    tt.rewriteM fun (n, _) subTt => do
      match infos.get? n with
      | none   => go subTt
      | some i =>
        let t : SubexprInfo := {
          info := ← WithRpcRef.mk { ctx, info := i, children := .empty }
          subexprPos := n
        }
        return TaggedText.tag t (← go subTt)

open PrettyPrinter Delaborator in
/--
Pretty prints the expression `e` using delaborator `delab`, returning an object that represents
the pretty printed syntax paired with information needed to support hovers.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveCode/Variant85ed2295d43ae000b5c2c478701c2522a678808ae8fac2a4f7e2e4d981571544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveCode/Variant85ed2295d43ae000b5c2c478701c2522a678808ae8fac2a4f7e2e4d981571544.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce001c361df3c3a0c540706bea083c1c4f1fe978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
