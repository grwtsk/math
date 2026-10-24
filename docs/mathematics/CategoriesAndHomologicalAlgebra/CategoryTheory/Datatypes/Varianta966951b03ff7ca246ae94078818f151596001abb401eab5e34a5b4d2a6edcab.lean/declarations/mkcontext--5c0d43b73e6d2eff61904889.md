# mkContext?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25f311f96215979e086bab79c5317a2615f39a01e4607be53056e9bbe7292e81",
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
  "slug": "mkcontext--5c0d43b73e6d2eff61904889",
  "source": {
    "blob": "27a4c5fa5e9f3e15f308524f213089bdda458131",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Varianta966951b03ff7ca246ae94078818f151596001abb401eab5e34a5b4d2a6edcab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c0d43b73e6d2eff61904889dbea5394a459bdc5fefc3e89f4f4d5ad982c8b2d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Varianta966951b03ff7ca246ae94078818f151596001abb401eab5e34a5b4d2a6edcab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25f311f96215979e086bab79c5317a2615f39a01e4607be53056e9bbe7292e81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkContext? (e : Expr) : MetaM (Option Context) := do
  let e ← instantiateMVars e
  let type ← instantiateMVars <| ← inferType e
  match (← whnfR (← inferType e)).getAppFnArgs with
  | (``Quiver.Hom, #[_, _, f, _]) =>
    let fType ← instantiateMVars <| ← inferType f
    match (← whnfR fType).getAppFnArgs with
    | (``Quiver.Hom, #[_, _, a, _]) =>
      let B ← inferType a
      let .succ level₀ ← getLevel B | return none
      let .succ level₁ ← getLevel fType | return none
      let .succ level₂ ← getLevel type | return none
      let .some instBicategory ← synthInstance?
        (mkAppN (.const ``Bicategory [level₂, level₁, level₀]) #[B]) | return none
      return some ⟨level₂, level₁, level₀, B, instBicategory⟩
    | _ => return none
  | _ => return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Varianta966951b03ff7ca246ae94078818f151596001abb401eab5e34a5b4d2a6edcab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Varianta966951b03ff7ca246ae94078818f151596001abb401eab5e34a5b4d2a6edcab.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a4c5fa5e9f3e15f308524f213089bdda458131` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
