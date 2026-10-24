# midpoint_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f25c5ae3d8b8e4933fb42f9c683fbf9d60ac320",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a62cf85-82ff-9ff7-0ea3-4727c25e076f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b053cd88-7e8c-3740-459e-ec690883ff0c",
  "kind": "theorem",
  "lexical_name": "midpoint_fixed",
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
  "slug": "midpoint-fixed--bdf4a82bd770abc701e155a5",
  "source": {
    "blob": "3f25c5ae3d8b8e4933fb42f9c683fbf9d60ac320",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 43,
    "path": "GRWTSK/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdf4a82bd770abc701e155a5c8d32c37bb781d667f203785e4f3f0f277d5255e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b053cd88-7e8c-3740-459e-ec690883ff0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem midpoint_fixed {x y : PE} :
    ∀ e : PE ≃ᵢ PE, e x = x → e y = y → e (midpoint ℝ x y) = midpoint ℝ x y := by
  set z := midpoint ℝ x y
  -- Consider the set of `e : E ≃ᵢ E` such that `e x = x` and `e y = y`
  set s := { e : PE ≃ᵢ PE | e x = x ∧ e y = y }
  haveI : Nonempty s := ⟨⟨IsometryEquiv.refl PE, rfl, rfl⟩⟩
  -- On the one hand, `e` cannot send the midpoint `z` of `[x, y]` too far
  have h_bdd : BddAbove (range fun e : s => dist ((e : PE ≃ᵢ PE) z) z) := by
    refine ⟨dist x z + dist x z, forall_mem_range.2 <| Subtype.forall.2 ?_⟩
    rintro e ⟨hx, _⟩
    calc
      dist (e z) z ≤ dist (e z) x + dist x z := dist_triangle (e z) x z
      _ = dist (e x) (e z) + dist x z := by rw [hx, dist_comm]
      _ = dist x z + dist x z := by rw [e.dist_eq x z]
  -- On the other hand, consider the map `f : (E ≃ᵢ E) → (E ≃ᵢ E)`
  -- sending each `e` to `R ∘ e⁻¹ ∘ R ∘ e`, where `R` is the point reflection in the
  -- midpoint `z` of `[x, y]`.
  set R : PE ≃ᵢ PE := (pointReflection ℝ z).toIsometryEquiv
  set f : PE ≃ᵢ PE → PE ≃ᵢ PE := fun e => ((e.trans R).trans e.symm).trans R
  -- Note that `f` doubles the value of `dist (e z) z`
  have hf_dist : ∀ e, dist (f e z) z = 2 * dist (e z) z := by
    intro e
    dsimp only [trans_apply, coe_toIsometryEquiv, f, R]
    rw [dist_pointReflection_fixed, ← e.dist_eq, e.apply_symm_apply,
      dist_pointReflection_self_real, dist_comm]
  -- Also note that `f` maps `s` to itself
  have hf_maps_to : MapsTo f s s := by
    rintro e ⟨hx, hy⟩
    constructor <;> simp [f, R, z, hx, hy, e.symm_apply_eq.2 hx.symm, e.symm_apply_eq.2 hy.symm]
  -- Therefore, `dist (e z) z = 0` for all `e ∈ s`.
  set c := ⨆ e : s, dist ((e : PE ≃ᵢ PE) z) z
  have : c ≤ c / 2 := by
    apply ciSup_le
    rintro ⟨e, he⟩
    simp only [Subtype.coe_mk, le_div_iff₀' (zero_lt_two' ℝ), ← hf_dist]
    exact le_ciSup h_bdd ⟨f e, hf_maps_to he⟩
  replace : c ≤ 0 := by linarith
  refine fun e hx hy => dist_le_zero.1 (le_trans ?_ this)
  exact le_ciSup h_bdd ⟨e, hx, hy⟩

/-- A bijective isometry sends midpoints to midpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f25c5ae3d8b8e4933fb42f9c683fbf9d60ac320` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
