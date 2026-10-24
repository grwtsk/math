# dualSubmoduleToDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4919d87c1543039b5678cbc614ee15ca6c6feaad1bcbe34dcd085bdbd48280cc",
  "kind": "def",
  "lexical_name": "dualSubmoduleToDual",
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
  "slug": "dualsubmoduletodual--73a9364fbee7b95b61310d13",
  "source": {
    "blob": "e2bd67dbb9371238a61150d066f8c2afea9204e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73a9364fbee7b95b61310d134cfebfea3bf905bf2910d394a1bd9f859503f635",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4919d87c1543039b5678cbc614ee15ca6c6feaad1bcbe34dcd085bdbd48280cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dualSubmoduleToDual [NoZeroSMulDivisors R S] (N : Submodule R M) :
    B.dualSubmodule N →ₗ[R] Module.Dual R N :=
  { toFun := fun x ↦
    { toFun := B.dualSubmoduleParing x
      map_add' := fun x y ↦ FaithfulSMul.algebraMap_injective R S (by simp)
      map_smul' := fun r m ↦ FaithfulSMul.algebraMap_injective R S
        (by simp [← Algebra.smul_def]) }
    map_add' := fun x y ↦ LinearMap.ext fun z ↦ FaithfulSMul.algebraMap_injective R S
      (by simp)
    map_smul' := fun r x ↦ LinearMap.ext fun y ↦ FaithfulSMul.algebraMap_injective R S
      (by simp [← Algebra.smul_def]) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DualLattice/Variant45c5554af9333824b27e245ad7ec92dead6a32b0c2c6a7dc18d1b7ed53b5e109.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2bd67dbb9371238a61150d066f8c2afea9204e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
