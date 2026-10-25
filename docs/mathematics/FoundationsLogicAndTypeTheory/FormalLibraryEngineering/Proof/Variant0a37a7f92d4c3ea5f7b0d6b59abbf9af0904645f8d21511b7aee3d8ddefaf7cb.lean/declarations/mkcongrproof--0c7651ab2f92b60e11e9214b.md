# mkCongrProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:942b950d4e9f65fee28f2bb863d0cb847b87299de79418424495c13df6818a1e",
  "kind": "def",
  "lexical_name": "mkCongrProof",
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
  "slug": "mkcongrproof--0c7651ab2f92b60e11e9214b",
  "source": {
    "blob": "8f7f38f5ea05a9d2fc3c433fb6b87d5611b781d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 248,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c7651ab2f92b60e11e9214b6a58e69ddbdc1b3c43237dbe03f9592f3a3acc1c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:942b950d4e9f65fee28f2bb863d0cb847b87299de79418424495c13df6818a1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def mkCongrProof (lhs rhs : Expr) (heq : Bool) : GoalM Expr := do
    if let .forallE _ p₁ q₁ _ := lhs then
      let .forallE _ p₂ q₂ _ := rhs | unreachable!
      let u ← withDefault <| getLevel p₁
      let v ← withDefault <| getLevel q₁
      return mkApp6 (mkConst ``implies_congr [u, v]) p₁ p₂ q₁ q₂ (← mkEqProofCore p₁ p₂ false) (← mkEqProofCore q₁ q₂ false)
    else if (← useFunCC lhs) then
      mkCongrProofFunCC lhs rhs heq
    else
      let f := lhs.getAppFn
      let g := rhs.getAppFn
      let numArgs := lhs.getAppNumArgs
      assert! rhs.getAppNumArgs == numArgs
      if numArgs == 2 && f.isConstOf ``Grind.nestedProof && g.isConstOf ``Grind.nestedProof then
        mkNestedProofCongr lhs rhs heq
      else if numArgs == 2 && f.isConstOf ``Grind.nestedDecidable && g.isConstOf ``Grind.nestedDecidable then
        mkNestedDecidableCongr lhs rhs heq
      else if numArgs == 3 && f.isConstOf ``Eq && g.isConstOf ``Eq then
        let r ← mkEqCongrProof lhs rhs
        if heq then mkHEqOfEq r else return r
      else if (← isCongrDefaultProofTarget lhs rhs f g numArgs) then
        mkCongrDefaultProof lhs rhs heq
      else
        mkHCongrProof lhs rhs heq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f7f38f5ea05a9d2fc3c433fb6b87d5611b781d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
