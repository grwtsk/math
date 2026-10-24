# sum_Ico_le_integral_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d4cb29ea8a78cbb61f9f1272d0afc24a9722a21",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb9d2ad5-dd8d-c2de-a0a5-c4b5175f9dbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ed71b3d-4dfe-2fe5-389d-9d2d94c6a213",
  "kind": "lemma",
  "lexical_name": "sum_Ico_le_integral_of_le",
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
  "slug": "sum-ico-le-integral-of-le--e70ef08932d8f7c25027362b",
  "source": {
    "blob": "2d4cb29ea8a78cbb61f9f1272d0afc24a9722a21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e70ef08932d8f7c25027362bb61cd132c89298fe957e7d6d31593edab9586ecd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ed71b3d-4dfe-2fe5-389d-9d2d94c6a213`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_Ico_le_integral_of_le (hab : a ≤ b)
    (h : ∀ i ∈ Ico a b, ∀ x ∈ Ico (i : ℝ) ↑(i + 1), f i ≤ g x)
    (hg : IntegrableOn g (Ico a b)) : ∑ i ∈ .Ico a b, f i ≤ ∫ x in a..b, g x := by
  have A i (hi : i ∈ Finset.Ico a b) : IntervalIntegrable g volume i ↑(i + 1) := by
    rw [intervalIntegrable_iff_integrableOn_Ico_of_le (by simp)]
    simp only [Finset.mem_Ico, ← Nat.add_one_le_iff] at hi
    rify at hi
    exact hg.mono (by grind) le_rfl
  calc
  _ = ∑ i ∈ .Ico a b, (∫ x in (i : ℝ)..↑(i + 1), f i) := by simp
  _ ≤ ∑ i ∈ .Ico a b, (∫ x in (i : ℝ)..↑(i + 1), g x) := by
    gcongr with i hi
    apply integral_mono_on_of_le_Ioo (by simp) (by simp) (A _ hi) (fun x hx ↦ ?_)
    exact h _ (by simpa using hi) _ (Ioo_subset_Ico_self hx)
  _ = _ := by rw [sum_integral_adjacent_intervals_Ico (a := (↑·)) hab]; grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant394571591e6af1aca59fc0c72b6c74050b511b95fa646c7665832a11251c77c1.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d4cb29ea8a78cbb61f9f1272d0afc24a9722a21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
