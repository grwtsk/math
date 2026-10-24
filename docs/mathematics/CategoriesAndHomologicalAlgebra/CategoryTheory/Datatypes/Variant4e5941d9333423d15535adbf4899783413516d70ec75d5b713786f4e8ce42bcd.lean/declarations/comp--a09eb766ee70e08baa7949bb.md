# comp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b991da3d13ccd18b530091fe31819d6868497337d4392524e8b990db1ad6e59b",
  "kind": "def",
  "lexical_name": "comp?",
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
  "slug": "comp--a09eb766ee70e08baa7949bb",
  "source": {
    "blob": "ff2e31c79c8cb2375943b65d1d7edc88fa97d293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 428,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant4e5941d9333423d15535adbf4899783413516d70ec75d5b713786f4e8ce42bcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a09eb766ee70e08baa7949bbfed85a83f4b66ef6ba19e3a17ec83c0d16e1dcd5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant4e5941d9333423d15535adbf4899783413516d70ec75d5b713786f4e8ce42bcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b991da3d13ccd18b530091fe31819d6868497337d4392524e8b990db1ad6e59b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comp? (e : Expr) : BicategoryM (Option (Mor₁ × Mor₁)) := do
  let ctx ← read
  let _bicat := ctx.instBicategory
  let a ← mkFreshExprMVarQ ctx.B
  let b ← mkFreshExprMVarQ ctx.B
  let c ← mkFreshExprMVarQ ctx.B
  let f ← mkFreshExprMVarQ q($a ⟶ $b)
  let g ← mkFreshExprMVarQ q($b ⟶ $c)
  if ← withDefault <| isDefEq e q($f ≫ $g) then
    let a ← instantiateMVars a
    let b ← instantiateMVars b
    let c ← instantiateMVars c
    let f ← instantiateMVars f
    let g ← instantiateMVars g
    return some ((.of ⟨f, ⟨a⟩, ⟨b⟩⟩), .of ⟨g, ⟨b⟩, ⟨c⟩⟩)
  else
    return none

/-- Construct a `Mor₁` expression from a Lean expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant4e5941d9333423d15535adbf4899783413516d70ec75d5b713786f4e8ce42bcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant4e5941d9333423d15535adbf4899783413516d70ec75d5b713786f4e8ce42bcd.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff2e31c79c8cb2375943b65d1d7edc88fa97d293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
