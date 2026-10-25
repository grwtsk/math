# findClosestInfoWithLocalContextAt?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba7d237069f8c07a3487540b47aa3842f3af71e9b478fea51b80c0cb0b201f31",
  "kind": "def",
  "lexical_name": "findClosestInfoWithLocalContextAt?",
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
  "slug": "findclosestinfowithlocalcontextat--48c437e40f7e1d5b7702c321",
  "source": {
    "blob": "9714c7a7a11cb4df44efc50d0811e40487049aeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48c437e40f7e1d5b7702c3219f0875c8eb1d84955651cd9a358346e0d6fa7910",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba7d237069f8c07a3487540b47aa3842f3af71e9b478fea51b80c0cb0b201f31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def findClosestInfoWithLocalContextAt?
    (hoverPos : String.Pos.Raw)
    (infoTree : InfoTree)
    : Option (ContextInfo × Info) :=
  findBest? infoTree isBetter fun ctx info _ =>
    if info.occursInOrOnBoundary hoverPos then
      (ctx, info)
    else
      none
where
  isBetter (a b : ContextInfo × Info) : Bool :=
    let (_, ia) := a
    let (_, ib) := b
    if !ia.lctx.isEmpty && ib.lctx.isEmpty then
      true
    else if ia.lctx.isEmpty && !ib.lctx.isEmpty then
      false
    else if ia.isSmaller ib then
      true
    else if ib.isSmaller ia then
      false
    else
      false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9714c7a7a11cb4df44efc50d0811e40487049aeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
