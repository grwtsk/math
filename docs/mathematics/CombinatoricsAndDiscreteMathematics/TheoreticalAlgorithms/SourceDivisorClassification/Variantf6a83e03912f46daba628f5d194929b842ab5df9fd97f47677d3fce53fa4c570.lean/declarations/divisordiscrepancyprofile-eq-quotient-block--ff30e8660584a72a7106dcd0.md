# divisorDiscrepancyProfile_eq_quotient_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66979de2f5534ef71d1cfd4a479262f5aa48d7fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b2826fd-7e58-3e84-9773-378968918546",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbff3045-a2f8-238f-1b10-d7621f67d481",
  "kind": "theorem",
  "lexical_name": "divisorDiscrepancyProfile_eq_quotient_block",
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
  "slug": "divisordiscrepancyprofile-eq-quotient-block--ff30e8660584a72a7106dcd0",
  "source": {
    "blob": "66979de2f5534ef71d1cfd4a479262f5aa48d7fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantf6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff30e8660584a72a7106dcd075e54ecb8ea1ae5f035335ab2ff71c2263c22e33",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantf6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbff3045-a2f8-238f-1b10-d7621f67d481`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisorDiscrepancyProfile_eq_quotient_block (A : ℝ) (U N d : ℕ)
    (hd : 0 < d) (x : ℝ) :
    divisorDiscrepancyProfile A U N d x =
      (1 / (d : ℝ)) * plainLongReflectedProfile A U N x -
        (1 / Real.sqrt (d : ℝ)) * quotientReflectedBlock A U N d x := by
  classical
  unfold divisorDiscrepancyProfile plainLongReflectedProfile quotientReflectedBlock
  unfold reflectedProfile
  have hs :
      (∑ n ∈ Finset.Ioc U N, if d ∣ n then
        (1 / Real.sqrt (n : ℝ)) *
          normalizedTest explicitSecondDerivative A (x + Real.log (n : ℝ)) else 0) =
      (1 / Real.sqrt (d : ℝ)) *
        ∑ j ∈ Finset.Icc (U / d + 1) (N / d), (1 / Real.sqrt (j : ℝ)) *
          normalizedTest explicitSecondDerivative A
            (x + Real.log (d : ℝ) + Real.log (j : ℝ)) := by
    rw [sum_multiples_eq_quotient_interval U N d hd, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j hj
    exact multiple_source_term A x hd ((Nat.succ_pos _).trans_le (Finset.mem_Icc.mp hj).1)
  rw [← hs, Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  split_ifs <;> ring

/-- The literal actual beta row has the full finite divisor reconstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantf6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantf6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66979de2f5534ef71d1cfd4a479262f5aa48d7fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
