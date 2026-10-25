# withExtHyps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c962e8aad68f908d35a068f666c3585980551b7856c2c11e2cb03d2218bc7fb4",
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
  "slug": "withexthyps--4e8559dfed1db7006254d1fe",
  "source": {
    "blob": "e80cb9849228dda1a7536d70bcb3a48d76d9383a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantd4c448f6986aaebe314a1bc7c311909c3180e91862b5ecf1273bd489ed2d2ac0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e8559dfed1db7006254d1feadb572ff86b8ebe9f67edd4d6856f4388b881c77",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantd4c448f6986aaebe314a1bc7c311909c3180e91862b5ecf1273bd489ed2d2ac0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c962e8aad68f908d35a068f666c3585980551b7856c2c11e2cb03d2218bc7fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withExtHyps (struct : Name) (flat : Term)
    (k : Array Expr → (x y : Expr) → Array (Name × Expr) → MetaM α) : MetaM α := do
  let flat ← match flat with
  | `(true) => pure true
  | `(false) => pure false
  | _ => throwErrorAt flat "expected 'true' or 'false'"
  unless isStructure (← getEnv) struct do throwError "not a structure: {struct}"
  let structC ← mkConstWithLevelParams struct
  forallTelescope (← inferType structC) fun params _ => do
  withNewBinderInfos (params.map (·.fvarId!, BinderInfo.implicit)) do
  withLocalDeclD `x (mkAppN structC params) fun x => do
  withLocalDeclD `y (mkAppN structC params) fun y => do
    let mut hyps := #[]
    let fields := if flat then
      getStructureFieldsFlattened (← getEnv) struct (includeSubobjectFields := false)
    else
      getStructureFields (← getEnv) struct
    for field in fields do
      let x_f ← mkProjection x field
      let y_f ← mkProjection y field
      if ← isProof x_f then
        pure ()
      else if ← isDefEq (← inferType x_f) (← inferType y_f) then
        hyps := hyps.push (field, ← mkEq x_f y_f)
      else
        hyps := hyps.push (field, ← mkHEq x_f y_f)
    k params x y hyps

/--
Creates the type of the extensionality lemma for the given structure,
elaborating to `x.1 = y.1 → x.2 = y.2 → x = y`, for example.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantd4c448f6986aaebe314a1bc7c311909c3180e91862b5ecf1273bd489ed2d2ac0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantd4c448f6986aaebe314a1bc7c311909c3180e91862b5ecf1273bd489ed2d2ac0.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80cb9849228dda1a7536d70bcb3a48d76d9383a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
