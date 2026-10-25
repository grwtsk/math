# mkSymmCongrProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c08d8ba20415a36c5f347254b1409e73a7ffa6de5386717d874aebc2ca0f7cd2",
  "kind": "def",
  "lexical_name": "mkSymmCongrProof",
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
  "slug": "mksymmcongrproof--418c6f1f4a121be4aa9ad9a6",
  "source": {
    "blob": "dfc379783c76d7ad01c62f53e4cc6306991feafd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 323,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:418c6f1f4a121be4aa9ad9a656744ee9c63fa4b68c76d6a6034f728a10003b6f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c08d8ba20415a36c5f347254b1409e73a7ffa6de5386717d874aebc2ca0f7cd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkSymmCongrProof (e₁ e₂ : Expr) (heqProofs : Bool) : CCM (Option Expr) := do
  let some (R₁, lhs₁, rhs₁) ← e₁.relSidesIfSymm? | return none
  let some (R₂, lhs₂, rhs₂) ← e₂.relSidesIfSymm? | return none
  if R₁ != R₂ then return none
  if (← isEqv lhs₁ lhs₂) then
    return none
  guard (← isEqv lhs₁ rhs₂)
  /- We must apply symmetry.
     The symm congruence table is implicitly using symmetry.
     That is, we have
       `e₁ := lhs₁ ~R₁~ rhs₁`
     and
       `e2 := lhs₂ ~R₁~ rhs₂`
     But,
     `lhs₁ ~R₁~ rhs₂` and `rhs₁ ~R₁~ lhs₂` -/
  /- Given `e₁ := lhs₁ ~R₁~ rhs₁`,
     create proof for
       `lhs₁ ~R₁~ rhs₁` = `rhs₁ ~R₁~ lhs₁` -/
  let newE₁ ← mkRel R₁ rhs₁ lhs₁
  let e₁IffNewE₁ ←
    withLocalDeclD `h₁ e₁ fun h₁ =>
    withLocalDeclD `h₂ newE₁ fun h₂ => do
      mkAppM ``Iff.intro
        #[← mkLambdaFVars #[h₁] (← h₁.applySymm), ← mkLambdaFVars #[h₂] (← h₂.applySymm)]
  let mut e₁EqNewE₁ := mkApp3 (.const ``propext []) e₁ newE₁ e₁IffNewE₁
  let newE₁EqE₂ ← mkCongrProofCore newE₁ e₂ heqProofs
  if heqProofs then
    e₁EqNewE₁ ← mkAppM ``heq_of_eq #[e₁EqNewE₁]
  return some (← mkTrans e₁EqNewE₁ newE₁EqE₂ heqProofs)

/-- Use congruence on arguments to prove `e₁ = e₂`.

Special case: if `e₁` and `e₂` have the form `R lhs₁ rhs₁` and `R lhs₂ rhs₂` such that
`R` is symmetric and `lhs₁ = rhs₂`, then use those facts instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfc379783c76d7ad01c62f53e4cc6306991feafd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
