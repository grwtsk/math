# LinearMap.tendsto_birkhoffAverage_of_ker_subset_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17fe550cb6481ee7454776691ba11e8417d7966d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3596bc332c9f414746cb6082179c9d54d2d50975ec63338aa569e762307097a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34f6d963-c0ae-5692-bed7-3cfc9fe4749a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db6501a8-e5ca-5db2-52e7-e0ad0a8eb1cc",
  "kind": "theorem",
  "lexical_name": "LinearMap.tendsto_birkhoffAverage_of_ker_subset_closure",
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
  "slug": "linearmap-tendsto-birkhoffaverage-of-ker-subset-closure--a7e560e99d26dbf597e7bc48",
  "source": {
    "blob": "17fe550cb6481ee7454776691ba11e8417d7966d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/MeanErgodic/Variant3596bc332c9f414746cb6082179c9d54d2d50975ec63338aa569e762307097a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7e560e99d26dbf597e7bc48849ddf7913af889f5c838624992c8149c628b687",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MeanErgodic/Variant3596bc332c9f414746cb6082179c9d54d2d50975ec63338aa569e762307097a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db6501a8-e5ca-5db2-52e7-e0ad0a8eb1cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem LinearMap.tendsto_birkhoffAverage_of_ker_subset_closure [NormedSpace 𝕜 E]
    (f : E →ₗ[𝕜] E) (hf : LipschitzWith 1 f) (g : E →L[𝕜] LinearMap.eqLocus f 1)
    (hg_proj : ∀ x : LinearMap.eqLocus f 1, g x = x)
    (hg_ker : (LinearMap.ker g : Set E) ⊆ closure (LinearMap.range (f - 1))) (x : E) :
    Tendsto (birkhoffAverage 𝕜 f _root_.id · x) atTop (𝓝 (g x)) := by
  /- Any point can be represented as a sum of `y ∈ LinearMap.ker g` and a fixed point `z`. -/
  obtain ⟨y, hy, z, hz, rfl⟩ : ∃ y, g y = 0 ∧ ∃ z, IsFixedPt f z ∧ x = y + z :=
    ⟨x - g x, by simp [hg_proj], g x, (g x).2, by simp⟩
  /- For a fixed point, the theorem is trivial,
  so it suffices to prove it for `y ∈ LinearMap.ker g`. -/
  suffices Tendsto (birkhoffAverage 𝕜 f _root_.id · y) atTop (𝓝 0) by
    have hgz : g z = z := congr_arg Subtype.val (hg_proj ⟨z, hz⟩)
    simpa [hy, hgz, birkhoffAverage, birkhoffSum, Finset.sum_add_distrib, smul_add]
      using this.add (hz.tendsto_birkhoffAverage 𝕜 _root_.id)
  /- By continuity, it suffices to prove the theorem on a dense subset of `LinearMap.ker g`.
  By assumption, `LinearMap.range (f - 1)` is dense in the kernel of `g`,
  so it suffices to prove the theorem for `y = f x - x`. -/
  have : IsClosed {x | Tendsto (birkhoffAverage 𝕜 f _root_.id · x) atTop (𝓝 0)} :=
    isClosed_setOf_tendsto_birkhoffAverage 𝕜 hf uniformContinuous_id continuous_const
  refine closure_minimal (Set.forall_mem_range.2 fun x ↦ ?_) this (hg_ker hy)
  /- Finally, for `y = f x - x` the average is equal to the difference between averages
  along the orbits of `f x` and `x`, and most of the terms cancel. -/
  have : IsBounded (Set.range (_root_.id <| f^[·] x)) :=
    isBounded_iff_forall_norm_le.2 ⟨‖x‖, Set.forall_mem_range.2 fun n ↦ by
      have H : f^[n] 0 = 0 := iterate_map_zero (f : E →+ E) n
      simpa [H] using (hf.iterate n).dist_le_mul x 0⟩
  have H : ∀ n x y, f^[n] (x - y) = f^[n] x - f^[n] y := iterate_map_sub (f : E →+ E)
  simpa [birkhoffAverage, birkhoffSum, Finset.sum_sub_distrib, smul_sub, H]
    using tendsto_birkhoffAverage_apply_sub_birkhoffAverage 𝕜 this

variable [InnerProductSpace 𝕜 E] [CompleteSpace E]

local notation "⟪" x ", " y "⟫" => inner 𝕜 x y

/-- **Von Neumann Mean Ergodic Theorem** for an operator in a Hilbert space.
For a contracting continuous linear self-map `f : E →L[𝕜] E` of a Hilbert space, `‖f‖ ≤ 1`,
the Birkhoff averages
```
birkhoffAverage 𝕜 f id N x = (N : 𝕜)⁻¹ • ∑ n ∈ Finset.range N, f^[n] x
```
converge to the orthogonal projection of `x` to the subspace of fixed points of `f`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MeanErgodic/Variant3596bc332c9f414746cb6082179c9d54d2d50975ec63338aa569e762307097a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MeanErgodic/Variant3596bc332c9f414746cb6082179c9d54d2d50975ec63338aa569e762307097a0.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17fe550cb6481ee7454776691ba11e8417d7966d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
