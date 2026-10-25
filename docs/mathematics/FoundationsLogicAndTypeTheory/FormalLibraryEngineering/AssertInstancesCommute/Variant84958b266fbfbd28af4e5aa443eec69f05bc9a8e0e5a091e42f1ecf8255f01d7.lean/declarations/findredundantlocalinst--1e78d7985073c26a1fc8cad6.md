# findRedundantLocalInst?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a8838ac7b73449b13155b4adf655e413cae936c0552709d95bd302ad41eeb58",
  "kind": "def",
  "lexical_name": "findRedundantLocalInst?",
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
  "slug": "findredundantlocalinst--1e78d7985073c26a1fc8cad6",
  "source": {
    "blob": "d67d3503a9892c5a6750c6942bd89aff0e3b1e85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertInstancesCommute/Variant84958b266fbfbd28af4e5aa443eec69f05bc9a8e0e5a091e42f1ecf8255f01d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e78d7985073c26a1fc8cad6ef1f4d080ccbadabe9ed9ed2c1afc40dedccdea1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertInstancesCommute/Variant84958b266fbfbd28af4e5aa443eec69f05bc9a8e0e5a091e42f1ecf8255f01d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a8838ac7b73449b13155b4adf655e413cae936c0552709d95bd302ad41eeb58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def findRedundantLocalInst? : QuoteM (Option (FVarId × Expr)) := do
  for {fvar, ..} in ← withUnquotedLCtx getLocalInstances do
    if let some (.quoted (.fvar quotedFVar)) := (← read).exprBackSubst[fvar]? then
      if (← quotedFVar.getDecl).hasValue then continue
      if let some result ← withUnquotedLCtx do isRedundantLocalInst? fvar.fvarId! then
        return (fvar.fvarId!, result)
  return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertInstancesCommute/Variant84958b266fbfbd28af4e5aa443eec69f05bc9a8e0e5a091e42f1ecf8255f01d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertInstancesCommute/Variant84958b266fbfbd28af4e5aa443eec69f05bc9a8e0e5a091e42f1ecf8255f01d7.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d67d3503a9892c5a6750c6942bd89aff0e3b1e85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
