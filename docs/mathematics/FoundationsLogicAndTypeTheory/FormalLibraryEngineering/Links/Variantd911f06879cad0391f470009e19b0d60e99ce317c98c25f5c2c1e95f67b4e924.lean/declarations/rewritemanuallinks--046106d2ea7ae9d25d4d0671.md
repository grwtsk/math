# rewriteManualLinks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a827da76c7cf87c12e57fd26366836d1bdebfdc485523ac8020b89cb4edee3b",
  "kind": "def",
  "lexical_name": "rewriteManualLinks",
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
  "slug": "rewritemanuallinks--046106d2ea7ae9d25d4d0671",
  "source": {
    "blob": "0b57475bcb44ff10a6738fd85cbd2ca651fc00f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Links/Variantd911f06879cad0391f470009e19b0d60e99ce317c98c25f5c2c1e95f67b4e924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:046106d2ea7ae9d25d4d06713c7662925c5835f76809b3fdfce68dbbba9be86b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Links/Variantd911f06879cad0391f470009e19b0d60e99ce317c98c25f5c2c1e95f67b4e924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a827da76c7cf87c12e57fd26366836d1bdebfdc485523ac8020b89cb4edee3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def rewriteManualLinks (docString : String) : BaseIO String := do
  let (errs, str) ← rewriteManualLinksCore docString
  if !errs.isEmpty then
    let errReport :=
      r#"**❌ Syntax Errors in Lean Language Reference Links**

The `lean-manual` URL scheme is used to link to the version of the Lean reference manual that
corresponds to this version of Lean. Errors occurred while processing the links in this documentation
comment:
"# ++
      String.join (errs.toList.map (fun (⟨s, e⟩, msg) => s!" * ```{String.Pos.Raw.extract docString s e}```: {msg}\n\n"))
    return str ++ "\n\n" ++ errReport
  return str


/--
Validates all links to the Lean reference manual in `docstring`, printing an error message if any
are invalid. Returns `true` if all links are valid.

This is intended to be used before saving a docstring that is later subject to rewriting with
`rewriteManualLinks`, in contexts where the imports needed to produce better error messages in
`validateDocComment` are not yet available.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Links/Variantd911f06879cad0391f470009e19b0d60e99ce317c98c25f5c2c1e95f67b4e924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Links/Variantd911f06879cad0391f470009e19b0d60e99ce317c98c25f5c2c1e95f67b4e924.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b57475bcb44ff10a6738fd85cbd2ca651fc00f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
