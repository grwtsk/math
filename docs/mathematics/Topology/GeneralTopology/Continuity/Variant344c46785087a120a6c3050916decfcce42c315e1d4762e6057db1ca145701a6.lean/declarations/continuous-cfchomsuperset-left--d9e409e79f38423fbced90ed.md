# continuous_cfcHomSuperset_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96920571-7b2c-be9a-27d1-0f9140cea5f4",
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
  "slug": "continuous-cfchomsuperset-left--d9e409e79f38423fbced90ed",
  "source": {
    "blob": "7f65e7384596d418738f6bc1f56a23ad60c5657a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9e409e79f38423fbced90ed2a80ca6e7bf1d8d50728120975f4f2c349b291f1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96920571-7b2c-be9a-27d1-0f9140cea5f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–242.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f65e7384596d418738f6bc1f56a23ad60c5657a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
