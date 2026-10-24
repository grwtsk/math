# rpow_sum_le_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dba9259f-8037-279f-71ff-9c26f7bb4262",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30930ea1-13f1-facc-1322-7e601c219014",
  "kind": "lemma",
  "lexical_name": "rpow_sum_le_card",
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
  "slug": "rpow-sum-le-card--78e6cb9f060e1baa292f1812",
  "source": {
    "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1157,
    "line": 1142,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78e6cb9f060e1baa292f18124e50f503a505d911d8cbde4bfcec537df8b01ae2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30930ea1-13f1-facc-1322-7e601c219014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1142–1157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma rpow_sum_le_card {B : ℝ} (hB : 1 ≤ B) (N : ℕ) :
    ∑ k ∈ Finset.Icc (3 : ℕ) N, B ^ (1 / (k : ℝ) - 1 / 3 : ℝ) ≤ ((Finset.Icc (3 : ℕ) N).card : ℝ) := by
  have hterm : ∀ k ∈ Finset.Icc (3 : ℕ) N, B ^ (1 / (k : ℝ) - 1 / 3 : ℝ) ≤ 1 := by
    intro k hk
    have hk3 : (3 : ℕ) ≤ k := (Finset.mem_Icc.mp hk).1
    have hkpos : (0 : ℝ) < k := by exact_mod_cast (lt_of_lt_of_le (by decide : 0 < (3 : ℕ)) hk3)
    have hexp : (1 / (k : ℝ) - 1 / 3 : ℝ) ≤ 0 := by
      have hk_inv : (1 : ℝ) / (k : ℝ) ≤ 1 / 3 := by
        rw [one_div_le_one_div hkpos (by norm_num : (0 : ℝ) < 3)]
        exact_mod_cast hk3
      linarith
    exact Real.rpow_le_one_of_one_le_of_nonpos hB hexp
  simpa using (Finset.sum_le_card_nsmul (Finset.Icc (3 : ℕ) N)
    (fun k ↦ B ^ (1 / (k : ℝ) - 1 / 3 : ℝ)) 1 hterm)

-- Helper for proving a lower bound on `Real.exp (-b)` via `Real.log` of the inverse base.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean#L1142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2da8f7a1095fdd5b64ca8609b613f4c0960c9eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
