# exists_of_rankOne_eq_rankOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e464cfcd28bd0ac75d7d79f814305a6c88a4a28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b88e65383029c397906c6029ea3d593502074a222207b13226b6af5b9bf0aba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cff5267-c1d6-e0a8-b769-f5bf5ff5f20a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:491b07ae-fbf3-0d67-dbe8-f36cdada3ec0",
  "kind": "theorem",
  "lexical_name": "exists_of_rankOne_eq_rankOne",
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
  "slug": "exists-of-rankone-eq-rankone--9ff00f0568c6f63bc2511556",
  "source": {
    "blob": "9e464cfcd28bd0ac75d7d79f814305a6c88a4a28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 378,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variant8b88e65383029c397906c6029ea3d593502074a222207b13226b6af5b9bf0aba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ff00f0568c6f63bc2511556b97cd3c0ed6d2e996d4e10410ac6a010a06bd6d7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LinearMap/Variant8b88e65383029c397906c6029ea3d593502074a222207b13226b6af5b9bf0aba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:491b07ae-fbf3-0d67-dbe8-f36cdada3ec0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_rankOne_eq_rankOne {a c : F} {b d : H}
    (ha : a ≠ 0) (hb : b ≠ 0) (h : rankOne 𝕜 a b = rankOne 𝕜 c d) :
    ∃ (α β : 𝕜) (_ : α ≠ 0) (_ : 0 < β), a = α • c ∧ b = (α * β) • d := by
  have h₂ := rankOne_eq_rankOne_iff_comm.mp h
  simp only [ContinuousLinearMap.ext_iff, rankOne_apply] at h h₂
  have h₃ := calc
    a = (⟪b, b⟫_𝕜 / ⟪b, b⟫_𝕜) • a := by simp_all
    _ = (1 / ⟪b, b⟫_𝕜) • (⟪b, b⟫_𝕜 • a) := by simp only [smul_smul]; ring_nf
    _ = (⟪d, b⟫_𝕜 / ⟪b, b⟫_𝕜) • c := by simp only [h, smul_smul]; ring_nf
  have h₄ := calc
    b = (⟪a, a⟫_𝕜 / ⟪a, a⟫_𝕜) • b := by simp_all
    _ = (1 / ⟪a, a⟫_𝕜) • (⟪a, a⟫_𝕜 • b) := by simp only [smul_smul]; ring_nf
    _ = ((⟪d, b⟫_𝕜 / ⟪b, b⟫_𝕜) * (⟪c, c⟫_𝕜 / ⟪a, a⟫_𝕜)) • d := by
      simp_rw [h₂, h₃, inner_smul_right, smul_smul]; ring_nf
  have h₅ : ⟪d, b⟫_𝕜 ≠ 0 := fun h ↦ by simp [h, hb] at h₄
  have h₆ : c ≠ 0 := fun h ↦ by simp [h, ha] at h₃
  refine ⟨_, ‖c‖ ^ 2 / ‖a‖ ^ 2, div_ne_zero h₅ <| by simpa, ?_, h₃, by simpa using h₄⟩
  simp_rw [← ofReal_pow, ← ofReal_div, pos_iff (K := 𝕜), ofReal_re, ofReal_im, and_true]
  exact div_pos (by simpa [sq_pos_iff]) (by simpa [sq_pos_iff])

end Normed

end InnerProductSpace

namespace ContinuousLinearMap

open InnerProductSpace

variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LinearMap/Variant8b88e65383029c397906c6029ea3d593502074a222207b13226b6af5b9bf0aba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variant8b88e65383029c397906c6029ea3d593502074a222207b13226b6af5b9bf0aba.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e464cfcd28bd0ac75d7d79f814305a6c88a4a28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
