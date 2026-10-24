# ContMDiffVectorBundle.continuousLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fcb70173860aa3da38685403b375f38d1475f015e993a8143f57931609af9ea",
  "kind": "instance",
  "lexical_name": "ContMDiffVectorBundle.continuousLinearMap",
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
  "slug": "contmdiffvectorbundle-continuouslinearmap--2cb5d8e6dec963a972c50d5d",
  "source": {
    "blob": "83ed311c3a31d51b9ffdefc628e6cbdf3bb4b72d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 135,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Hom/Variant5eb993350fcdb7609d64e71c3b15ecbbde5c0825144d8dacd8beee1e60e7b64e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cb5d8e6dec963a972c50d5d94278bf5994affcaeee58aa5a7cbdcbbc3f19fd4",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Hom/Variant5eb993350fcdb7609d64e71c3b15ecbbde5c0825144d8dacd8beee1e60e7b64e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fcb70173860aa3da38685403b375f38d1475f015e993a8143f57931609af9ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ContMDiffVectorBundle.continuousLinearMap :
    ContMDiffVectorBundle n (F₁ →L[𝕜] F₂) ((fun (b : B) ↦ E₁ b →L[𝕜] E₂ b)) IB :=
  (Bundle.ContinuousLinearMap.vectorPrebundle (RingHom.id 𝕜) F₁ E₁ F₂ E₂).contMDiffVectorBundle IB

end

section symmL

variable {𝕜 B F₁ : Type*} [NontriviallyNormedField 𝕜] {n : WithTop ℕ∞}
  {EB : Type*} [NormedAddCommGroup EB] [NormedSpace 𝕜 EB] {HB : Type*} [TopologicalSpace HB]
  {IB : ModelWithCorners 𝕜 EB HB} [TopologicalSpace B] [ChartedSpace HB B]
  {E₁ : B → Type*} [∀ x, AddCommGroup (E₁ x)] [∀ x, Module 𝕜 (E₁ x)]
  [NormedAddCommGroup F₁] [NormedSpace 𝕜 F₁]
  [TopologicalSpace (TotalSpace F₁ E₁)] [∀ x, TopologicalSpace (E₁ x)]
  [∀ x, IsTopologicalAddGroup (E₁ x)] [∀ x, ContinuousSMul 𝕜 (E₁ x)]
  [FiberBundle F₁ E₁] [VectorBundle 𝕜 F₁ E₁]

/-- Let `e` be a trivialization of a `C^n` vector bundle `E₁` over `B`. Then `m ↦ e.symmL 𝕜 m`
defines a section of the bundle of continuous linear maps `F₁ →L[𝕜] E₁` over `B`, and this section
is `C^n` at any point in `e.baseSet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Hom/Variant5eb993350fcdb7609d64e71c3b15ecbbde5c0825144d8dacd8beee1e60e7b64e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Hom/Variant5eb993350fcdb7609d64e71c3b15ecbbde5c0825144d8dacd8beee1e60e7b64e.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ed311c3a31d51b9ffdefc628e6cbdf3bb4b72d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
