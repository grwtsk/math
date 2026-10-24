# range_smulRight_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9fdbb0c-4181-872d-f51d-cbe5e3feb52e",
  "kind": "theorem",
  "lexical_name": "range_smulRight_apply",
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
  "slug": "range-smulright-apply--ecc44cf5bf084a2d105bcec5",
  "source": {
    "blob": "9671cf6ee1a1c43f08e0c8be0a79aea2afcfacdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 738,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf0efa2f829ad3ef339e00fb7d9c84efaece1211f45d5c4b9ea203ee014f11273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecc44cf5bf084a2d105bcec55bade1ee3d7ab334086759f54d58f93c2aaf68d0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf0efa2f829ad3ef339e00fb7d9c84efaece1211f45d5c4b9ea203ee014f11273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9fdbb0c-4181-872d-f51d-cbe5e3feb52e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 738–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_smulRight_apply {R : Type*} [DivisionSemiring R] [Module R M₁] [Module R M₂]
    [TopologicalSpace R] [ContinuousSMul R M₂] {f : M₁ →L[R] R} (hf : f ≠ 0) (x : M₂) :
    range (f.smulRight x : M₁ →ₗ[R] M₂) = Submodule.span R {x} :=
  LinearMap.range_smulRight_apply (by simpa [coe_inj, ← toLinearMap_zero] using hf) x

section ToSpanSingleton

variable (R₁)
variable [ContinuousSMul R₁ M₁]

set_option backward.defeqAttrib.useBackward true in
/-- Given an element `x` of a topological space `M` over a semiring `R`, the natural continuous
linear map from `R` to `M` by taking multiples of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf0efa2f829ad3ef339e00fb7d9c84efaece1211f45d5c4b9ea203ee014f11273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf0efa2f829ad3ef339e00fb7d9c84efaece1211f45d5c4b9ea203ee014f11273.lean#L738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9671cf6ee1a1c43f08e0c8be0a79aea2afcfacdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
