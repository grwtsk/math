# realizeExtIffTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edb181c040387f0a568bbad04678ec4f3e4da628b3c05b28c356cea3979f3831",
  "kind": "def",
  "lexical_name": "realizeExtIffTheorem",
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
  "slug": "realizeextifftheorem--15d3b2eee6b89e9346458faf",
  "source": {
    "blob": "9696f8a49876b9f79f9b348db541de0167786ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15d3b2eee6b89e9346458faf4d656e0bf89ccd4ec8183efe514e136fea9299e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edb181c040387f0a568bbad04678ec4f3e4da628b3c05b28c356cea3979f3831`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def realizeExtIffTheorem (extName : Name) : TermElabM Name := do
  let extIffName : Name :=
    match extName with
    | .str n s => .str n (s ++ "_iff")
    | _ => .str extName "ext_iff"
  unless (← getEnv).contains extIffName do
    try
      let info ← getConstInfo extName
      withLCtx {} {} <| withoutErrToSorry <| withDeclName extIffName do
        let type ← mkExtIffType extName
        let pf ← withoutExporting <| withSynthesize do
          Term.elabTermEnsuringType (expectedType? := type) <| ← `(by
            intros
            refine ⟨?_, ?_⟩
            · intro h; cases h; and_intros <;> (intros; first | rfl | simp | fail "Failed to prove converse of ext theorem")
            · intro; (repeat cases ‹_ ∧ _›); apply $(mkCIdent extName) <;> assumption)
        let pf ← instantiateMVars pf
        if pf.hasMVar then throwError "Internal error: Synthesized `ext_iff` proof contains metavariables{indentD pf}"
        addDecl <| Declaration.thmDecl {
          name := extIffName
          type
          value := pf
          levelParams := info.levelParams
        }
        -- Only declarations in a namespace can be protected:
        unless extIffName.isAtomic do
          modifyEnv fun env => addProtected env extIffName
        addDeclarationRangesFromSyntax extIffName (← getRef)
    catch e =>
      throwError m!"\
        Failed to generate an `ext_iff` theorem from `{.ofConstName extName}`: {e.toMessageData}"
        ++ .hint' m!"Try `@[ext (iff := false)]` to prevent generating an `ext_iff` theorem."
  return extIffName


/-!
### Attribute
-/

open Ext

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9696f8a49876b9f79f9b348db541de0167786ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
