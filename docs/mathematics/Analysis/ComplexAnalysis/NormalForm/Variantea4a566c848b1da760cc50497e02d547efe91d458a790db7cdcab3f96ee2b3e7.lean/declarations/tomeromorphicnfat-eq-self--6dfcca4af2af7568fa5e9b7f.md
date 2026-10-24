# toMeromorphicNFAt_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:620bee8c-1f52-019a-75e1-aec369578b16",
  "kind": "theorem",
  "lexical_name": "toMeromorphicNFAt_eq_self",
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
  "slug": "tomeromorphicnfat-eq-self--6dfcca4af2af7568fa5e9b7f",
  "source": {
    "blob": "72dabaddb6ccd3e9d8e79c13d979a5764648d550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 335,
    "path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dfcca4af2af7568fa5e9b7f26f585dccfb4786102b755bce6ffd9eb5870b845",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:620bee8c-1f52-019a-75e1-aec369578b16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem toMeromorphicNFAt_eq_self :
    toMeromorphicNFAt f x = f ↔ MeromorphicNFAt f x where
  mp hf := by
    rw [hf.symm]
    exact meromorphicNFAt_toMeromorphicNFAt
  mpr hf := by
    funext z
    by_cases hz : z = x
    · rw [hz]
      simp only [toMeromorphicNFAt, hf.meromorphicAt, WithTop.coe_zero, ne_eq, Function.update_self]
      have h₀f := hf
      rcases hf with h₁f | h₁f
      · simpa [meromorphicOrderAt_eq_top_iff.2 (h₁f.filter_mono nhdsWithin_le_nhds)]
          using h₁f.eq_of_nhds.symm
      · obtain ⟨n, g, h₁g, h₂g, h₃g⟩ := h₁f
        rw [Filter.EventuallyEq.eq_of_nhds h₃g]
        have : meromorphicOrderAt f x = n := by
          rw [meromorphicOrderAt_eq_int_iff h₀f.meromorphicAt]
          use g, h₁g, h₂g
          exact eventually_nhdsWithin_of_eventually_nhds h₃g
        by_cases h₃f : meromorphicOrderAt f x = 0
        · simp only [Pi.smul_apply', Pi.pow_apply, sub_self, h₃f, ↓reduceDIte]
          have hn : n = (0 : ℤ) := by
            rw [h₃f] at this
            exact WithTop.coe_eq_zero.mp this.symm
          simp_rw [hn]
          simp only [zpow_zero, one_smul]
          have : g =ᶠ[𝓝 x]
              Classical.choose ((meromorphicOrderAt_eq_int_iff h₀f.meromorphicAt).1 h₃f) := by
            obtain ⟨h₀, h₁, h₂⟩ := Classical.choose_spec
              ((meromorphicOrderAt_eq_int_iff h₀f.meromorphicAt).1 h₃f)
            rw [← h₁g.continuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE h₀.continuousAt]
            rw [hn] at h₃g
            simp only [zpow_zero, one_smul, ne_eq] at h₃g h₂
            exact (h₃g.filter_mono nhdsWithin_le_nhds).symm.trans h₂
          simp only [Function.update_self]
          exact Filter.EventuallyEq.eq_of_nhds this.symm
        · rw [eq_comm]
          simp only [Pi.smul_apply', Pi.pow_apply, sub_self, h₃f, ↓reduceDIte, smul_eq_zero,
            Function.update_self, smul_eq_zero]
          left
          apply zero_zpow n
          by_contra hn
          rw [hn] at this
          tauto
    · exact (hf.meromorphicAt.eqOn_compl_singleton_toMermomorphicNFAt hz).symm

/--
If `f` is meromorphic in normal form, then so is its inverse.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72dabaddb6ccd3e9d8e79c13d979a5764648d550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
