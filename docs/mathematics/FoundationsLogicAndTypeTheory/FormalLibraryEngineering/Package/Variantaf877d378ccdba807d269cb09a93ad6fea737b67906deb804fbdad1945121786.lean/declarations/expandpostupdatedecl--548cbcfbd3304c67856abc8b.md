# expandPostUpdateDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fec888f27f0e3e406e9ac2bd0b407c340081c229944314f6fe6e216551dbf83d",
  "kind": "def",
  "lexical_name": "expandPostUpdateDecl",
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
  "slug": "expandpostupdatedecl--548cbcfbd3304c67856abc8b",
  "source": {
    "blob": "cca941b8bc58cb25278435431eec68d3d01dae53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantaf877d378ccdba807d269cb09a93ad6fea737b67906deb804fbdad1945121786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:548cbcfbd3304c67856abc8b504d29b6110bf12905c8931ec102d54cd2be1de7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantaf877d378ccdba807d269cb09a93ad6fea737b67906deb804fbdad1945121786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fec888f27f0e3e406e9ac2bd0b407c340081c229944314f6fe6e216551dbf83d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandPostUpdateDecl : Macro := fun stx => do
  match stx with
  | `($[$doc?]? $[$attrs?]? post_update%$kw $[$pkg?]? do $seq $[$wds?:whereDecls]?) =>
    `($[$doc?]? $[$attrs?]? post_update%$kw $[$pkg?]? := do $seq $[$wds?:whereDecls]?)
  | `($[$doc?]? $[$attrs?]? post_update%$kw $[$pkg?]? := $defn $[$wds?:whereDecls]?) => withRef kw do
    let pkg ← expandOptSimpleBinder pkg?
    let attr ← `(Term.attrInstance| «post_update»)
    let attrs := #[attr] ++ expandAttrs attrs?
    `($[$doc?]? @[$attrs,*] def postUpdateHook : PostUpdateHookDecl :=
      {pkg := __name__, fn := fun $pkg => $defn} $[$wds?:whereDecls]?)
  | stx => Macro.throwErrorAt stx "ill-formed post_update declaration"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantaf877d378ccdba807d269cb09a93ad6fea737b67906deb804fbdad1945121786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantaf877d378ccdba807d269cb09a93ad6fea737b67906deb804fbdad1945121786.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cca941b8bc58cb25278435431eec68d3d01dae53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
