# precompUniformConvergenceCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1fcdc5ec77b454f2d153e7e804636fbc928314cc94f165fe9f2eed312b6f9a2",
  "kind": "def",
  "lexical_name": "precompUniformConvergenceCLM",
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
  "slug": "precompuniformconvergenceclm--c0c03a72835f7aa03ba8e4fc",
  "source": {
    "blob": "2bdb4be3b2fc294f37fd7469539d21757801eec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 504,
    "path": "GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0c03a72835f7aa03ba8e4fcdb180bef66b23ac7685c306e8be75f212414d583",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1fcdc5ec77b454f2d153e7e804636fbc928314cc94f165fe9f2eed312b6f9a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def precompUniformConvergenceCLM [IsTopologicalAddGroup G] [ContinuousConstSMul 𝕜₃ G]
    (L : E →SL[σ] F) (hL : MapsTo (L '' ·) 𝔖 𝔗) :
    (F →SLᵤ[τ, 𝔗] G) →L[𝕜₃] (E →SLᵤ[ρ, 𝔖] G) where
  toFun f := f.comp L
  map_add' f g := add_comp f g L
  map_smul' a f := smul_comp a f L
  cont := by
    let : UniformSpace G := IsTopologicalAddGroup.rightUniformSpace G
    have : IsUniformAddGroup G := isUniformAddGroup_of_addCommGroup
    rw [(UniformConvergenceCLM.isEmbedding_coeFn _ _ _).continuous_iff]
    exact (UniformOnFun.precomp_uniformContinuous hL).continuous.comp
        (UniformConvergenceCLM.isEmbedding_coeFn _ _ _).continuous

set_option backward.isDefEq.respectTransparency false in
/-- Post-composition by a *fixed* continuous linear map as a continuous linear map for the uniform
convergence topology. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bdb4be3b2fc294f37fd7469539d21757801eec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
