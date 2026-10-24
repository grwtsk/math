# compHom.toLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4980731ccc2a23f17a59e14b31e95bbab208898a1e62b533b82835ec5693340e",
  "kind": "def",
  "lexical_name": "compHom.toLinearMap",
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
  "slug": "comphom-tolinearmap--de75f4a47fb8a4f929a14415",
  "source": {
    "blob": "1c59a349bbc02ad8f1ff35896f05f7cf16847b4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 607,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantd2eb91a3477145f61e36140b049caa8867a9323d75a351d81f031d4b36d52891.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de75f4a47fb8a4f929a14415f69ca888e364da53cb5012784f508e48b13115bf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantd2eb91a3477145f61e36140b049caa8867a9323d75a351d81f031d4b36d52891.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4980731ccc2a23f17a59e14b31e95bbab208898a1e62b533b82835ec5693340e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compHom.toLinearMap {R S : Type*} [Semiring R] [Semiring S] (g : R →+* S) :
    letI := compHom S g; R →ₗ[R] S :=
  letI := compHom S g
  { toFun := (g : R → S)
    map_add' := g.map_add
    map_smul' := g.map_mul }

end Module

namespace DistribMulActionHom

variable [AddCommMonoid M] [AddCommMonoid M₂] [AddCommMonoid M₃]
variable [Semiring R] [Module R M] [Semiring S] [Module S M₂] [Module R M₃]
variable {σ : R →+* S}

/-- A `DistribMulActionHom` between two modules is a linear map. -/
@[deprecated "No deprecation message was provided." (since := "2024-11-08")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantd2eb91a3477145f61e36140b049caa8867a9323d75a351d81f031d4b36d52891.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantd2eb91a3477145f61e36140b049caa8867a9323d75a351d81f031d4b36d52891.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c59a349bbc02ad8f1ff35896f05f7cf16847b4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
