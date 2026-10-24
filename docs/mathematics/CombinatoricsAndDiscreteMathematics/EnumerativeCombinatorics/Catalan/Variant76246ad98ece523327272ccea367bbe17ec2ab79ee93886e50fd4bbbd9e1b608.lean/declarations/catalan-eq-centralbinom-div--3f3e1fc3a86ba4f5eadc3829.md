# catalan_eq_centralBinom_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "169813d9dd29684e26e393376b59621f6990f081",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c4e6916-c861-e76e-8cac-22df8206b55f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:763006e7-3296-d9ac-1ba4-6c3d70325afe",
  "kind": "theorem",
  "lexical_name": "catalan_eq_centralBinom_div",
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
  "slug": "catalan-eq-centralbinom-div--3f3e1fc3a86ba4f5eadc3829",
  "source": {
    "blob": "169813d9dd29684e26e393376b59621f6990f081",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f3e1fc3a86ba4f5eadc38292ee2a5894b85fc70e050ef6dd622c676e63926f7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:763006e7-3296-d9ac-1ba4-6c3d70325afe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem catalan_eq_centralBinom_div (n : ℕ) : catalan n = n.centralBinom / (n + 1) := by
  suffices (catalan n : ℚ) = Nat.centralBinom n / (n + 1) by
    have h := Nat.succ_dvd_centralBinom n
    exact_mod_cast this
  induction' n using Nat.case_strong_induction_on with d hd
  · simp
  · simp_rw [catalan_succ, Nat.cast_sum, Nat.cast_mul]
    trans (∑ i : Fin d.succ, Nat.centralBinom i / (i + 1) *
                             (Nat.centralBinom (d - i) / (d - i + 1)) : ℚ)
    · congr
      ext1 x
      have m_le_d : x.val ≤ d := by apply Nat.le_of_lt_succ; apply x.2
      have d_minus_x_le_d : (d - x.val) ≤ d := tsub_le_self
      rw [hd _ m_le_d, hd _ d_minus_x_le_d]
      norm_cast
    · trans (∑ i : Fin d.succ, (gosperCatalan (d + 1) (i + 1) - gosperCatalan (d + 1) i))
      · refine' sum_congr rfl fun i _ => _
        rw [gosper_trick i.is_le, mul_div]
      · rw [← sum_range fun i => gosperCatalan (d + 1) (i + 1) - gosperCatalan (d + 1) i,
            sum_range_sub, Nat.succ_eq_add_one]
        rw [gosper_catalan_sub_eq_central_binom_div d]
        norm_cast
#align catalan_eq_central_binom_div catalan_eq_centralBinom_div

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `169813d9dd29684e26e393376b59621f6990f081` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
