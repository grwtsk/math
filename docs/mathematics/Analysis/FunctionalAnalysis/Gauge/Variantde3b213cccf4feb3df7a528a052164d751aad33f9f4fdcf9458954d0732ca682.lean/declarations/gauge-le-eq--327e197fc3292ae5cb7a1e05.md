# gauge_le_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49c3a1f3e957a4dc8668df1f4f4e31e793690624",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7d502e2-c637-5d37-9649-bcf0da3be8b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aaea1662-dcce-58d5-be95-68b4400058cc",
  "kind": "theorem",
  "lexical_name": "gauge_le_eq",
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
  "slug": "gauge-le-eq--327e197fc3292ae5cb7a1e05",
  "source": {
    "blob": "49c3a1f3e957a4dc8668df1f4f4e31e793690624",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 131,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:327e197fc3292ae5cb7a1e054ae66062b99fac9b0cedb5642c86939131f2d158",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaea1662-dcce-58d5-be95-68b4400058cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gauge_le_eq (hs₁ : Convex ℝ s) (hs₀ : (0 : E) ∈ s) (hs₂ : Absorbent ℝ s) (ha : 0 ≤ a) :
    { x | gauge s x ≤ a } = ⋂ (r : ℝ) (_ : a < r), r • s := by
  ext x
  simp_rw [Set.mem_iInter, Set.mem_setOf_eq]
  refine ⟨fun h r hr => ?_, fun h => le_of_forall_pos_lt_add fun ε hε => ?_⟩
  · have hr' := ha.trans_lt hr
    rw [mem_smul_set_iff_inv_smul_mem₀ hr'.ne']
    obtain ⟨δ, δ_pos, hδr, hδ⟩ := exists_lt_of_gauge_lt hs₂ (h.trans_lt hr)
    suffices (r⁻¹ * δ) • δ⁻¹ • x ∈ s by rwa [smul_smul, mul_inv_cancel_right₀ δ_pos.ne'] at this
    rw [mem_smul_set_iff_inv_smul_mem₀ δ_pos.ne'] at hδ
    refine hs₁.smul_mem_of_zero_mem hs₀ hδ ⟨by positivity, ?_⟩
    rw [inv_mul_le_iff₀ hr', mul_one]
    exact hδr.le
  · have hε' := (lt_add_iff_pos_right a).2 (half_pos hε)
    exact
      (gauge_le_of_mem (ha.trans hε'.le) <| h _ hε').trans_lt (add_lt_add_left (half_lt_self hε) _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49c3a1f3e957a4dc8668df1f4f4e31e793690624` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
