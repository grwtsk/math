# hasProd_zero_subset_lt_one_valued

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d39e42a9629f1a3e14fb06e51f6fc3cf5ee57c01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41c534b2-9092-f781-e738-5bbdfb794003",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b3526de-2b10-f64d-ade1-11c289706c90",
  "kind": "theorem",
  "lexical_name": "hasProd_zero_subset_lt_one_valued",
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
  "slug": "hasprod-zero-subset-lt-one-valued--5e144ea0a5b5717b6f94c9a2",
  "source": {
    "blob": "d39e42a9629f1a3e14fb06e51f6fc3cf5ee57c01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e144ea0a5b5717b6f94c9a21d89348a49d7e6657121109e56847a385704f39e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b3526de-2b10-f64d-ade1-11c289706c90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem hasProd_zero_subset_lt_one_valued {x : 𝔸ᶠ[R, K]} (hx : ¬IsUnit x)
    (hx₀ : ∀ v, x v ≠ 0) : HasProd (fun v : {v | Valued.v (x v) < 1} ↦ ‖x v‖) 0 :=
  have hx := infinite_valued_ne_one_of_not_isUnit (by simpa using hx₀) hx
  have hx_prop : {v | 1 < Valued.v (x v)}.Finite := finite_valued_one_lt x
  have hx_inf : {v | Valued.v (x v) < 1}.Infinite := (hx.sdiff hx_prop).mono (by grind)
  have : atTop.Tendsto (fun s : Finset {v | Valued.v (x v) < 1} ↦ (∏ v ∈ s, ‖x v‖)⁻¹) atTop := by
    have h_le (S : Finset {v | Valued.v (x v) < 1}) : 2 ^ S.card ≤ (∏ v ∈ S, ‖x v‖)⁻¹ := by
      have (v : _) (h : v ∈ S) : 2 ≤ ‖(x v)⁻¹‖ := by
        apply FinitePlace.two_le_norm_of_one_lt_norm
        grind [toNormedField.one_lt_norm_iff, map_inv₀, one_lt_inv₀ (Valued.v.pos_iff.2 (hx₀ v))]
      simpa [Finset.prod_const] using (Finset.prod_le_prod₀ (by grind) this).trans (by simp)
    apply tendsto_atTop_mono h_le ((tendsto_pow_atTop_atTop_of_one_lt (by norm_num)).comp ?_)
    apply Filter.tendsto_atTop_atTop_of_monotone Finset.card_mono fun N ↦ ?_
    obtain ⟨t, ht, _⟩ := hx_inf.exists_subset_card_eq N
    exact ⟨t.subtype _, by grind [Finset.card_subtype, Finset.card_filter_eq_iff.2 ht]⟩
  (tendsto_inv_atTop_zero.comp this).congr (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d39e42a9629f1a3e14fb06e51f6fc3cf5ee57c01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
