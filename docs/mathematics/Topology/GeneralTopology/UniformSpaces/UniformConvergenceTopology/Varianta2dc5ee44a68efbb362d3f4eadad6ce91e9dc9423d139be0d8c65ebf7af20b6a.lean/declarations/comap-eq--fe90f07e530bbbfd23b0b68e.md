# comap_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd1923fcd28e9f0b14d14f945e9eacf00dc850c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 383,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:481fff68-a91c-369c-3fe6-66cbd6a6c26b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51ed1a2e-7f79-c3d2-1be6-ad56f34adc96",
  "kind": "theorem",
  "lexical_name": "comap_eq",
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
  "slug": "comap-eq--fe90f07e530bbbfd23b0b68e",
  "source": {
    "blob": "fd1923fcd28e9f0b14d14f945e9eacf00dc850c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 383,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Varianta2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe90f07e530bbbfd23b0b68e4fe23e11b5acd4471864d00f5dec110cbcaeb341",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Varianta2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51ed1a2e-7f79-c3d2-1be6-ad56f34adc96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem comap_eq {f : γ → β} :
    𝒰(α, γ, ‹UniformSpace β›.comap f) = 𝒰(α, β, _).comap ((f ∘ ·)) := by
  letI : UniformSpace γ := ‹UniformSpace β›.comap f
  ext : 1
  change UniformFun.filter α γ ((𝓤 β).comap _) = (UniformFun.filter α β (𝓤 β)).comap _
  -- We have the following four Galois connection which form a square diagram, and we want
  -- to show that the square of upper adjoints is commutative. The trick then is to use
  -- `GaloisConnection.u_comm_of_l_comm` to reduce it to commutativity of the lower adjoints,
  -- which is way easier to prove.
  let fcomp := ((f ∘ ·) : ((α → γ) → (α → β)))
  have h₁ := Filter.gc_map_comap (Prod.map fcomp fcomp)
  have h₂ := Filter.gc_map_comap (Prod.map f f)
  have h₃ := UniformFun.gc α β
  have h₄ := UniformFun.gc α γ
  refine' GaloisConnection.u_comm_of_l_comm h₁ h₂ h₃ h₄ fun 𝓐 => _
  have : Prod.map f f ∘ (UniformFun.phi α γ)
      = (UniformFun.phi α β) ∘ Prod.map (Prod.map fcomp fcomp) (id : α → α) := by
    ext <;> rfl
  rw [map_comm this, ← prod_map_map_eq']
  rfl
#align uniform_fun.comap_eq UniformFun.comap_eq

/-- Post-composition by a uniformly continuous function is uniformly continuous on `α →ᵤ β`.

More precisely, if `f : γ → β` is uniformly continuous, then `(fun g ↦ f ∘ g) : (α →ᵤ γ) → (α →ᵤ β)`
is uniformly continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Varianta2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Varianta2dc5ee44a68efbb362d3f4eadad6ce91e9dc9423d139be0d8c65ebf7af20b6a.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1923fcd28e9f0b14d14f945e9eacf00dc850c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
