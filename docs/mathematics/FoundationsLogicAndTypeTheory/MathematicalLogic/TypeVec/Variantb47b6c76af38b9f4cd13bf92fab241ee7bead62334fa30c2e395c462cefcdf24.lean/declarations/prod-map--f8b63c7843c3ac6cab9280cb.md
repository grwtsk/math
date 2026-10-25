# prod.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec62a3e32fc922a5e2cb4f6642a4022fcd04f67ecb8f5daafc98d91595ac887f",
  "kind": "def",
  "lexical_name": "prod.map",
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
  "slug": "prod-map--f8b63c7843c3ac6cab9280cb",
  "source": {
    "blob": "c926404fc44ea0c0ddf0e9d2a2a456bf85d8c1bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 461,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantb47b6c76af38b9f4cd13bf92fab241ee7bead62334fa30c2e395c462cefcdf24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8b63c7843c3ac6cab9280cb3e40407838f6234ead27f1e116e429d0d4c889c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantb47b6c76af38b9f4cd13bf92fab241ee7bead62334fa30c2e395c462cefcdf24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec62a3e32fc922a5e2cb4f6642a4022fcd04f67ecb8f5daafc98d91595ac887f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def prod.map : ∀ {n} {α α' β β' : TypeVec.{u} n}, α ⟹ β → α' ⟹ β' → α ⊗ α' ⟹ β ⊗ β'
  | succ _, α, α', β, β', x, y, Fin2.fs _, a =>
    @prod.map _ (drop α) (drop α') (drop β) (drop β') (dropFun x) (dropFun y) _ a
  | succ _, _, _, _, _, x, y, Fin2.fz, a => (x _ a.1, y _ a.2)



@[inherit_doc] scoped[MvFunctor] infixl:45 " ⊗' " => TypeVec.prod.map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantb47b6c76af38b9f4cd13bf92fab241ee7bead62334fa30c2e395c462cefcdf24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantb47b6c76af38b9f4cd13bf92fab241ee7bead62334fa30c2e395c462cefcdf24.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c926404fc44ea0c0ddf0e9d2a2a456bf85d8c1bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
