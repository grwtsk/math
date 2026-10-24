# uniformEquivPiComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c6c7ff0d31d296817fa1cc8e73cacca35834bc7fcd94bf5eb73cae5b920a23a",
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
  "slug": "uniformequivpicomm--a4246e71f12a514c71c6096f",
  "source": {
    "blob": "e8dc1a1f0e8c15131ff125434bf6a82008620bc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 491,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4246e71f12a514c71c6096f4036bc3c401b64d5cb8fee26f243038f819d6812",
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

Occurrence: `declaration:0c6c7ff0d31d296817fa1cc8e73cacca35834bc7fcd94bf5eb73cae5b920a23a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–514.

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

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8dc1a1f0e8c15131ff125434bf6a82008620bc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
