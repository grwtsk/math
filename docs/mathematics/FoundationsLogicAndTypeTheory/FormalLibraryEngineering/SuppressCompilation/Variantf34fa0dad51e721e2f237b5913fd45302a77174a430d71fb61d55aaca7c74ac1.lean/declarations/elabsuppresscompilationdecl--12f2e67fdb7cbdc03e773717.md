# elabSuppressCompilationDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df60e7415d10956afd3b530d79625016c283b3c01c70f9f16610eacd5a416080",
  "kind": "def",
  "lexical_name": "elabSuppressCompilationDecl",
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
  "slug": "elabsuppresscompilationdecl--12f2e67fdb7cbdc03e773717",
  "source": {
    "blob": "282f69234f8dbf65ac82b39c8ada8ae79cd47e1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuppressCompilation/Variantf34fa0dad51e721e2f237b5913fd45302a77174a430d71fb61d55aaca7c74ac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12f2e67fdb7cbdc03e77371700f1bfa5636cf882a3402ab13125295d4ba7663e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuppressCompilation/Variantf34fa0dad51e721e2f237b5913fd45302a77174a430d71fb61d55aaca7c74ac1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df60e7415d10956afd3b530d79625016c283b3c01c70f9f16610eacd5a416080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabSuppressCompilationDecl : CommandElab := fun
| `($[$doc?:docComment]? $(attrs?)? $(vis?)? $[noncomputable]? $(unsafe?)?
    $(recKind?)? def $id $sig:optDeclSig $val:declVal) => do
  elabDeclaration <| ← `($[$doc?:docComment]? $(attrs?)? $(vis?)? noncomputable $(unsafe?)?
    $(recKind?)? def $id $sig:optDeclSig $val:declVal)
| `($[$doc?:docComment]? $(attrs?)? $(vis?)? $[noncomputable]? $(unsafe?)?
    $(recKind?)? def $id $sig:optDeclSig $val:declVal deriving $derivs,*) => do
  elabDeclaration <| ← `($[$doc?:docComment]? $(attrs?)? $(vis?)? noncomputable $(unsafe?)?
    $(recKind?)? def $id $sig:optDeclSig $val:declVal deriving $derivs,*)
| `($[$doc?:docComment]? $(attrs?)? $(vis?)? $[noncomputable]? $(unsafe?)?
    $(recKind?)? $(attrKind?)? instance $(prio?)? $(id?)? $sig:declSig $val:declVal) => do
  elabDeclaration <| ← `($[$doc?:docComment]? $(attrs?)? $(vis?)? noncomputable $(unsafe?)?
    $(recKind?)? $(attrKind?)? instance $(prio?)? $(id?)? $sig:declSig $val:declVal)
| `($[$doc?:docComment]? $(attrs?)? $(vis?)? $[noncomputable]? $(unsafe?)?
    $(recKind?)? example $sig:optDeclSig $val:declVal) => do
  elabDeclaration <| ← `($[$doc?:docComment]? $(attrs?)? $(vis?)? noncomputable $(unsafe?)?
    $(recKind?)? example $sig:optDeclSig $val:declVal)
| `($[$doc?:docComment]? $(attrs?)? $(vis?)? $[noncomputable]? $(unsafe?)?
    $(recKind?)? abbrev $id $sig:optDeclSig $val:declVal) => do
  elabDeclaration <| ← `($[$doc?:docComment]? $(attrs?)? $(vis?)? noncomputable $(unsafe?)?
    $(recKind?)? abbrev $id $sig:optDeclSig $val:declVal)
| _ => throwUnsupportedSyntax

/-- The command `unsuppress_compilation in def foo : ...` makes sure that the definition is
compiled to executable code, even if `suppress_compilation` is active. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuppressCompilation/Variantf34fa0dad51e721e2f237b5913fd45302a77174a430d71fb61d55aaca7c74ac1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuppressCompilation/Variantf34fa0dad51e721e2f237b5913fd45302a77174a430d71fb61d55aaca7c74ac1.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `282f69234f8dbf65ac82b39c8ada8ae79cd47e1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
