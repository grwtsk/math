# gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63dfb34e0e3196fca0ba19343f986e7187594730f20fc155a1c96f244cf42f2e",
  "kind": "def",
  "lexical_name": "gen",
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
  "slug": "gen--25dd40b34dbb1d97fafac7a0",
  "source": {
    "blob": "fd1923fcd28e9f0b14d14f945e9eacf00dc850c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 565,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Varianta2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25dd40b34dbb1d97fafac7a05fe25a91e7af70598296510b3515b9b55a831f39",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Varianta2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63dfb34e0e3196fca0ba19343f986e7187594730f20fc155a1c96f244cf42f2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def gen (𝔖) (S : Set α) (V : Set (β × β)) : Set ((α →ᵤ[𝔖] β) × (α →ᵤ[𝔖] β)) :=
  { uv : (α →ᵤ[𝔖] β) × (α →ᵤ[𝔖] β) | ∀ x ∈ S, (uv.1 x, uv.2 x) ∈ V }
#align uniform_on_fun.gen UniformOnFun.gen

/-- For `S : Set α` and `V : Set (β × β)`, we have
`UniformOnFun.gen 𝔖 S V = (S.restrict × S.restrict) ⁻¹' (UniformFun.gen S β V)`.
This is the crucial fact for proving that the family `UniformOnFun.gen S V` for `S ∈ 𝔖` and
`V ∈ 𝓤 β` is indeed a basis for the uniformity `α →ᵤ[𝔖] β` endowed with `𝒱(α, β, 𝔖, uβ)`
the uniform structure of `𝔖`-convergence, as defined in `uniform_on_fun.uniform_space`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Varianta2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Varianta2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1923fcd28e9f0b14d14f945e9eacf00dc850c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
