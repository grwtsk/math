# isOpenMap_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af4df68d-83aa-2f3b-a5e9-0aad789d4186",
  "kind": "theorem",
  "lexical_name": "isOpenMap_of_ne_zero",
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
  "slug": "isopenmap-of-ne-zero--0b8505179276ee3dbc411b6b",
  "source": {
    "blob": "9671cf6ee1a1c43f08e0c8be0a79aea2afcfacdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 952,
    "line": 930,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf0efa2f829ad3ef339e00fb7d9c84efaece1211f45d5c4b9ea203ee014f11273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b8505179276ee3dbc411b6b2f6a7be848923b597982cf51ddc765e7055fd1d4",
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

Occurrence: `result:af4df68d-83aa-2f3b-a5e9-0aad789d4186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 930–952.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isOpenMap_of_ne_zero [TopologicalSpace R] [DivisionRing R] [ContinuousSub R]
    [AddCommGroup M] [TopologicalSpace M] [ContinuousAdd M] [Module R M] [ContinuousSMul R M]
    (f : StrongDual R M) (hf : f ≠ 0) : IsOpenMap f :=
  let ⟨x, hx⟩ := exists_ne_zero hf
  IsOpenMap.of_sections fun y =>
    ⟨fun a => y + (a - f y) • (f x)⁻¹ • x, Continuous.continuousAt <| by fun_prop, by simp,
      fun a => by simp [hx]⟩

end DivisionRing

section SMulMonoid

-- The M's are used for semilinear maps, and the N's for plain linear maps
variable {R R₂ R₃ S S₃ : Type*} [Semiring R] [Semiring R₂] [Semiring R₃] [Monoid S] [Monoid S₃]
  {M : Type*} [TopologicalSpace M] [AddCommMonoid M] [Module R M] {M₂ : Type*}
  [TopologicalSpace M₂] [AddCommMonoid M₂] [Module R₂ M₂] {M₃ : Type*} [TopologicalSpace M₃]
  [AddCommMonoid M₃] [Module R₃ M₃] {N₂ : Type*} [TopologicalSpace N₂] [AddCommMonoid N₂]
  [Module R N₂] {N₃ : Type*} [TopologicalSpace N₃] [AddCommMonoid N₃] [Module R N₃]
  [DistribMulAction S₃ M₃] [SMulCommClass R₃ S₃ M₃] [ContinuousConstSMul S₃ M₃]
  [DistribMulAction S N₃] [SMulCommClass R S N₃] [ContinuousConstSMul S N₃] {σ₁₂ : R →+* R₂}
  {σ₂₃ : R₂ →+* R₃} {σ₁₃ : R →+* R₃} [RingHomCompTriple σ₁₂ σ₂₃ σ₁₃]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf0efa2f829ad3ef339e00fb7d9c84efaece1211f45d5c4b9ea203ee014f11273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf0efa2f829ad3ef339e00fb7d9c84efaece1211f45d5c4b9ea203ee014f11273.lean#L930).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9671cf6ee1a1c43f08e0c8be0a79aea2afcfacdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
