# NormedField.completeSpace_iff_isComplete_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee893fc5-eaa0-1ade-9680-dc6ca3d0c51c",
  "kind": "lemma",
  "lexical_name": "NormedField.completeSpace_iff_isComplete_closedBall",
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
  "slug": "normedfield-completespace-iff-iscomplete-closedball--f6ad76a72119b6cc36032c30",
  "source": {
    "blob": "1ccee6b4294ececfa104d3f69bafebaf93786f81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 218,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Varianta4d480831eb2f7ff38983f68ce0d9e09fd2677247c0eb3ba26ce695e734d86be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6ad76a72119b6cc36032c3089fb19c2621d7545817ff8f3b0eac1cab765a0c3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Varianta4d480831eb2f7ff38983f68ce0d9e09fd2677247c0eb3ba26ce695e734d86be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee893fc5-eaa0-1ade-9680-dc6ca3d0c51c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NormedField.completeSpace_iff_isComplete_closedBall {K : Type*} [NormedField K] :
    CompleteSpace K ↔ IsComplete (Metric.closedBall 0 1 : Set K) := by
  constructor <;> intro h
  · exact Metric.isClosed_closedBall.isComplete
  rcases NormedField.discreteTopology_or_nontriviallyNormedField K with _|⟨_, rfl⟩
  · rwa [completeSpace_iff_isComplete_univ,
         ← NormedDivisionRing.unitClosedBall_eq_univ_of_discrete]
  refine Metric.complete_of_cauchySeq_tendsto fun u hu ↦ ?_
  obtain ⟨k, hk⟩ := hu.norm_bddAbove
  have kpos : 0 ≤ k := (_root_.norm_nonneg (u 0)).trans (hk (by simp))
  obtain ⟨x, hx⟩ := NormedField.exists_lt_norm K k
  have hu' : CauchySeq ((· / x) ∘ u) := (uniformContinuous_div_const' x).comp_cauchySeq hu
  have hb : ∀ n, ((· / x) ∘ u) n ∈ Metric.closedBall 0 1 := by
    intro
    simp only [Function.comp_apply, Metric.mem_closedBall, dist_zero_right, norm_div]
    rw [div_le_one (kpos.trans_lt hx)]
    exact hx.le.trans' (hk (by simp))
  obtain ⟨a, -, ha'⟩ := cauchySeq_tendsto_of_isComplete h hb hu'
  refine ⟨a * x, (((continuous_mul_right x).tendsto a).comp ha').congr ?_⟩
  have hx' : x ≠ 0 := by
    contrapose! hx
    simp [hx, kpos]
  simp [div_mul_cancel₀ _ hx']

end Complete
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Varianta4d480831eb2f7ff38983f68ce0d9e09fd2677247c0eb3ba26ce695e734d86be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Varianta4d480831eb2f7ff38983f68ce0d9e09fd2677247c0eb3ba26ce695e734d86be.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ccee6b4294ececfa104d3f69bafebaf93786f81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
