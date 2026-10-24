# instDistribMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c681f6f5462329bc6950c38a1618d40828ee8f64f1f94f2e934950824c239318",
  "kind": "instance",
  "lexical_name": "instDistribMulAction",
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
  "slug": "instdistribmulaction--815911ad0c97dc3c13045f27",
  "source": {
    "blob": "694b67575ca73381e86004737d448404da573ca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 386,
    "path": "GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:815911ad0c97dc3c13045f271aeac74717c73056c3f666164a74e51db88a757b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c681f6f5462329bc6950c38a1618d40828ee8f64f1f94f2e934950824c239318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instDistribMulAction [ContinuousAdd M] : DistribMulAction R (VectorMeasure α M) :=
  Function.Injective.distribMulAction coeFnAddMonoidHom coe_injective coe_smul
#align measure_theory.vector_measure.distrib_mul_action MeasureTheory.VectorMeasure.instDistribMulAction

end DistribMulAction

section Module

variable {M : Type*} [AddCommMonoid M] [TopologicalSpace M]

variable {R : Type*} [Semiring R] [Module R M] [ContinuousConstSMul R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694b67575ca73381e86004737d448404da573ca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
