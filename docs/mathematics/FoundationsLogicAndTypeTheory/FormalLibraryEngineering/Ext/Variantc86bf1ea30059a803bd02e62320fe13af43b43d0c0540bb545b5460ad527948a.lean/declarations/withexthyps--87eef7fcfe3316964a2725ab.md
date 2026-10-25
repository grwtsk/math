# withExtHyps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42c61054b4bde3a96c60f1286e6efd6f2c618188b20ebe6da95471a3bd05cbde",
  "kind": "def",
  "lexical_name": "withExtHyps",
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
  "slug": "withexthyps--87eef7fcfe3316964a2725ab",
  "source": {
    "blob": "9696f8a49876b9f79f9b348db541de0167786ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87eef7fcfe3316964a2725ab0d541fefe1624abf166ff3f3e709abe76e9246d4",
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

Occurrence: `declaration:42c61054b4bde3a96c60f1286e6efd6f2c618188b20ebe6da95471a3bd05cbde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withExtHyps (struct : Name) (flat : Bool)
    (k : Array Expr → (x y : Expr) → Array (Name × Expr) → MetaM α) : MetaM α := do
  unless isStructure (← getEnv) struct do
    throwError "Internal error when constructing `ext` hypotheses: `{struct}` is not a structure"
  let structC ← mkConstWithLevelParams struct
  forallTelescope (← inferType structC) fun params _ => do
  withImplicitBinderInfos params do
  withLocalDecl `x .implicit (mkAppN structC params) fun x => do
  withLocalDecl `y .implicit (mkAppN structC params) fun y => do
    let mut hyps := #[]
    let fields ← if flat then
      pure <| getStructureFieldsFlattened (← getEnv) struct (includeSubobjectFields := false)
    else
      pure <| getStructureFields (← getEnv) struct
    for field in fields do
      let x_f ← mkProjection x field
      let y_f ← mkProjection y field
      unless ← isProof x_f do
        hyps := hyps.push (field, ← mkEqHEq x_f y_f)
    k params x y hyps

/--
Creates the type of the extensionality theorem for the given structure,
returning `∀ {x y : Struct}, x.1 = y.1 → x.2 = y.2 → x = y`, for example.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9696f8a49876b9f79f9b348db541de0167786ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
