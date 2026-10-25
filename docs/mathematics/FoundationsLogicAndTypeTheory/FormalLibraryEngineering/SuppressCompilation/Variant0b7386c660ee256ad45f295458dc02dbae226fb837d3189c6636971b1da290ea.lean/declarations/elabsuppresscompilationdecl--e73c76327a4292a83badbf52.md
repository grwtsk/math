# elabSuppressCompilationDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3f7e28ccaa13f42a2543f15c8976a1bf870cbd12b964bed4d7ccd89d389e3db",
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
  "slug": "elabsuppresscompilationdecl--e73c76327a4292a83badbf52",
  "source": {
    "blob": "ce7c46967e863adf563df2faad21a22ab1d3b2af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuppressCompilation/Variant0b7386c660ee256ad45f295458dc02dbae226fb837d3189c6636971b1da290ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e73c76327a4292a83badbf52b761e989d2b2bad1bb255e711a2141f53bbc1abd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuppressCompilation/Variant0b7386c660ee256ad45f295458dc02dbae226fb837d3189c6636971b1da290ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3f7e28ccaa13f42a2543f15c8976a1bf870cbd12b964bed4d7ccd89d389e3db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–55.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuppressCompilation/Variant0b7386c660ee256ad45f295458dc02dbae226fb837d3189c6636971b1da290ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuppressCompilation/Variant0b7386c660ee256ad45f295458dc02dbae226fb837d3189c6636971b1da290ea.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7c46967e863adf563df2faad21a22ab1d3b2af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
