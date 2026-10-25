# decodeUnificationHint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba8a8cbf66858246e860cd1fd45e97521d2b2d58c439a2cedb0c41778373812f",
  "kind": "def",
  "lexical_name": "decodeUnificationHint",
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
  "slug": "decodeunificationhint--afab5f81e1a39a6793076341",
  "source": {
    "blob": "07535d273864f949114ced62bf7bcaf94e4b1e88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnificationHint/Variant9b08d9429970bab0917a7edaf698323f373eb18da10c1215899fa61f4caf10cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afab5f81e1a39a6793076341662379bd203a80ba4cd8a1b5fc4d323ee03ba364",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnificationHint/Variant9b08d9429970bab0917a7edaf698323f373eb18da10c1215899fa61f4caf10cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba8a8cbf66858246e860cd1fd45e97521d2b2d58c439a2cedb0c41778373812f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def decodeUnificationHint (e : Expr) : ExceptT MessageData Id UnificationHint := do
  decode e #[]
where
  decodeConstraint (e : Expr) : ExceptT MessageData Id UnificationConstraint :=
    match e.eq? with
    | some (_, lhs, rhs) => return UnificationConstraint.mk lhs rhs
    | none => throw m!"invalid unification hint constraint, unexpected term{indentExpr e}"
  decode (e : Expr) (cs : Array UnificationConstraint) : ExceptT MessageData Id UnificationHint := do
    match e with
    | Expr.forallE _ d b _ => do
      let c ← decodeConstraint d
      if b.hasLooseBVars then
        throw m!"invalid unification hint constraint, unexpected dependency{indentExpr e}"
      decode b (cs.push c)
    | _ => do
      let p ← decodeConstraint e
      return { pattern := p, constraints := cs.toList }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnificationHint/Variant9b08d9429970bab0917a7edaf698323f373eb18da10c1215899fa61f4caf10cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnificationHint/Variant9b08d9429970bab0917a7edaf698323f373eb18da10c1215899fa61f4caf10cb.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07535d273864f949114ced62bf7bcaf94e4b1e88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
