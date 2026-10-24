# continuousAt_zero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c593be21-04f1-6a92-c5e7-3eb9e55305db",
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
  "slug": "continuousat-zero--46db77de4df14667807489cf",
  "source": {
    "blob": "9a21947520209d1952d4e4cdb6de9a5ea55a06c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1098,
    "line": 1086,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46db77de4df14667807489cf9655ca2e48dbb7244cf66a5d530352eafeca0cbf",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c593be21-04f1-6a92-c5e7-3eb9e55305db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1086–1098.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_zero' [TopologicalSpace E] [ContinuousConstSMul 𝕜 E] {p : Seminorm 𝕜 E}
    {r : ℝ} (hp : p.closedBall 0 r ∈ (𝓝 0 : Filter E)) : ContinuousAt p 0 := by
  refine continuousAt_zero_of_forall' fun ε hε ↦ ?_
  obtain ⟨k, hk₀, hk⟩ : ∃ k : 𝕜, 0 < ‖k‖ ∧ ‖k‖ * r < ε := by
    rcases le_or_gt r 0 with hr | hr
    · use 1; simpa using hr.trans_lt hε
    · simpa [lt_div_iff₀ hr] using exists_norm_lt 𝕜 (div_pos hε hr)
  grw [← hk]
  rwa [← set_smul_mem_nhds_zero_iff (norm_pos_iff.1 hk₀), smul_closedBall_zero hk₀] at hp

/-- A seminorm is continuous at `0` if `p.ball 0 r ∈ 𝓝 0` for *all* `r > 0`.
Over a `NontriviallyNormedField` it is actually enough to check that this is true
for *some* `r`, see `Seminorm.continuousAt_zero'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean#L1086).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a21947520209d1952d4e4cdb6de9a5ea55a06c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
