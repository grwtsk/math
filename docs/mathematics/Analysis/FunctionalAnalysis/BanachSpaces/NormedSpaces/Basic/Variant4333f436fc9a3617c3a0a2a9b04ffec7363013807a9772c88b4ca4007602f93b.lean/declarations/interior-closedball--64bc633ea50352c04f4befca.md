# interior_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a769baec052fefdfb172eaa92c85cfb7d9cfbe84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f11a1bf-a1b5-427e-eef8-21c08c0191b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8894cf01-609c-8c9c-f34e-74ff7508d4d8",
  "kind": "theorem",
  "lexical_name": "interior_closedBall",
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
  "slug": "interior-closedball--64bc633ea50352c04f4befca",
  "source": {
    "blob": "a769baec052fefdfb172eaa92c85cfb7d9cfbe84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 130,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64bc633ea50352c04f4befcab84f12b229e731fd5e164c1c772a83670cffe015",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8894cf01-609c-8c9c-f34e-74ff7508d4d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_closedBall [NormedSpace ℝ E] (x : E) {r : ℝ} (hr : r ≠ 0) :
    interior (closedBall x r) = ball x r := by
  cases' hr.lt_or_lt with hr hr
  · rw [closedBall_eq_empty.2 hr, ball_eq_empty.2 hr.le, interior_empty]
  refine' Subset.antisymm _ ball_subset_interior_closedBall
  intro y hy
  rcases (mem_closedBall.1 <| interior_subset hy).lt_or_eq with (hr | rfl)
  · exact hr
  set f : ℝ → E := fun c : ℝ => c • (y - x) + x
  suffices f ⁻¹' closedBall x (dist y x) ⊆ Icc (-1) 1 by
    have hfc : Continuous f := (continuous_id.smul continuous_const).add continuous_const
    have hf1 : (1 : ℝ) ∈ f ⁻¹' interior (closedBall x <| dist y x) := by simpa
    have h1 : (1 : ℝ) ∈ interior (Icc (-1 : ℝ) 1) :=
      interior_mono this (preimage_interior_subset_interior_preimage hfc hf1)
    contrapose h1
    simp
  intro c hc
  rw [mem_Icc, ← abs_le, ← Real.norm_eq_abs, ← mul_le_mul_right hr]
  simpa [dist_eq_norm, norm_smul] using hc
#align interior_closed_ball interior_closedBall

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a769baec052fefdfb172eaa92c85cfb7d9cfbe84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
