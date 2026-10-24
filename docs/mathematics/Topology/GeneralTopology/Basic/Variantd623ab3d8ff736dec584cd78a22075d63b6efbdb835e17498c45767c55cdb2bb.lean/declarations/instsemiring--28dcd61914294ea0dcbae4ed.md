# instSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:395b58bfbc82352b18c34e423d7a0b4cfe78fd31cc26e97651966d888dde86ba",
  "kind": "instance",
  "lexical_name": "instSemiring",
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
  "slug": "instsemiring--28dcd61914294ea0dcbae4ed",
  "source": {
    "blob": "a9ba561e87a763e0ce61bc05a2038d2787c881ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 700,
    "line": 677,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd623ab3d8ff736dec584cd78a22075d63b6efbdb835e17498c45767c55cdb2bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28dcd61914294ea0dcbae4edb6480c09b3c9f41bf50c3d06f0660660faad7352",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd623ab3d8ff736dec584cd78a22075d63b6efbdb835e17498c45767c55cdb2bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:395b58bfbc82352b18c34e423d7a0b4cfe78fd31cc26e97651966d888dde86ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–700.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSemiring {R : Type*} [TopologicalSpace α] [PseudoMetricSpace R]
    [Semiring R] [BoundedMul R] [ContinuousMul R] [BoundedAdd R] [ContinuousAdd R] :
    Semiring (α →ᵇ R) :=
  Injective.semiring _ DFunLike.coe_injective'
    rfl rfl (fun _ _ ↦ rfl) (fun _ _ ↦ rfl) (fun _ _ ↦ rfl) (fun _ _ ↦ rfl) (fun _ ↦ rfl)

section IsBoundedSMul

/-!
### `IsBoundedSMul` (in particular, topological module) structure

In this section, if `β` is a metric space and a `𝕜`-module whose addition and scalar multiplication
are compatible with the metric structure, then we show that the space of bounded continuous
functions from `α` to `β` inherits a so-called `IsBoundedSMul` structure (in particular, a
`ContinuousMul` structure, which is the mathlib formulation of being a topological module), by
using pointwise operations and checking that they are compatible with the uniform distance. -/


variable {𝕜 : Type*} [PseudoMetricSpace 𝕜] [TopologicalSpace α] [PseudoMetricSpace β]

section SMul

variable [Zero 𝕜] [Zero β] [SMul 𝕜 β] [IsBoundedSMul 𝕜 β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd623ab3d8ff736dec584cd78a22075d63b6efbdb835e17498c45767c55cdb2bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd623ab3d8ff736dec584cd78a22075d63b6efbdb835e17498c45767c55cdb2bb.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9ba561e87a763e0ce61bc05a2038d2787c881ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
