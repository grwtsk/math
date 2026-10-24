# Mor₂OfExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:368368847e84ff6c98c7ef42a06ba0ea43aa696002a4be4dd1046388899bcbf0",
  "kind": "def",
  "lexical_name": "Mor₂OfExpr",
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
  "slug": "mor-ofexpr--58a5ca8d77e44dc47492e256",
  "source": {
    "blob": "63915ec6e79d03391ac2738557d7e0e86795514a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 484,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58a5ca8d77e44dc47492e25698b766e19dcc653f76ced594a17a58eec65485fa",
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

Occurrence: `declaration:368368847e84ff6c98c7ef42a06ba0ea43aa696002a4be4dd1046388899bcbf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Mor₂OfExpr (e : Expr) : MonoidalM Mor₂ := do
  match ← whnfR e with
  -- whnfR version of `Iso.hom η`
  | .proj ``Iso 0 η => homM (← Mor₂IsoOfExpr η)
  -- whnfR version of `Iso.inv η`
  | .proj ``Iso 1 η => invM (← Mor₂IsoOfExpr η)
  | .app .. => match (← whnfR e).getAppFnArgs with
    | (``CategoryStruct.id, #[_, _, f]) => id₂M (← MkMor₁.ofExpr f)
    | (``CategoryStruct.comp, #[_, _, _, _, _, η, θ]) =>
      comp₂M (← Mor₂OfExpr η) (← Mor₂OfExpr θ)
    | (``MonoidalCategoryStruct.whiskerLeft, #[_, _, _, f, _, _, η]) =>
      whiskerLeftM (← MkMor₁.ofExpr f) (← Mor₂OfExpr η)
    | (``MonoidalCategoryStruct.whiskerRight, #[_, _, _, _, _, η, h]) =>
      whiskerRightM (← Mor₂OfExpr η) (← MkMor₁.ofExpr h)
    | (``MonoidalCategoryStruct.tensorHom, #[_, _, _, _, _, _, _, η, θ]) =>
      horizontalCompM (← Mor₂OfExpr η) (← Mor₂OfExpr θ)
    | (``monoidalComp, #[_, _, _, g, h, _, inst, η, θ]) =>
      let α ← coherenceHomM (← MkMor₁.ofExpr g) (← MkMor₁.ofExpr h) inst
      coherenceCompM α (← Mor₂OfExpr η) (← Mor₂OfExpr θ)
    | _ => return .of ⟨e, ← MkMor₁.ofExpr (← srcExpr e), ← MkMor₁.ofExpr (← tgtExpr e)⟩
  | _ =>
    return .of ⟨e, ← MkMor₁.ofExpr (← srcExpr e), ← MkMor₁.ofExpr (← tgtExpr e)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63915ec6e79d03391ac2738557d7e0e86795514a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
