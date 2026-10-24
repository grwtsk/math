# tendsto_closedBall_filterAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c0659594eeb745d08bdacc4a3f18e800ef4b93e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:205a8680-3889-4036-5085-ddd229a12361",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26cf3991-5781-6044-975f-253970247c39",
  "kind": "theorem",
  "lexical_name": "tendsto_closedBall_filterAt",
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
  "slug": "tendsto-closedball-filterat--c2d9592715f513f6f0ae5b2c",
  "source": {
    "blob": "4c0659594eeb745d08bdacc4a3f18e800ef4b93e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2d9592715f513f6f0ae5b2cf183b4db5535dcf5e7150e7dcc86c9396cf09908",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26cf3991-5781-6044-975f-253970247c39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_closedBall_filterAt {K : ℝ} {x : α} {ι : Type*} {l : Filter ι} (w : ι → α)
    (δ : ι → ℝ) (δlim : Tendsto δ l (𝓝[>] 0)) (xmem : ∀ᶠ j in l, x ∈ closedBall (w j) (K * δ j)) :
    Tendsto (fun j => closedBall (w j) (δ j)) l ((vitaliFamily μ K).filterAt x) := by
  refine (vitaliFamily μ K).tendsto_filterAt_iff.mpr ⟨?_, fun ε hε => ?_⟩
  · filter_upwards [xmem, δlim self_mem_nhdsWithin] with j hj h'j
    exact closedBall_mem_vitaliFamily_of_dist_le_mul μ hj h'j
  · rcases l.eq_or_neBot with rfl | h
    · simp
    have hK : 0 ≤ K := by
      rcases (xmem.and (δlim self_mem_nhdsWithin)).exists with ⟨j, hj, h'j⟩
      have : 0 ≤ K * δ j := nonempty_closedBall.1 ⟨x, hj⟩
      exact (mul_nonneg_iff_left_nonneg_of_pos (mem_Ioi.1 h'j)).1 this
    have δpos := eventually_mem_of_tendsto_nhdsWithin δlim
    replace δlim := tendsto_nhds_of_tendsto_nhdsWithin δlim
    replace hK : 0 < K + 1 := by linarith
    apply (((Metric.tendsto_nhds.mp δlim _ (div_pos hε hK)).and δpos).and xmem).mono
    rintro j ⟨⟨hjε, hj₀ : 0 < δ j⟩, hx⟩ y hy
    replace hjε : (K + 1) * δ j < ε := by
      simpa [abs_eq_self.mpr hj₀.le] using (lt_div_iff₀' hK).mp hjε
    simp only [mem_closedBall] at hx hy ⊢
    linarith [dist_triangle_right y x (w j)]

end

section Applications

variable [SecondCountableTopology α] [BorelSpace α] [IsLocallyFiniteMeasure μ] {E : Type*}
  [NormedAddCommGroup E]

/-- A version of **Lebesgue's density theorem** for a sequence of closed balls whose centers are
not required to be fixed.

See also `Besicovitch.ae_tendsto_measure_inter_div`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c0659594eeb745d08bdacc4a3f18e800ef4b93e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
