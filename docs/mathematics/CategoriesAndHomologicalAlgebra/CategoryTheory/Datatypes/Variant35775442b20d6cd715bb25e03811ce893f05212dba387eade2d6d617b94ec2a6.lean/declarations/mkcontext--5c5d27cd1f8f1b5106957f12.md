# mkContext?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e11f226e4e20b291ab822b042704160026dc9548c4b2c863625583f02682625",
  "kind": "def",
  "lexical_name": "mkContext?",
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
  "slug": "mkcontext--5c5d27cd1f8f1b5106957f12",
  "source": {
    "blob": "63915ec6e79d03391ac2738557d7e0e86795514a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c5d27cd1f8f1b5106957f1299ed00a5d3fbdb3499e049ea88ae67eeb5595a83",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e11f226e4e20b291ab822b042704160026dc9548c4b2c863625583f02682625`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkContext? (e : Expr) : MetaM (Option Context) := do
  let e ← instantiateMVars e
  let type ← instantiateMVars <| ← inferType e
  match (← whnfR type).getAppFnArgs with
  | (``Quiver.Hom, #[_, _, f, _]) =>
    let C ← instantiateMVars <| ← inferType f
    let .succ level₁ ← getLevel C | return none
    let .succ level₂ ← getLevel type | return none
    let .some instCat ← synthInstance?
      (mkAppN (.const ``Category [level₂, level₁]) #[C]) | return none
    let instMonoidal? ← synthInstance?
      (mkAppN (.const ``MonoidalCategory [level₂, level₁]) #[C, instCat])
    return some ⟨level₂, level₁, C, instCat, instMonoidal?⟩
  | _ => return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63915ec6e79d03391ac2738557d7e0e86795514a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
