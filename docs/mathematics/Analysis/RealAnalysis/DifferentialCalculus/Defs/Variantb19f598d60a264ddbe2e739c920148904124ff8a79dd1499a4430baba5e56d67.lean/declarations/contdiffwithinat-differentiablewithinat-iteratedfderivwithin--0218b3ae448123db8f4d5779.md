# ContDiffWithinAt.differentiableWithinAt_iteratedFDerivWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0309cc12-c820-659a-c48f-e0365145b156",
  "kind": "theorem",
  "lexical_name": "ContDiffWithinAt.differentiableWithinAt_iteratedFDerivWithin",
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
  "slug": "contdiffwithinat-differentiablewithinat-iteratedfderivwithin--0218b3ae448123db8f4d5779",
  "source": {
    "blob": "8bb249814803ca9dedf71798af7e350c7033041a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 816,
    "line": 797,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb19f598d60a264ddbe2e739c920148904124ff8a79dd1499a4430baba5e56d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0218b3ae448123db8f4d57799236e2d11fb14f04e2d9c525ea32233c1e210029",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb19f598d60a264ddbe2e739c920148904124ff8a79dd1499a4430baba5e56d67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0309cc12-c820-659a-c48f-e0365145b156`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 797–816.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffWithinAt.differentiableWithinAt_iteratedFDerivWithin {m : ℕ}
    (h : ContDiffWithinAt 𝕜 n f s x) (hmn : m < n) (hs : UniqueDiffOn 𝕜 (insert x s)) :
    DifferentiableWithinAt 𝕜 (iteratedFDerivWithin 𝕜 m f s) s x := by
  have : (m + 1 : ℕ∞ω) ≠ ∞ := Ne.symm (ne_of_beq_false rfl)
  rcases h.contDiffOn' (ENat.add_one_natCast_le_withTop_of_lt hmn) (by simp [this])
    with ⟨u, uo, xu, hu⟩
  set t := insert x s ∩ u
  have A : t =ᶠ[𝓝[≠] x] s := by
    simp only [eventuallyEqSet_iff_inf_principal, ← nhdsWithin_inter']
    rw [← inter_assoc, nhdsWithin_inter_of_mem', ← sdiff_eq_compl_inter, insert_sdiff_of_mem,
      sdiff_eq_compl_inter]
    exacts [rfl, mem_nhdsWithin_of_mem_nhds (uo.mem_nhds xu)]
  have B : iteratedFDerivWithin 𝕜 m f s =ᶠ[𝓝 x] iteratedFDerivWithin 𝕜 m f t :=
    iteratedFDerivWithin_eventually_congr_set' _ A.symm _
  have C : DifferentiableWithinAt 𝕜 (iteratedFDerivWithin 𝕜 m f t) t x :=
    hu.differentiableOn_iteratedFDerivWithin (Nat.cast_lt.2 m.lt_succ_self) (hs.inter uo) x
      ⟨mem_insert _ _, xu⟩
  rw [differentiableWithinAt_congr_set' _ A] at C
  exact C.congr_of_eventuallyEq (B.filter_mono inf_le_left) B.self_of_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb19f598d60a264ddbe2e739c920148904124ff8a79dd1499a4430baba5e56d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb19f598d60a264ddbe2e739c920148904124ff8a79dd1499a4430baba5e56d67.lean#L797).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bb249814803ca9dedf71798af7e350c7033041a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
