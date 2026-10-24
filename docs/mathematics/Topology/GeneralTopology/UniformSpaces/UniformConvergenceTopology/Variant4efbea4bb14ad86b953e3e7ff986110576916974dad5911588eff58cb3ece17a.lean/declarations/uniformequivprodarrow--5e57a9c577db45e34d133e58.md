# uniformEquivProdArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77bbb0fe3a9b21566e14c40dbf5e5441363fd4b3eacb7ec11ab6e5f7167499b5",
  "kind": "def",
  "lexical_name": "uniformEquivProdArrow",
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
  "slug": "uniformequivprodarrow--5e57a9c577db45e34d133e58",
  "source": {
    "blob": "e8dc1a1f0e8c15131ff125434bf6a82008620bc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 466,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e57a9c577db45e34d133e58f249836af575ad6ecb50fd79d1070867cfa67b51",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77bbb0fe3a9b21566e14c40dbf5e5441363fd4b3eacb7ec11ab6e5f7167499b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def uniformEquivProdArrow [UniformSpace γ] : (α →ᵤ β × γ) ≃ᵤ (α →ᵤ β) × (α →ᵤ γ) :=
  -- Denote `φ` this bijection. We want to show that
  -- `comap φ (𝒰(α, β, uβ) × 𝒰(α, γ, uγ)) = 𝒰(α, β × γ, uβ × uγ)`.
  -- But `uβ × uγ` is defined as `comap fst uβ ⊓ comap snd uγ`, so we just have to apply
  -- `UniformFun.inf_eq` and `UniformFun.comap_eq`, which leaves us to check
  -- that some square commutes.
  Equiv.toUniformEquivOfIsUniformInducing (Equiv.arrowProdEquivProdArrow _ _ _) <| by
    constructor
    change
      comap (Prod.map (Equiv.arrowProdEquivProdArrow _ _ _) (Equiv.arrowProdEquivProdArrow _ _ _))
          _ = _
    simp_rw [UniformFun]
    rw [← uniformity_comap]
    congr
    unfold instUniformSpaceProd
    rw [UniformSpace.comap_inf, ← UniformSpace.comap_comap, ← UniformSpace.comap_comap]
    have := (@UniformFun.inf_eq α (β × γ)
      (UniformSpace.comap Prod.fst ‹_›) (UniformSpace.comap Prod.snd ‹_›)).symm
    rwa [UniformFun.comap_eq, UniformFun.comap_eq] at this

-- the relevant diagram commutes by definition
variable (α) (δ : ι → Type*) [∀ i, UniformSpace (δ i)]

/-- The natural bijection between `α → Π i, δ i` and `Π i, α → δ i`, upgraded to a uniform
isomorphism between `α →ᵤ (Π i, δ i)` and `Π i, α →ᵤ δ i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8dc1a1f0e8c15131ff125434bf6a82008620bc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
