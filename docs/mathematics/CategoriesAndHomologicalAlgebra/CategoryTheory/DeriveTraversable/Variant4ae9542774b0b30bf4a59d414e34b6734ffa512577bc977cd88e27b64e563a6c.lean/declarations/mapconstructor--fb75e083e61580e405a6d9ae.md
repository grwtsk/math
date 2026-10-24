# mapConstructor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15fcebaac41f1a99028f6ef134cf1df50432a40ca512944d6f738f26df0713a1",
  "kind": "def",
  "lexical_name": "mapConstructor",
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
  "slug": "mapconstructor--fb75e083e61580e405a6d9ae",
  "source": {
    "blob": "88f5712fd86939cf1ccac87905525dc2a52b22d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb75e083e61580e405a6d9aeb2322abf1a7b0dee7e27ea6688474e20d5035c80",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15fcebaac41f1a99028f6ef134cf1df50432a40ca512944d6f738f26df0713a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def mapConstructor (c n : Name) (f α β : Expr) (args₀ : List Expr)
    (args₁ : List (Bool × Expr)) (m : MVarId) : TermElabM Unit := do
  let ad ← getAuxDefOfDeclName
  let g ← m.getType >>= instantiateMVars
  let args' ← args₁.mapM (fun (y : Bool × Expr) =>
      if y.1 then return mkAppN (.fvar ad) #[α, β, f, y.2]
      else mapField n g.appFn! f α β y.2)
  mkAppOptM c ((args₀ ++ args').map some).toArray >>= m.assign

/-- Makes a `match` expression corresponding to the application of `casesOn` like:
```lean
match (motive := motive) indices₁, indices₂, .., (val : type.{univs} params₁ params₂ ..) with
| _, _, .., ctor₁ fields₁₁ fields₁₂ .. => rhss ctor₁ [fields₁₁, fields₁₂, ..]
| _, _, .., ctor₂ fields₂₁ fields₂₂ .. => rhss ctor₂ [fields₂₁, fields₂₂, ..]
```
This is convenient to make a definition with equation lemmas. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88f5712fd86939cf1ccac87905525dc2a52b22d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
