# expandModuleFacetDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5667e2350a5885fed8d89f2f43d0d3de2758fe2454e8f5f4cf5d1dfa2bba7a1b",
  "kind": "def",
  "lexical_name": "expandModuleFacetDecl",
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
  "slug": "expandmodulefacetdecl--3f9d92cc7d4bd7b5c188b369",
  "source": {
    "blob": "282f166cc2e5654160774d06dc4836b558e00e10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f9d92cc7d4bd7b5c188b369fa586b09bff26b2e614814d63a3470357a585506",
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

Occurrence: `declaration:5667e2350a5885fed8d89f2f43d0d3de2758fe2454e8f5f4cf5d1dfa2bba7a1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandModuleFacetDecl : Macro := fun stx => do
  let `(moduleFacetDecl|$(doc?)? $(attrs?)? module_facet%$kw $sig) := stx
    | Macro.throwErrorAt stx "ill-formed module facet declaration"
  let `(buildDeclSig| $nameStx $[$mod?]? : $ty := $defn $[$wds?:whereDecls]?) := sig
    | Macro.throwErrorAt sig "ill-formed module facet declaration"
  withRef kw do
  let attr ← `(Term.attrInstance| «module_facet»)
  let attrs := #[attr] ++ expandAttrs attrs?
  let id := expandIdentOrStrAsIdent nameStx
  let facet := Name.quoteFrom id id.getId
  let declId := mkIdentFrom id <| id.getId.modifyBase (.str · "_modFacet")
  let mod ← expandOptSimpleBinder mod?
  `(module_data $id : $ty
    $[$doc?:docComment]? @[$attrs,*] abbrev $declId :=
      Lake.DSL.mkModuleFacetDecl $ty $facet (fun $mod => $defn)
    $[$wds?:whereDecls]?)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `282f166cc2e5654160774d06dc4836b558e00e10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
