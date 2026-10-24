# phi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b2cd2cef31812ea946f47521fe93fff1539ea7f0293895efc4c02f93f3614dc",
  "kind": "def",
  "lexical_name": "phi",
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
  "slug": "phi--c5f6de1fd29377daa766b2ac",
  "source": {
    "blob": "46eef5b66be1bf1fa5147fb430663c2432efab16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 233,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5f6de1fd29377daa766b2ac81e6f9d356dfee267753c415bad2d7ae8ee0a642",
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

Occurrence: `declaration:4b2cd2cef31812ea946f47521fe93fff1539ea7f0293895efc4c02f93f3614dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def phi (α β : Type*) (uvx : ((α →ᵤ β) × (α →ᵤ β)) × α) : β × β :=
  (uvx.fst.fst uvx.2, uvx.1.2 uvx.2)

set_option quotPrecheck false -- Porting note: error message suggested to do this
/- This is a lower adjoint to `UniformFun.filter` (see `UniformFun.gc`).
The exact definition of the lower adjoint `l` is not interesting; we will only use that it exists
(in `UniformFun.mono` and `UniformFun.iInf_eq`) and that
`l (Filter.map (Prod.map f f) 𝓕) = Filter.map (Prod.map ((∘) f) ((∘) f)) (l 𝓕)` for each
`𝓕 : Filter (γ × γ)` and `f : γ → α` (in `UniformFun.comap_eq`). -/
local notation "lowerAdjoint" => fun 𝓐 => map (UniformFun.phi α β) (𝓐 ×ˢ ⊤)

/-- The function `UniformFun.filter α β : Filter (β × β) → Filter ((α →ᵤ β) × (α →ᵤ β))`
has a lower adjoint `l` (in the sense of `GaloisConnection`). The exact definition of `l` is not
interesting; we will only use that it exists (in `UniformFun.mono` and
`UniformFun.iInf_eq`) and that
`l (Filter.map (Prod.map f f) 𝓕) = Filter.map (Prod.map ((∘) f) ((∘) f)) (l 𝓕)` for each
`𝓕 : Filter (γ × γ)` and `f : γ → α` (in `UniformFun.comap_eq`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46eef5b66be1bf1fa5147fb430663c2432efab16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
