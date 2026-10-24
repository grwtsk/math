# lintegral_mono_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e3247e18ae4dc134c0ac49995458ef2750e8efb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54c3af4f-6ec2-252d-f3c1-72988d129467",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4fa59c2-4bdf-9ed7-98aa-c61538499d73",
  "kind": "theorem",
  "lexical_name": "lintegral_mono_ae",
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
  "slug": "lintegral-mono-ae--68af30c7478bc63db047fdee",
  "source": {
    "blob": "7e3247e18ae4dc134c0ac49995458ef2750e8efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 217,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variante0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68af30c7478bc63db047fdee81c5e3f963d1c18db6e3ed909ba82110fbb50c84",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variante0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4fa59c2-4bdf-9ed7-98aa-c61538499d73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_mono_ae {f g : α → ℝ≥0∞} (h : ∀ᵐ a ∂μ, f a ≤ g a) :
    ∫⁻ a, f a ∂μ ≤ ∫⁻ a, g a ∂μ := by
  rcases exists_measurable_superset_of_null h with ⟨t, hts, ht, ht0⟩
  have : ∀ᵐ x ∂μ, x ∉ t := measure_eq_zero_iff_ae_notMem.1 ht0
  rw [lintegral, lintegral]
  refine iSup₂_le fun s hfs ↦ le_iSup₂_of_le (s.restrict tᶜ) ?_ ?_
  · intro a
    by_cases h : a ∈ t <;>
      simp only [restrict_apply s ht.compl, mem_compl_iff, h, not_true, not_false_eq_true,
        indicator_of_notMem, zero_le, not_false_eq_true, indicator_of_mem]
    exact le_trans (hfs a) (by_contradiction fun hnfg => h (hts hnfg))
  · exact le_of_eq <| SimpleFunc.lintegral_congr <| this.mono fun a hnt => by
      simp [restrict_apply s ht.compl, hnt]

/-- Lebesgue integral over a set is monotone in function.

This version assumes that the upper estimate is an a.e. measurable function
and the estimate holds a.e. on the set.
See also `setLIntegral_mono_ae'` for a version that assumes measurability of the set
but assumes no regularity of either function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variante0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variante0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e3247e18ae4dc134c0ac49995458ef2750e8efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
