# expandPackageFacetDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43262dec671bd5a6f7963ab56ad245288fb43cb96245f768e824eb370c34b1a9",
  "kind": "def",
  "lexical_name": "expandPackageFacetDecl",
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
  "slug": "expandpackagefacetdecl--c968c2d762d4e229e5819ca9",
  "source": {
    "blob": "5155f41bb728b07e4d2bc4ffd193195ff2d7737b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variantf37beb9b96d1f3510153ecd97f1d723f6f824c5c991fe43d870b8e7f0fbdf387.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c968c2d762d4e229e5819ca942501badd46ae5ff8aa1c3a6687aaa8a59c8b3f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variantf37beb9b96d1f3510153ecd97f1d723f6f824c5c991fe43d870b8e7f0fbdf387.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43262dec671bd5a6f7963ab56ad245288fb43cb96245f768e824eb370c34b1a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandPackageFacetDecl : Macro := fun stx => do
  let `(packageFacetDecl|$(doc?)? $(attrs?)? package_facet%$kw $sig) := stx
    | Macro.throwErrorAt stx "ill-formed package facet declaration"
  let `(buildDeclSig| $nameStx $[$pkg?]? : $ty := $defn $[$wds?:whereDecls]?) := sig
    | Macro.throwErrorAt sig "ill-formed package facet signature"
  withRef kw do
  let attr ← `(Term.attrInstance| «package_facet»)
  let attrs := #[attr] ++ expandAttrs attrs?
  let id := expandIdentOrStrAsIdent nameStx
  let facet := Name.quoteFrom id id.getId
  let declId := mkIdentFrom id <| id.getId.modifyBase (.str · "_pkgFacet")
  let pkg ← expandOptSimpleBinder pkg?
  `(package_data $id : $ty
    $[$doc?]? @[$attrs,*] abbrev $declId :=
      Lake.DSL.mkPackageFacetDecl $ty $facet (fun $pkg => $defn)
    $[$wds?:whereDecls]?)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variantf37beb9b96d1f3510153ecd97f1d723f6f824c5c991fe43d870b8e7f0fbdf387.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variantf37beb9b96d1f3510153ecd97f1d723f6f824c5c991fe43d870b8e7f0fbdf387.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5155f41bb728b07e4d2bc4ffd193195ff2d7737b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
