# ContinuousMul.of_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a7bc2fe207ba59938a4da8faf37275a73b27ee0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:708838d9-edc9-983d-cb8a-2e1f56347a45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c19d36f-fc99-f218-5be0-9950d53e1f0e",
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
  "slug": "continuousmul-of-nhds-one--25416294b2aa718fa88a0781",
  "source": {
    "blob": "6a7bc2fe207ba59938a4da8faf37275a73b27ee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 264,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variantb872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25416294b2aa718fa88a07818a358a66370131a8fd628b25984709dc19411f35",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variantb872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c19d36f-fc99-f218-5be0-9950d53e1f0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–295.

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
      map (uncurry (· * ·)) (𝓝 (x₀, y₀)) = map (uncurry (· * ·)) (𝓝 x₀ ×ˢ 𝓝 y₀) :=
        by rw [nhds_prod_eq]
      _ = map (fun p : M × M => x₀ * p.1 * (p.2 * y₀)) (𝓝 1 ×ˢ 𝓝 1) :=
        -- Porting note: `rw` was able to prove this
        -- Now it fails with `failed to rewrite using equation theorems for 'Function.uncurry'`
        -- and `failed to rewrite using equation theorems for 'Function.comp'`.
        -- Removing those two lemmas, the `rw` would succeed, but then needs a `rfl`.
        by simp_rw [uncurry, hleft x₀, hright y₀, prod_map_map_eq, Filter.map_map, Function.comp]
      _ = map ((fun x => x₀ * x) ∘ fun x => x * y₀) (map (uncurry (· * ·)) (𝓝 1 ×ˢ 𝓝 1)) :=
        by rw [key, ← Filter.map_map]
      _ ≤ map ((fun x : M => x₀ * x) ∘ fun x => x * y₀) (𝓝 1) := map_mono hmul
      _ = 𝓝 (x₀ * y₀) := by
        rw [← Filter.map_map, ← hright, hleft y₀, Filter.map_map, key₂, ← hleft]⟩
#align has_continuous_mul.of_nhds_one ContinuousMul.of_nhds_one
#align has_continuous_add.of_nhds_zero ContinuousAdd.of_nhds_zero

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variantb872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variantb872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a7bc2fe207ba59938a4da8faf37275a73b27ee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
