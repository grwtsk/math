# exists_normalized_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33e6f5d60ba8766924c7b6d592a9c97a6e3c9a19",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fcf3bd6-4381-abe8-a19c-9b0197b75f91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d78bc07-bb2a-e31f-3098-8bc18b66bca6",
  "kind": "theorem",
  "lexical_name": "exists_normalized_aux1",
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
  "slug": "exists-normalized-aux1--29fb1b47de02e378779cd727",
  "source": {
    "blob": "33e6f5d60ba8766924c7b6d592a9c97a6e3c9a19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 308,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29fb1b47de02e378779cd727a2cffc85ce134e0e412cdd9a1225337b73f05d91",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d78bc07-bb2a-e31f-3098-8bc18b66bca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_normalized_aux1 {N : ℕ} {τ : ℝ} (a : SatelliteConfig E N τ)
    (lastr : a.r (last N) = 1) (hτ : 1 ≤ τ) (δ : ℝ) (hδ1 : τ ≤ 1 + δ / 4) (hδ2 : δ ≤ 1)
    (i j : Fin N.succ) (inej : i ≠ j) : 1 - δ ≤ ‖a.c i - a.c j‖ := by
  have ah :
      Pairwise fun i j => a.r i ≤ ‖a.c i - a.c j‖ ∧ a.r j ≤ τ * a.r i ∨
        a.r j ≤ ‖a.c j - a.c i‖ ∧ a.r i ≤ τ * a.r j := by
    simpa only [dist_eq_norm] using a.h
  have δnonneg : 0 ≤ δ := by linarith only [hτ, hδ1]
  have D : 0 ≤ 1 - δ / 4 := by linarith only [hδ2]
  have τpos : 0 < τ := _root_.zero_lt_one.trans_le hτ
  have I : (1 - δ / 4) * τ ≤ 1 :=
    calc
      (1 - δ / 4) * τ ≤ (1 - δ / 4) * (1 + δ / 4) := by gcongr
      _ = (1 : ℝ) - δ ^ 2 / 16 := by ring
      _ ≤ 1 := by linarith only [sq_nonneg δ]
  have J : 1 - δ ≤ 1 - δ / 4 := by linarith only [δnonneg]
  have K : 1 - δ / 4 ≤ τ⁻¹ := by rw [inv_eq_one_div, le_div_iff₀ τpos]; exact I
  suffices L : τ⁻¹ ≤ ‖a.c i - a.c j‖ by linarith only [J, K, L]
  have hτ' : ∀ k, τ⁻¹ ≤ a.r k := by
    intro k
    rw [inv_eq_one_div, div_le_iff₀ τpos, ← lastr, mul_comm]
    exact a.hlast' k hτ
  rcases ah inej with (H | H)
  · apply le_trans _ H.1
    exact hτ' i
  · rw [norm_sub_rev]
    apply le_trans _ H.1
    exact hτ' j

variable [NormedSpace ℝ E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33e6f5d60ba8766924c7b6d592a9c97a6e3c9a19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
