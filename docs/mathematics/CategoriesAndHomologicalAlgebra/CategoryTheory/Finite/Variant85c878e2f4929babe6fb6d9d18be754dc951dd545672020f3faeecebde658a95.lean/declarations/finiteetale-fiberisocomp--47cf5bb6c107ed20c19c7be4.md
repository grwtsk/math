# FiniteEtale.fiberIsoComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eab30ad48245e42255687f78d24886116f087572c31ef1593ec4401bf1a14c66",
  "kind": "def",
  "lexical_name": "FiniteEtale.fiberIsoComp",
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
  "slug": "finiteetale-fiberisocomp--47cf5bb6c107ed20c19c7be4",
  "source": {
    "blob": "ee6aec3ceeeb28793cd28b5002901dbf7c4757ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant85c878e2f4929babe6fb6d9d18be754dc951dd545672020f3faeecebde658a95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47cf5bb6c107ed20c19c7be48ee7d3fed2154b4a7b005b0a8fe043724fe56aa0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant85c878e2f4929babe6fb6d9d18be754dc951dd545672020f3faeecebde658a95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eab30ad48245e42255687f78d24886116f087572c31ef1593ec4401bf1a14c66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def FiniteEtale.fiberIsoComp [IsSepClosed Ω] :
    FiniteEtale.fiber.{v} R Ω ≅
      (FiniteEtale.baseChange.{v} R Ω).op ⋙ FiniteEtale.finiteSpec.{max w v} Ω :=
  fiberIsoBaseChangeFiber _ _ Ω ≪≫ Functor.isoWhiskerLeft _ (fiberIsoFiniteSpec _)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If `Ω` is a separably closed field, the category of finite étale `Ω`-algebras is
anti-equivalent to `FintypeCat`. -/
@[expose, simps! functor inverse_obj inverse_map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant85c878e2f4929babe6fb6d9d18be754dc951dd545672020f3faeecebde658a95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant85c878e2f4929babe6fb6d9d18be754dc951dd545672020f3faeecebde658a95.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee6aec3ceeeb28793cd28b5002901dbf7c4757ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
