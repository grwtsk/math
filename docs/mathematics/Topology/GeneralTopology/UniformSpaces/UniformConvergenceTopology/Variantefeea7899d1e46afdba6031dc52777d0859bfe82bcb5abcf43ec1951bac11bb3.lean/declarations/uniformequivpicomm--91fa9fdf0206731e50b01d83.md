# uniformEquivPiComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62b3c0fee20528789e9d8e891695793bd275d0d2034a1f09cbddde61fd1b03e6",
  "kind": "def",
  "lexical_name": "uniformEquivPiComm",
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
  "slug": "uniformequivpicomm--91fa9fdf0206731e50b01d83",
  "source": {
    "blob": "46eef5b66be1bf1fa5147fb430663c2432efab16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 483,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91fa9fdf0206731e50b01d835770a984ebb0b13972f07ac6be9c9f3267ab5bf4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62b3c0fee20528789e9d8e891695793bd275d0d2034a1f09cbddde61fd1b03e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def uniformEquivPiComm : UniformEquiv (α →ᵤ ∀ i, δ i) (∀ i, α →ᵤ δ i) :=
  -- Denote `φ` this bijection. We want to show that
    -- `comap φ (Π i, 𝒰(α, δ i, uδ i)) = 𝒰(α, (Π i, δ i), (Π i, uδ i))`.
    -- But `Π i, uδ i` is defined as `⨅ i, comap (eval i) (uδ i)`, so we just have to apply
    -- `UniformFun.iInf_eq` and `UniformFun.comap_eq`, which leaves us to check
    -- that some square commutes.
    @Equiv.toUniformEquivOfIsUniformInducing
    _ _ 𝒰(α, ∀ i, δ i, Pi.uniformSpace δ)
    (@Pi.uniformSpace ι (fun i => α → δ i) fun i => 𝒰(α, δ i, _)) (Equiv.piComm _) <| by
      refine @IsUniformInducing.mk ?_ ?_ ?_ ?_ ?_ ?_
      change comap (Prod.map Function.swap Function.swap) _ = _
      rw [← uniformity_comap]
      congr
      unfold Pi.uniformSpace
      rw [UniformSpace.ofCoreEq_toCore, UniformSpace.ofCoreEq_toCore,
        UniformSpace.comap_iInf, UniformFun.iInf_eq]
      refine iInf_congr fun i => ?_
      rw [← UniformSpace.comap_comap, UniformFun.comap_eq]
      rfl

-- Like in the previous lemma, the diagram actually commutes by definition

/-- The set of continuous functions is closed in the uniform convergence topology.
This is a simple wrapper over `TendstoUniformly.continuous`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46eef5b66be1bf1fa5147fb430663c2432efab16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
