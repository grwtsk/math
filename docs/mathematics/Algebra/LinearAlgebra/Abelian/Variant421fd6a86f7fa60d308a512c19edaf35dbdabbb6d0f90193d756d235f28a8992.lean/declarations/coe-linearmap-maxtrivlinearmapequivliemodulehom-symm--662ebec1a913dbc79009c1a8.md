# coe_linearMap_maxTrivLinearMapEquivLieModuleHom_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e88469cf-a85c-0aa0-6443-5b32b01262e4",
  "kind": "theorem",
  "lexical_name": "coe_linearMap_maxTrivLinearMapEquivLieModuleHom_symm",
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
  "slug": "coe-linearmap-maxtrivlinearmapequivliemodulehom-symm--662ebec1a913dbc79009c1a8",
  "source": {
    "blob": "330698f2c2c4caea9779ed8e88ed80caeec19f8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 251,
    "path": "GRWTSK/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:662ebec1a913dbc79009c1a8c67c0b65b30c81bddc362fd8b1c9dcf11cc49de8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e88469cf-a85c-0aa0-6443-5b32b01262e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_linearMap_maxTrivLinearMapEquivLieModuleHom_symm (f : M →ₗ⁅R,L⁆ N) :
    (maxTrivLinearMapEquivLieModuleHom.symm f : M →ₗ[R] N) = (f : M →ₗ[R] N) :=
  rfl
#align lie_module.coe_linear_map_max_triv_linear_map_equiv_lie_module_hom_symm LieModule.coe_linearMap_maxTrivLinearMapEquivLieModuleHom_symm

end LieModule

namespace LieAlgebra

/-- The center of a Lie algebra is the set of elements that commute with everything. It can
be viewed as the maximal trivial submodule of the Lie algebra as a Lie module over itself via the
adjoint representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `330698f2c2c4caea9779ed8e88ed80caeec19f8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
