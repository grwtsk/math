# hasProd_zero_subset_lt_one_valued

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68930a6b-221e-c3d5-73ea-740a98d74722",
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
  "slug": "hasprod-zero-subset-lt-one-valued--66f73752d90056d6fde55f32",
  "source": {
    "blob": "bb5434fcb154cca5e42d7fd9c4de2a9bc6db4e7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66f73752d90056d6fde55f32e39a1129bec0879ca7fd8988512198a1a6c587d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68930a6b-221e-c3d5-73ea-740a98d74722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–86.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FiniteAdeleRing/Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb5434fcb154cca5e42d7fd9c4de2a9bc6db4e7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
