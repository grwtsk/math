# sum_Ico_add_period_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ff8a852835dd7a8f90a4ecfbe2f6fd058563dff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec312100-d6cf-2dd4-c366-3e120c9e32f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9807043-f014-e0e0-3535-d4b1d597e33a",
  "kind": "lemma",
  "lexical_name": "sum_Ico_add_period_eq_zero",
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
  "slug": "sum-ico-add-period-eq-zero--7d4cecd0a0f466573e7bee12",
  "source": {
    "blob": "5ff8a852835dd7a8f90a4ecfbe2f6fd058563dff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d4cecd0a0f466573e7bee12320423dee67fd5e94e9d0ff867ab2c4b8bdaa4a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9807043-f014-e0e0-3535-d4b1d597e33a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_Ico_add_period_eq_zero (hχ1 : χ ≠ 1) (N : ℕ) :
    ∑ k ∈ Finset.Ico N (N + q), χ (k : ZMod q) = 0 := by
  rw [Finset.sum_Ico_eq_sum_range, add_tsub_cancel_left]
  have hinj : ∀ a ∈ Finset.range q, ∀ b ∈ Finset.range q,
      ((N + a : ℕ) : ZMod q) = ((N + b : ℕ) : ZMod q) → a = b := by
    intro a ha b hb hab
    rw [Finset.mem_range] at ha hb
    have h := (ZMod.natCast_eq_natCast_iff' (N + a) (N + b) q).mp hab
    have h' : a % q = b % q := by
      have := Nat.ModEq.add_left_cancel' N (h : N + a ≡ N + b [MOD q])
      exact this
    rwa [Nat.mod_eq_of_lt ha, Nat.mod_eq_of_lt hb] at h'
  have himage : (Finset.range q).image (fun k : ℕ => ((N + k : ℕ) : ZMod q)) = Finset.univ := by
    apply Finset.eq_univ_of_card
    rw [Finset.card_image_of_injOn (fun a ha b hb h => hinj a ha b hb h), Finset.card_range,
      ZMod.card]
  calc ∑ k ∈ Finset.range q, χ ((N + k : ℕ) : ZMod q)
      = ∑ a ∈ (Finset.range q).image (fun k : ℕ => ((N + k : ℕ) : ZMod q)), χ a :=
        (Finset.sum_image hinj).symm
    _ = ∑ a, χ a := by rw [himage]
    _ = 0 := MulChar.sum_eq_zero_of_ne_one hχ1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ff8a852835dd7a8f90a4ecfbe2f6fd058563dff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
