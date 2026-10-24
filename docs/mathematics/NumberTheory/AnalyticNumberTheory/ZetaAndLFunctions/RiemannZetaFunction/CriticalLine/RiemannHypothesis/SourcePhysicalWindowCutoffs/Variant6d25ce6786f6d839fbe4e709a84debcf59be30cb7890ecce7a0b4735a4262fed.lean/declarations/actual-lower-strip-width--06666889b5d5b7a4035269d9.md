# actual_lower_strip_width

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53e40115283ec1a54d2cf404d1ac5cf4ad135527",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:164c644f-ce93-253a-1a62-eaae25252d0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2bbeeda-3f75-9c65-b087-3a350b612ce5",
  "kind": "theorem",
  "lexical_name": "actual_lower_strip_width",
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
  "slug": "actual-lower-strip-width--06666889b5d5b7a4035269d9",
  "source": {
    "blob": "53e40115283ec1a54d2cf404d1ac5cf4ad135527",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalWindowCutoffs/Variant6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06666889b5d5b7a4035269d9ca94ef89a629d8376631f1f6139762128497e94c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalWindowCutoffs/Variant6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2bbeeda-3f75-9c65-b087-3a350b612ce5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_lower_strip_width {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) -
        Real.log (vaughanCutoff A : ℝ) ∧
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) -
        Real.log (vaughanCutoff A : ℝ) ≤ 1 / (vaughanCutoff A : ℝ) := by
  have horder := actual_log_window_order hA
  refine ⟨sub_nonneg.mpr horder.2.1, ?_⟩
  let u : ℝ := (vaughanCutoff A : ℝ)
  have hu1 : 1 ≤ u := by exact_mod_cast vaughanCutoff_pos A hA
  have hu : 0 < u := zero_lt_one.trans_le hu1
  have hua : 0 < u + 1 := by positivity
  have hr : 0 < (u + 1) / u := div_pos hua hu
  have hlog := Real.log_le_sub_one_of_pos hr
  rw [Real.log_div hua.ne' hu.ne'] at hlog
  have hfrac : (u + 1) / u - 1 = 1 / u := by
    field_simp [hu.ne'] <;> ring
  rw [hfrac] at hlog
  simpa only [u, Nat.cast_add, Nat.cast_one] using hlog

/-- The actual Mangoldt error budget applies throughout the lower time strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalWindowCutoffs/Variant6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalWindowCutoffs/Variant6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53e40115283ec1a54d2cf404d1ac5cf4ad135527` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
