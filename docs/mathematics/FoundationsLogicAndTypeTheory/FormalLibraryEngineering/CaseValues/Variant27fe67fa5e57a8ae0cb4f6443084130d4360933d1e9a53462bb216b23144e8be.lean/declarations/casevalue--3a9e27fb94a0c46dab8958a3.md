# caseValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:643a47d3a9eed539f2d463201ec50be883e1cb6199727804cc067538d0e64396",
  "kind": "def",
  "lexical_name": "caseValue",
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
  "slug": "casevalue--3a9e27fb94a0c46dab8958a3",
  "source": {
    "blob": "9e69acf23e5ce0e7d04b4ed040e3216fb54c45bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseValues/Variant27fe67fa5e57a8ae0cb4f6443084130d4360933d1e9a53462bb216b23144e8be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a9e27fb94a0c46dab8958a3a6af76d4d73f34a87049b46ccf387f99b7b9f3a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseValues/Variant27fe67fa5e57a8ae0cb4f6443084130d4360933d1e9a53462bb216b23144e8be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:643a47d3a9eed539f2d463201ec50be883e1cb6199727804cc067538d0e64396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def caseValue (mvarId : MVarId) (fvarId : FVarId) (value : Expr) (hName : Name := `h)
    : MetaM (MVarId × MVarId) :=
  mvarId.withContext do
    let tag ← mvarId.getTag
    mvarId.checkNotAssigned `caseValue
    let target ← mvarId.getType
    let xEqValue ← mkEq (mkFVar fvarId) (← normLitValue value)
    let xNeqValue := mkApp (mkConst `Not) xEqValue
    let thenTarget := Lean.mkForall hName BinderInfo.default xEqValue  target
    let elseTarget := Lean.mkForall hName BinderInfo.default xNeqValue target
    let thenMVar ← mkFreshExprSyntheticOpaqueMVar thenTarget tag
    let elseMVar ← mkFreshExprSyntheticOpaqueMVar elseTarget tag
    let val ← mkAppOptM `dite #[none, xEqValue, none, thenMVar, elseMVar]
    mvarId.assign val
    return (thenMVar.mvarId!, elseMVar.mvarId!)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseValues/Variant27fe67fa5e57a8ae0cb4f6443084130d4360933d1e9a53462bb216b23144e8be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseValues/Variant27fe67fa5e57a8ae0cb4f6443084130d4360933d1e9a53462bb216b23144e8be.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e69acf23e5ce0e7d04b4ed040e3216fb54c45bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
