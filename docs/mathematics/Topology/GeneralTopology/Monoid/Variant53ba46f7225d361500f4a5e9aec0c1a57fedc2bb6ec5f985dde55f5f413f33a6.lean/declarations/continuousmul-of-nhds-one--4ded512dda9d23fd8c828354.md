# ContinuousMul.of_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f9ea3cf-ec55-975c-49e3-4fa2a8b1891d",
  "kind": "theorem",
  "lexical_name": "ContinuousMul.of_nhds_one",
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
  "slug": "continuousmul-of-nhds-one--4ded512dda9d23fd8c828354",
  "source": {
    "blob": "1ba89818532648a48f4c2d8a5727a4fd00757111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 210,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variant53ba46f7225d361500f4a5e9aec0c1a57fedc2bb6ec5f985dde55f5f413f33a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ded512dda9d23fd8c828354a96aa59cff729cd67a3cecf7ee3e6c8802d078fa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variant53ba46f7225d361500f4a5e9aec0c1a57fedc2bb6ec5f985dde55f5f413f33a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f9ea3cf-ec55-975c-49e3-4fa2a8b1891d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousMul.of_nhds_one {M : Type u} [Monoid M] [TopologicalSpace M]
    (hmul : Tendsto (uncurry ((· * ·) : M → M → M)) (𝓝 1 ×ˢ 𝓝 1) <| 𝓝 1)
    (hleft : ∀ x₀ : M, 𝓝 x₀ = map (fun x => x₀ * x) (𝓝 1))
    (hright : ∀ x₀ : M, 𝓝 x₀ = map (fun x => x * x₀) (𝓝 1)) : ContinuousMul M :=
  ⟨by
    rw [continuous_iff_continuousAt]
    rintro ⟨x₀, y₀⟩
    have key : (fun p : M × M => x₀ * p.1 * (p.2 * y₀)) =
        ((fun x => x₀ * x) ∘ fun x => x * y₀) ∘ uncurry (· * ·) := by
      ext p
      simp [uncurry, mul_assoc]
    have key₂ : ((fun x => x₀ * x) ∘ fun x => y₀ * x) = fun x => x₀ * y₀ * x := by
      ext x
      simp [mul_assoc]
    calc
      map (uncurry (· * ·)) (𝓝 (x₀, y₀)) = map (uncurry (· * ·)) (𝓝 x₀ ×ˢ 𝓝 y₀) := by
        rw [nhds_prod_eq]
      _ = map (fun p : M × M => x₀ * p.1 * (p.2 * y₀)) (𝓝 1 ×ˢ 𝓝 1) := by
        -- Porting note: `rw` was able to prove this
        -- Now it fails with `failed to rewrite using equation theorems for 'Function.uncurry'`
        -- and `failed to rewrite using equation theorems for 'Function.comp'`.
        -- Removing those two lemmas, the `rw` would succeed, but then needs a `rfl`.
        simp +unfoldPartialApp only [uncurry]
        simp_rw [hleft x₀, hright y₀, prod_map_map_eq, Filter.map_map, Function.comp_def]
      _ = map ((fun x => x₀ * x) ∘ fun x => x * y₀) (map (uncurry (· * ·)) (𝓝 1 ×ˢ 𝓝 1)) := by
        rw [key, ← Filter.map_map]
      _ ≤ map ((fun x : M => x₀ * x) ∘ fun x => x * y₀) (𝓝 1) := map_mono hmul
      _ = 𝓝 (x₀ * y₀) := by
        rw [← Filter.map_map, ← hright, hleft y₀, Filter.map_map, key₂, ← hleft]⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variant53ba46f7225d361500f4a5e9aec0c1a57fedc2bb6ec5f985dde55f5f413f33a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variant53ba46f7225d361500f4a5e9aec0c1a57fedc2bb6ec5f985dde55f5f413f33a6.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba89818532648a48f4c2d8a5727a4fd00757111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
