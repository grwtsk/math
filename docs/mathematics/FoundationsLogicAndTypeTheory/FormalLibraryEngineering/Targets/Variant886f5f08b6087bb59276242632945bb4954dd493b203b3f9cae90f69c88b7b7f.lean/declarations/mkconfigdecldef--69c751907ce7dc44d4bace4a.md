# mkConfigDeclDef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33a192049114e170e85efc14205ccf5aecaa73b663067ed4aa40121e851e7be9",
  "kind": "def",
  "lexical_name": "mkConfigDeclDef",
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
  "slug": "mkconfigdecldef--69c751907ce7dc44d4bace4a",
  "source": {
    "blob": "282f166cc2e5654160774d06dc4836b558e00e10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69c751907ce7dc44d4bace4a300c0b0e0356fca1a3be18416dc9409944ffe195",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33a192049114e170e85efc14205ccf5aecaa73b663067ed4aa40121e851e7be9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkConfigDeclDef
  (tyName attr kind : Name)
  [ConfigInfo tyName] [delTyName : TypeName (KConfigDecl kind)]
  (doc? : Option DocComment) (attrs? : Option Attributes)
  (nameStx? : Option IdentOrStr) (cfg : OptConfig)
: CommandElabM Command := do
  let configId : Ident ← `(config)
  let id ← mkConfigDeclIdent nameStx?
  let name := Name.quoteFrom id id.getId
  let ty := Syntax.mkCApp tyName #[name]
  elabConfig tyName configId ty cfg
  let attrId ← mkIdentFromRef attr
  let targetAttr ← `(Term.attrInstance| «target»)
  let kindAttr ← `(Term.attrInstance| $attrId:ident)
  let attrs := #[targetAttr, kindAttr] ++ expandAttrs attrs?
  let declTy ← mkIdentFromRef delTyName.typeName
  let kind := Name.quoteFrom (← getRef) kind
  `(family_def $id : CustomOut (__name__, $name) := ConfigTarget $kind
    $[$doc?]? abbrev $id : $declTy :=
      Lake.DSL.mkConfigDecl __name__ $name $kind $configId
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `282f166cc2e5654160774d06dc4836b558e00e10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
