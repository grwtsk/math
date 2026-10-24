# sSup_of_countable_affine_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0658a7e822f25a8d56985d6617e531fa76d573ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:675b5cbe-0e80-ab39-eea6-bfd3759fd5cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f0bb704-5eb3-0b09-4ce2-55e7db24d916",
  "kind": "theorem",
  "lexical_name": "sSup_of_countable_affine_eq",
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
  "slug": "ssup-of-countable-affine-eq--04b438b84806cd86e698f6ac",
  "source": {
    "blob": "0658a7e822f25a8d56985d6617e531fa76d573ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 126,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04b438b84806cd86e698f6acee6a11115da48db024b4d7cf3f82820fd07c421c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f0bb704-5eb3-0b09-4ce2-55e7db24d916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sSup_of_countable_affine_eq [HereditarilyLindelofSpace E] (hsc : IsClosed s)
    (hφc : LowerSemicontinuousOn φ s) (hφcv : ConvexOn ℝ s φ) :
    ∃ 𝓕' : Set (s → ℝ), 𝓕'.Countable ∧ sSup 𝓕' = s.domRestrict φ ∧
      ∀ f ∈ 𝓕', f ≤ s.domRestrict φ ∧
      ∃ (l : E →L[𝕜] 𝕜) (c : ℝ), f = s.domRestrict (re ∘ l) + const s c := by
  by_cases! hs : s.Nonempty
  · let 𝓕 := {f | f ≤ s.domRestrict φ ∧
      ∃ (l : E →L[𝕜] 𝕜) (c : ℝ), f = s.domRestrict (re ∘ l) + const s c}
    have hl : IsLUB 𝓕 (s.domRestrict φ) := by
      refine (hφcv.sSup_affine_eq (𝕜 := 𝕜) hsc hφc) ▸ isLUB_csSup ?_ ?_
      · obtain ⟨l, c, hlc⟩ := exists_affine_le_of_lt (𝕜 := 𝕜) hs.some_mem
          (by grind : φ hs.some - 1 < φ (⟨hs.some, hs.some_mem⟩ : s)) hsc hφc hφcv
        exact ⟨s.domRestrict (re ∘ l) + const s c, hlc.1, l, c, rfl⟩
      · exact (bddAbove_def.2 ⟨φ ∘ Subtype.val, fun y hy => hy.1⟩)
    have hr (f) (hf : f ∈ 𝓕) : LowerSemicontinuous f := by
      obtain ⟨l, c, hlc⟩ := hf.2
      exact Continuous.lowerSemicontinuous (hlc ▸ by fun_prop)
    obtain ⟨𝓕', h𝓕'⟩ := exists_countable_lowerSemicontinuous_isLUB hr hl
    refine ⟨𝓕', h𝓕'.2.1, h𝓕'.2.2.csSup_eq ?_, fun f hf => h𝓕'.1 hf⟩
    by_contra!
    grind [(isLUB_empty_iff.1 (this ▸ h𝓕'.2.2)) (fun x : s => φ x - 1) ⟨hs.some, hs.some_mem⟩]
  · use ∅; simp [domRestrict_def]; grind

/-- The sequential version of `sSup_of_countable_affine_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0658a7e822f25a8d56985d6617e531fa76d573ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
