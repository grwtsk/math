# linearIndependent_of_even_relations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ebbda4394deb18a86815feb686e476bcb14cf8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/LinearAlgebra/ModTwoIndependenceDescent.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bff0fce6-bcb5-e638-2255-eb8b89eff906",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3a40518-8ba3-f400-cf41-02674af80aa3",
  "kind": "theorem",
  "lexical_name": "linearIndependent_of_even_relations",
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
  "slug": "linearindependent-of-even-relations--398b72e512a12e38aa168623",
  "source": {
    "blob": "1ebbda4394deb18a86815feb686e476bcb14cf8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 57,
    "path": "GRWTSK/LinearAlgebra/ModTwoIndependenceDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:398b72e512a12e38aa1686230a91fdbd546f1bc6b68ea86698b9a6e5a60351b8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModTwoIndependenceDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3a40518-8ba3-f400-cf41-02674af80aa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_of_even_relations
    (P : ι → G)
    (noTwoTorsion : ∀ x : G, (2 : ℤ) • x = 0 → x = 0)
    (relationsEven : ∀ (c : ι → ℤ),
      (∑ i, c i • P i) = 0 → ∀ i, (2 : ℤ) ∣ c i) :
    LinearIndependent ℤ P := by
  classical
  apply (Fintype.linearIndependent_iff).2
  intro c hc
  have descend :
      ∀ n : ℕ, ∀ (r : ι → ℤ),
        coefficientMass r = n →
        (∑ i, r i • P i) = 0 →
        ∀ i, r i = 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | h n ih =>
      intro r hmass hrelation
      by_cases hn : n = 0
      · intro i
        have hle : (r i).natAbs ≤ coefficientMass r := by
          unfold coefficientMass
          exact Finset.single_le_sum (fun j hj => Nat.zero_le (r j).natAbs) (Finset.mem_univ i)
        have hz : (r i).natAbs = 0 := by omega
        exact Int.natAbs_eq_zero.mp hz
      · have hhalf : ∀ i, ∃ d : ℤ, r i = (2 : ℤ) * d := by
          intro i
          exact relationsEven r hrelation i
        choose d hd using hhalf
        have hweight : coefficientMass r = 2 * coefficientMass d := by
          have heq : r = fun i => (2 : ℤ) * d i := by
            funext i
            exact hd i
          rw [heq, coefficientMass_double]
        have hsubrelation : (∑ i, d i • P i) = 0 := by
          apply noTwoTorsion
          calc
            (2 : ℤ) • (∑ i, d i • P i) =
                ∑ i, (2 : ℤ) • (d i • P i) := by
                  rw [smul_sum]
            _ = ∑ i, r i • P i := by
                  apply Finset.sum_congr rfl
                  intro i hi
                  rw [hd i, mul_zsmul]
            _ = 0 := hrelation
        have hsmaller : coefficientMass d < n := by omega
        have hd0 := ih (coefficientMass d) hsmaller d rfl hsubrelation
        intro i
        rw [hd i, hd0 i, mul_zero]
  exact descend (coefficientMass c) c rfl hc

/-- The double-kernel assumption is not dispensable. The singleton
family 1 in ZMod 2 has a nonzero mod-2 coordinate but is killed by 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/ModTwoIndependenceDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/ModTwoIndependenceDescent.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ebbda4394deb18a86815feb686e476bcb14cf8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
