# continuousAt_zero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a223ed13-c635-1bcb-bd76-9ba5bed05305",
  "kind": "theorem",
  "lexical_name": "continuousAt_zero'",
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
  "slug": "continuousat-zero--b2646e8f4a0c7bde00e116ab",
  "source": {
    "blob": "f55991f82ac638380bcf137118898403dcec9249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1196,
    "line": 1177,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b88939387aeb8744537f8d3b136fb3d0f661b18e35abb214a1b59b95cbdd666.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2646e8f4a0c7bde00e116abe9727f9b8b35641d64892ebec5bc036bedaa6e12",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b88939387aeb8744537f8d3b136fb3d0f661b18e35abb214a1b59b95cbdd666.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a223ed13-c635-1bcb-bd76-9ba5bed05305`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1177–1196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_zero' [TopologicalSpace E] [ContinuousConstSMul 𝕜 E] {p : Seminorm 𝕜 E}
    {r : ℝ} (hp : p.closedBall 0 r ∈ (𝓝 0 : Filter E)) : ContinuousAt p 0 := by
  let r' := max 1 r
  have hr' : 0 < r' := lt_max_of_lt_left one_pos
  have hp' : p.closedBall 0 r' ∈ (𝓝 0 : Filter E) :=
    mem_of_superset hp (closedBall_mono <| le_max_right _ _)
  refine' continuousAt_zero_of_forall' _
  intro ε hε
  rcases exists_norm_lt 𝕜 (div_pos hε hr') with ⟨k, hk0, hkε⟩
  have hk0' := norm_pos_iff.mp hk0
  have := (set_smul_mem_nhds_zero_iff hk0').mpr hp'
  refine' Filter.mem_of_superset this (smul_set_subset_iff.mpr fun x hx => _)
  rw [mem_closedBall_zero, map_smul_eq_mul, ← div_mul_cancel ε hr'.ne.symm]
  gcongr
  exact p.mem_closedBall_zero.mp hx
#align seminorm.continuous_at_zero' Seminorm.continuousAt_zero'

/-- A seminorm is continuous at `0` if `p.ball 0 r ∈ 𝓝 0` for *all* `r > 0`.
Over a `NontriviallyNormedField` it is actually enough to check that this is true
for *some* `r`, see `Seminorm.continuousAt_zero'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b88939387aeb8744537f8d3b136fb3d0f661b18e35abb214a1b59b95cbdd666.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b88939387aeb8744537f8d3b136fb3d0f661b18e35abb214a1b59b95cbdd666.lean#L1177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f55991f82ac638380bcf137118898403dcec9249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
