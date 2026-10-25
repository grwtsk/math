# mkAuxFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:897e6e7626bd8b715a9f4de8aff0f25adace7d465e12331df3d59eff043def96",
  "kind": "def",
  "lexical_name": "mkAuxFunction",
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
  "slug": "mkauxfunction--4ab5e2da3b38faaad0292068",
  "source": {
    "blob": "cf7a7321999c116a59abc095dcdd97f3658fdef3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ab5e2da3b38faaad0292068c794e4a9990f4a405c75f453abd480d0d15891f7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:897e6e7626bd8b715a9f4de8aff0f25adace7d465e12331df3d59eff043def96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkAuxFunction (ctx : Context) (i : Nat) : TermElabM Command := do
  let auxFunName := ctx.auxFunNames[i]!
  let indVal     := ctx.typeInfos[i]!
  let header     ← mkOrdHeader indVal
  let mut body   ← mkMatch header indVal
  if ctx.usePartial then
    let letDecls ← mkLocalInstanceLetDecls ctx `Ord header.argNames
    body ← mkLet letDecls body
  let binders    := header.binders
  if ctx.usePartial then
    `(partial def $(mkIdent auxFunName):ident $binders:bracketedBinder* : Ordering := $body:term)
  else
    `(def $(mkIdent auxFunName):ident $binders:bracketedBinder* : Ordering := $body:term)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf7a7321999c116a59abc095dcdd97f3658fdef3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
