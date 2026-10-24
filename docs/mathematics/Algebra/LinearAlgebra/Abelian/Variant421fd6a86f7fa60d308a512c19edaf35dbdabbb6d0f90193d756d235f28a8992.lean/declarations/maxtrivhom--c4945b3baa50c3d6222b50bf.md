# maxTrivHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1621533e38a4dedb1465b9f54be2f8f7d594b3df744b610b52733a045375ff0",
  "kind": "def",
  "lexical_name": "maxTrivHom",
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
  "slug": "maxtrivhom--c4945b3baa50c3d6222b50bf",
  "source": {
    "blob": "330698f2c2c4caea9779ed8e88ed80caeec19f8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 177,
    "path": "GRWTSK/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4945b3baa50c3d6222b50bf74b788c1ea434eb660b24c210c72e31f3a8c352f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1621533e38a4dedb1465b9f54be2f8f7d594b3df744b610b52733a045375ff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def maxTrivHom (f : M →ₗ⁅R,L⁆ N) : maxTrivSubmodule R L M →ₗ⁅R,L⁆ maxTrivSubmodule R L N where
  toFun m := ⟨f m, fun x =>
    (LieModuleHom.map_lie _ _ _).symm.trans <|
      (congr_arg f (m.property x)).trans (LieModuleHom.map_zero _)⟩
  map_add' m n := by simp [Function.comp_apply]; rfl -- Porting note:
  map_smul' t m := by simp [Function.comp_apply]; rfl -- these two were `by simpa`
  map_lie' {x m} := by simp
#align lie_module.max_triv_hom LieModule.maxTrivHom

@[norm_cast, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `330698f2c2c4caea9779ed8e88ed80caeec19f8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
