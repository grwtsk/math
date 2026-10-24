# continuous_cfcHomSuperset_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44cd53bc76622f44aed7e388806ac3e32f701e37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8791950-3b2d-d8d8-51ab-9512089c5458",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ca8fd74-8ee1-8023-b4ee-a28d18b2d58b",
  "kind": "theorem",
  "lexical_name": "continuous_cfcHomSuperset_left",
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
  "slug": "continuous-cfchomsuperset-left--a9c2abf1ef89601e00d2db4f",
  "source": {
    "blob": "44cd53bc76622f44aed7e388806ac3e32f701e37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 200,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9c2abf1ef89601e00d2db4f861c96537b4ecd535c318540592d4c964ff08568",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ca8fd74-8ee1-8023-b4ee-a28d18b2d58b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_cfcHomSuperset_left
    [TopologicalSpace X] {s : Set 𝕜} (hs : IsCompact s) (f : C(s, 𝕜))
    (a : X → A) (ha_cont : Continuous a) (ha : ∀ x, spectrum 𝕜 (a x) ⊆ s)
    (ha' : ∀ x, p (a x) := by cfc_tac) :
    Continuous (fun x ↦ cfcHomSuperset (ha' x) (ha x) f) := by
  open scoped ContinuousFunctionalCalculus in
  have : CompactSpace s := by rwa [isCompact_iff_compactSpace] at hs
  induction f using ContinuousMap.induction_on_of_compact with
  | const r =>
    have : ContinuousMap.const s r = algebraMap 𝕜 C(s, 𝕜) r := rfl
    simpa only [this, AlgHomClass.commutes] using! continuous_const
  | id =>
    simp only [cfcHomSuperset_id]
    fun_prop
  | star_id =>
    simp only [map_star, cfcHomSuperset_id]
    fun_prop
  | add f g hf hg => simpa using! hf.add hg
  | mul f g hf hg => simpa using! hf.mul hg
  | frequently f hf =>
    apply continuous_of_uniform_approx_of_continuous
    rw [Metric.uniformity_basis_dist_le.forall_iff (by aesop)]
    intro ε hε
    simp only [Set.mem_ofPred_eq, dist_eq_norm]
    obtain ⟨g, hg, g_cont⟩ := frequently_iff.mp hf (Metric.closedBall_mem_nhds f hε)
    simp only [Metric.mem_closedBall, dist_comm g, dist_eq_norm] at hg
    refine ⟨_, g_cont, fun x ↦ ?_⟩
    rw [← map_sub, cfcHomSuperset_apply]
    rw [isometry_cfcHom (R := 𝕜) _ (ha' x) |>.norm_map_of_map_zero (map_zero (cfcHom (ha' x)))]
    rw [ContinuousMap.norm_le _ hε.le] at hg ⊢
    aesop

variable (A) in
/-- For `f : 𝕜 → 𝕜` continuous on a compact set `s`, `cfc f` is continuous on the set of `a : A`
satisfying the predicate `p` (associated to `𝕜`) and whose `𝕜`-spectrum is contained in `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44cd53bc76622f44aed7e388806ac3e32f701e37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
