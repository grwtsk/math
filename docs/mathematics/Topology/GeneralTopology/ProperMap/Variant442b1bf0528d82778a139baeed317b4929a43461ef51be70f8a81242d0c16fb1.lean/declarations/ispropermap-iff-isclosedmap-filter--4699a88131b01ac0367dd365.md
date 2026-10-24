# isProperMap_iff_isClosedMap_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eae463ea-7a56-95db-c66d-9e46939f0032",
  "kind": "theorem",
  "lexical_name": "isProperMap_iff_isClosedMap_filter",
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
  "slug": "ispropermap-iff-isclosedmap-filter--4699a88131b01ac0367dd365",
  "source": {
    "blob": "28e43acb0c67a5ecf427f1a5ea49d13338f4b310",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 299,
    "path": "GRWTSK/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4699a88131b01ac0367dd36540c8275de36ebe8c864d65d2a164f3ad54f63991",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eae463ea-7a56-95db-c66d-9e46939f0032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isProperMap_iff_isClosedMap_filter {X : Type u} {Y : Type v} [TopologicalSpace X]
    [TopologicalSpace Y] {f : X → Y} :
    IsProperMap f ↔ Continuous f ∧ IsClosedMap
      (Prod.map f id : X × Filter X → Y × Filter X) := by
  constructor <;> intro H
  -- The direct implication is clear.
  · exact ⟨H.continuous, H.universally_closed _⟩
  · rw [isProperMap_iff_ultrafilter]
  -- Let `𝒰 : Ultrafilter X`, and assume that `f` tends to some `y` along `𝒰`.
    refine ⟨H.1, fun 𝒰 y hy ↦ ?_⟩
  -- In `X × Filter X`, consider the closed set `F := closure {(x, ℱ) | ℱ = pure x}`
    let F : Set (X × Filter X) := closure {xℱ | xℱ.2 = pure xℱ.1}
  -- Since `f × id` is closed, the set `(f × id) '' F` is also closed.
    have := H.2 F isClosed_closure
  -- Let us show that `(y, 𝒰) ∈ (f × id) '' F`.
    have : (y, ↑𝒰) ∈ Prod.map f id '' F :=
  -- Note that, by the properties of the topology on `Filter X`, the function `pure : X → Filter X`
  -- tends to the point `𝒰` of `Filter X` along the filter `𝒰` on `X`. Since `f` tends to `y` along
  -- `𝒰`, we get that the function `(f, pure) : X → (Y, Filter X)` tends to `(y, 𝒰)` along
  -- `𝒰`. Furthermore, each `(f, pure)(x) = (f × id)(x, pure x)` is clearly an element of
  -- the closed set `(f × id) '' F`, thus the limit `(y, 𝒰)` also belongs to that set.
      this.mem_of_tendsto (hy.prod_mk_nhds (Filter.tendsto_pure_self (𝒰 : Filter X)))
        (eventually_of_forall fun x ↦ ⟨⟨x, pure x⟩, subset_closure rfl, rfl⟩)
  -- The above shows that `(y, 𝒰) = (f x, 𝒰)`, for some `x : X` such that `(x, 𝒰) ∈ F`.
    rcases this with ⟨⟨x, _⟩, hx, ⟨_, _⟩⟩
  -- We already know that `f x = y`, so to finish the proof we just have to check that `𝒰` tends
  -- to `x`. So, for `U ∈ 𝓝 x` arbitrary, let's show that `U ∈ 𝒰`. Since `𝒰` is a ultrafilter,
  -- it is enough to show that `Uᶜ` is not in `𝒰`.
    refine ⟨x, rfl, fun U hU ↦ Ultrafilter.compl_not_mem_iff.mp fun hUc ↦ ?_⟩
    rw [mem_closure_iff_nhds] at hx
  -- Indeed, if that was the case, the set `V := {𝒢 : Filter X | Uᶜ ∈ 𝒢}` would be a neighborhood
  -- of `𝒰` in `Filter X`, hence `U ×ˢ V` would be a neighborhood of `(x, 𝒰) : X × Filter X`.
  -- But recall that `(x, 𝒰) ∈ F = closure {(x, ℱ) | ℱ = pure x}`, so the neighborhood `U ×ˢ V`
  -- must contain some element of the form `(z, pure z)`. In other words, we have `z ∈ U` and
  -- `Uᶜ ∈ pure z`, which means `z ∈ Uᶜ` by the definition of pure.
  -- This is a contradiction, which completes the proof.
    rcases hx (U ×ˢ {𝒢 | Uᶜ ∈ 𝒢}) (prod_mem_nhds hU (isOpen_setOf_mem.mem_nhds hUc)) with
      ⟨⟨z, 𝒢⟩, ⟨⟨hz : z ∈ U, hz' : Uᶜ ∈ 𝒢⟩, rfl : 𝒢 = pure z⟩⟩
    exact hz' hz

/-- A map `f : X → Y` is proper if and only if it is continuous and the map
`(Prod.map f id : X × Ultrafilter X → Y × Ultrafilter X)` is closed. This is stronger than
`isProperMap_iff_universally_closed` since it shows that there's only one space to check to get
properness, but in most cases it doesn't matter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProperMap/Variant442b1bf0528d82778a139baeed317b4929a43461ef51be70f8a81242d0c16fb1.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28e43acb0c67a5ecf427f1a5ea49d13338f4b310` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
