# cell_mass_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "945751b8e4e1086821b5cea2d898f7a63d780c7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:872323eb-3709-052f-b357-1d2af0965fd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd1fdb0e-93a6-807c-cc17-b487946f29be",
  "kind": "theorem",
  "lexical_name": "cell_mass_sum_le",
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
  "slug": "cell-mass-sum-le--2b8c0ef02d195b0908d0a90f",
  "source": {
    "blob": "945751b8e4e1086821b5cea2d898f7a63d780c7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 187,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/01SourceRestrictedLowTimeWork/Variant52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b8c0ef02d195b0908d0a90f53a904d6945f760943ee330f3f2003c9b42d7c2f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/01SourceRestrictedLowTimeWork/Variant52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd1fdb0e-93a6-807c-cc17-b487946f29be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cell_mass_sum_le (L K : ℕ) (hL : 1 ≤ L) :
    (∑ k ∈ Finset.Ico L K, cellMass (k : ℝ)) ≤ 2 / Real.sqrt (L : ℝ) := by
  by_cases hLK : L ≤ K
  · have he : (∑ k ∈ Finset.Ico L K, cellMass (k : ℝ)) =
        -2 / Real.sqrt (K : ℝ) - (-2 / Real.sqrt (L : ℝ)) := by
      calc
        _ = ∑ k ∈ Finset.Ico L K,
            (-2 / Real.sqrt ((k + 1 : ℕ) : ℝ) - (-2 / Real.sqrt (k : ℝ))) := by
          apply Finset.sum_congr rfl
          intro k hk
          have hk0 : 0 < (k : ℝ) := by
            exact_mod_cast (by have := (Finset.mem_Ico.mp hk).1; omega : 0 < k)
          rw [cell_mass_exact hk0]
          simp only [Nat.cast_add, Nat.cast_one]
          ring
        _ = _ := Finset.sum_Ico_sub (f := fun k : ℕ => -2 / Real.sqrt (k : ℝ)) hLK
    simp only [neg_div] at he
    rw [he]
    have hn : 0 ≤ 2 / Real.sqrt (K : ℝ) := by positivity
    linarith
  · rw [Finset.Ico_eq_empty_of_le (by omega : K ≤ L), Finset.sum_empty]
    positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/01SourceRestrictedLowTimeWork/Variant52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/01SourceRestrictedLowTimeWork/Variant52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `945751b8e4e1086821b5cea2d898f7a63d780c7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
