# integrable_iff_cauchy_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b1332d4-0a16-6ddc-9ce3-c4b8c100ce73",
  "kind": "theorem",
  "lexical_name": "integrable_iff_cauchy_basis",
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
  "slug": "integrable-iff-cauchy-basis--d1688d41a0f78b19c3f2b4fe",
  "source": {
    "blob": "f0925e524275a3187930041cbdadbf1efd6be99b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 228,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1688d41a0f78b19c3f2b4fe1fbf57c23f5320ac2b870ad0c4e9b301c26cb6fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b1332d4-0a16-6ddc-9ce3-c4b8c100ce73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_iff_cauchy_basis [CompleteSpace F] : Integrable I l f vol ↔
    ∀ ε > (0 : ℝ), ∃ r : ℝ≥0 → ℝⁿ → Ioi (0 : ℝ), (∀ c, l.RCond (r c)) ∧
      ∀ c₁ c₂ π₁ π₂, l.MemBaseSet I c₁ (r c₁) π₁ → π₁.IsPartition → l.MemBaseSet I c₂ (r c₂) π₂ →
        π₂.IsPartition → dist (integralSum f vol π₁) (integralSum f vol π₂) ≤ ε := by
  rw [integrable_iff_cauchy, cauchy_map_iff',
    (l.hasBasis_toFilteriUnion_top _).prod_self.tendsto_iff uniformity_basis_dist_le]
  refine forall₂_congr fun ε _ => exists_congr fun r => ?_
  simp only [Prod.forall, exists_imp, prodMk_mem_set_prod_eq, and_imp, mem_ofPred_eq]
  exact
    and_congr Iff.rfl
      ⟨fun H c₁ c₂ π₁ π₂ h₁ hU₁ h₂ hU₂ => H π₁ π₂ c₁ h₁ hU₁ c₂ h₂ hU₂,
        fun H π₁ π₂ c₁ h₁ hU₁ c₂ h₂ hU₂ => H c₁ c₂ π₁ π₂ h₁ hU₁ h₂ hU₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0925e524275a3187930041cbdadbf1efd6be99b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
