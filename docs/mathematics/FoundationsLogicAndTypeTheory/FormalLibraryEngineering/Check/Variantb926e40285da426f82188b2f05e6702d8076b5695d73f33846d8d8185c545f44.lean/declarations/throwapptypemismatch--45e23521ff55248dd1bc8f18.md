# throwAppTypeMismatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2500e9428cdb89a0605ca2574a1bf28cd7e6e50ed76e28b2a3ef260e4f779aa1",
  "kind": "def",
  "lexical_name": "throwAppTypeMismatch",
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
  "slug": "throwapptypemismatch--45e23521ff55248dd1bc8f18",
  "source": {
    "blob": "3796de18422be472bddb3d8e6e7710ede519f4c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 250,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45e23521ff55248dd1bc8f189a767b45737dd16a0de2e004a29bd52ef7cc04fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2500e9428cdb89a0605ca2574a1bf28cd7e6e50ed76e28b2a3ef260e4f779aa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def throwAppTypeMismatch (f a : Expr) : MetaM α := do
  -- Clarify that `a` is "last" only if it may be confused with some preceding argument; otherwise,
  -- avoid this wording because it may be misleading if more arguments follow `a`, e.g., if `f a` is
  -- a subexpression of `f a b`
  let argDescStr := if f.getAppArgs.any (· == a) then
    m!"last{indentExpr a}\nargument "
  else
    m!"argument{indentExpr a}\n"
  let mut e := mkApp f a
  let msg ← try
    let (expectedType, binfo) ← getFunctionDomain f
    unless binfo.isExplicit do
      e := e.setAppPPExplicit
    let aType ← inferType a
    let hasTypeButIsExpected ← mkHasTypeButIsExpectedMsg aType expectedType
      (trailing? := m!"in the application{indentExpr e}") (trailingExprs := #[e])
    pure m!"Application type mismatch: The {argDescStr}{hasTypeButIsExpected}"
  catch _ =>
    e := e.setAppPPExplicit
    pure m!"Application type mismatch: The {argDescStr}is not of the expected type in the application{indentExpr e}"
  throwError msg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantb926e40285da426f82188b2f05e6702d8076b5695d73f33846d8d8185c545f44.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3796de18422be472bddb3d8e6e7710ede519f4c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
