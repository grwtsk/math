# convexOn_univ_piecewise_Iic_of_antitoneOn_Iic_monotoneOn_Ici

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f9e94721e0ddbf319ef443298ff4e62d153b09a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b5eba91-fbd9-3542-b924-0c12487817a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2197437c-37b0-0d18-633f-a82e88538d48",
  "kind": "theorem",
  "lexical_name": "convexOn_univ_piecewise_Iic_of_antitoneOn_Iic_monotoneOn_Ici",
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
  "slug": "convexon-univ-piecewise-iic-of-antitoneon-iic-monotoneon-ici--6c605f3e8d6f6c2326b972e3",
  "source": {
    "blob": "7f9e94721e0ddbf319ef443298ff4e62d153b09a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 38,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Piecewise/Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c605f3e8d6f6c2326b972e3810547ce446005a0a979f88996325886e1461ce0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Piecewise/Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2197437c-37b0-0d18-633f-a82e88538d48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexOn_univ_piecewise_Iic_of_antitoneOn_Iic_monotoneOn_Ici
    (hf : ConvexOn 𝕜 (Set.Iic e) f) (hg : ConvexOn 𝕜 (Set.Ici e) g)
    (h_anti : AntitoneOn f (Set.Iic e)) (h_mono : MonotoneOn g (Set.Ici e)) (h_eq : f e = g e) :
    ConvexOn 𝕜 Set.univ ((Set.Iic e).piecewise f g) := by
  refine ⟨convex_univ, fun x _ y _ a b ha hb hab ↦ ?_⟩
  by_cases hx : x ≤ e <;> by_cases hy : y ≤ e <;> push_neg at hx hy
  · have hc : a • x + b • y ≤ e := (Convex.combo_le_max x y ha hb hab).trans (max_le hx hy)
    rw [Set.piecewise_eq_of_mem (Set.Iic e) f g hx, Set.piecewise_eq_of_mem (Set.Iic e) f g hy,
      Set.piecewise_eq_of_mem (Set.Iic e) f g hc]
    exact hf.2 hx hy ha hb hab
  · rw [Set.piecewise_eq_of_mem (Set.Iic e) f g hx,
      Set.piecewise_eq_of_notMem (Set.Iic e) f g (Set.notMem_Iic.mpr hy)]
    by_cases hc : a • x + b • y ≤ e <;> push_neg at hc
    · rw [Set.piecewise_eq_of_mem (Set.Iic e) f g hc]
      have hc' : a • x + b • e ≤ a • x + b • y := by gcongr
      trans a • f x + b • f e
      · exact (h_anti (hc'.trans hc) hc hc').trans (hf.2 hx Set.right_mem_Iic ha hb hab)
      · rw [h_eq]
        gcongr
        exact h_mono Set.left_mem_Ici hy.le hy.le
    · rw [Set.piecewise_eq_of_notMem (Set.Iic e) f g (Set.notMem_Iic.mpr hc)]
      have hc' : a • x + b • y ≤ a • e + b • y := by gcongr
      trans a • g e + b • g y
      · exact (h_mono hc.le (hc.le.trans hc') hc').trans (hg.2 Set.left_mem_Ici hy.le ha hb hab)
      · rw [← h_eq]
        gcongr
        exact h_anti hx Set.right_mem_Iic hx
  · rw [Set.piecewise_eq_of_notMem (Set.Iic e) f g (Set.notMem_Iic.mpr hx),
      Set.piecewise_eq_of_mem (Set.Iic e) f g hy]
    by_cases hc : a • x + b • y ≤ e <;> push_neg at hc
    · rw [Set.piecewise_eq_of_mem (Set.Iic e) f g hc]
      have hc' : a • e + b • y ≤ a • x + b • y := by gcongr
      trans a • f e + b • f y
      · exact (h_anti (hc'.trans hc) hc hc').trans (hf.2 Set.right_mem_Iic hy ha hb hab)
      · rw [h_eq]
        gcongr
        exact h_mono Set.left_mem_Ici hx.le hx.le
    · rw [Set.piecewise_eq_of_notMem (Set.Iic e) f g (Set.notMem_Iic.mpr hc)]
      have hc' : a • x + b • y ≤ a • x + b • e := by gcongr
      trans a • g x + b • g e
      · exact (h_mono hc.le (hc.le.trans hc') hc').trans (hg.2 hx.le Set.left_mem_Ici ha hb hab)
      · rw [← h_eq]
        gcongr
        exact h_anti hy Set.right_mem_Iic hy
  · have hc : e < a • x + b • y :=
        (lt_min hx hy).trans_le (Convex.min_le_combo x y ha hb hab)
    rw [(Set.Iic e).piecewise_eq_of_notMem f g (Set.notMem_Iic.mpr hx),
      (Set.Iic e).piecewise_eq_of_notMem f g (Set.notMem_Iic.mpr hy),
      (Set.Iic e).piecewise_eq_of_notMem f g (Set.notMem_Iic.mpr hc)]
    exact hg.2 hx.le hy.le ha hb hab

/-- The piecewise function `(Set.Ici e).piecewise f g` of a function `f` increasing and convex on
`Set.Ici e` and a function `g` decreasing and convex on `Set.Iic e`, such that `f e = g e`, is
convex on the universal set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Piecewise/Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Piecewise/Variant3b26ac0a5dd3b99106ef7ed719b0da23a96632f50b2ef3122bc35a16c54c9caf.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9e94721e0ddbf319ef443298ff4e62d153b09a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
