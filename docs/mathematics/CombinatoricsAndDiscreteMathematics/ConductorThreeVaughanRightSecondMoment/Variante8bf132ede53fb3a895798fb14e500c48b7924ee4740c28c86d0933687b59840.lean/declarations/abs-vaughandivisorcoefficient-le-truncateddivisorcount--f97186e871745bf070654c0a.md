# abs_vaughanDivisorCoefficient_le_truncatedDivisorCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30bda2dfd0cd32d832ef0f8052b1c0fa2dbd1188",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce410103-746e-2664-fcbe-38aa33b57194",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61e1aa2a-b06e-e27c-e4ac-56a62c6bb7a3",
  "kind": "theorem",
  "lexical_name": "abs_vaughanDivisorCoefficient_le_truncatedDivisorCount",
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
  "slug": "abs-vaughandivisorcoefficient-le-truncateddivisorcount--f97186e871745bf070654c0a",
  "source": {
    "blob": "30bda2dfd0cd32d832ef0f8052b1c0fa2dbd1188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variante8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f97186e871745bf070654c0a4eaf3981c5054b4da30407bfbf242211bfb73981",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variante8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61e1aa2a-b06e-e27c-e4ac-56a62c6bb7a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_vaughanDivisorCoefficient_le_truncatedDivisorCount
    (V k : ℕ) :
    |vaughanDivisorCoefficient V k| ≤ truncatedDivisorCount V k := by
  by_cases hk : k = 0
  · subst k
    simp [truncatedDivisorCount]
  · rw [vaughanDivisorCoefficient,
      ArithmeticFunction.coe_mul_zeta_apply]
    calc
      |∑ d ∈ k.divisors, vaughanMoebiusBelow V d| ≤
          ∑ d ∈ k.divisors, |vaughanMoebiusBelow V d| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ d ∈ k.divisors, if d ≤ V then (1 : ℝ) else 0 := by
        apply Finset.sum_le_sum
        intro d hd
        by_cases hdV : d ≤ V
        · rw [if_pos hdV]
          simp only [vaughanMoebiusBelow,
            truncateArithmeticFunction_apply, if_pos hdV,
            ArithmeticFunction.intCoe_apply]
          rcases ArithmeticFunction.moebius_eq_or d with h | h | h
          · norm_num [h]
          · norm_num [h]
          · norm_num [h]
        · rw [if_neg hdV]
          simp [vaughanMoebiusBelow,
            truncateArithmeticFunction_apply, hdV]
      _ = ((k.divisors.filter fun d ↦ d ≤ V).card : ℝ) := by
        rw [← Finset.sum_filter]
        simp
      _ = truncatedDivisorCount V k := by
        rw [filtered_divisors_eq V hk]
        rfl

/-! ## Exact lcm envelope -/

/-- The unsigned lcm envelope obtained after expanding the square of the
active divisor count. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variante8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightSecondMoment/Variante8bf132ede53fb3a895798fb14e500c48b7924ee4740c28c86d0933687b59840.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30bda2dfd0cd32d832ef0f8052b1c0fa2dbd1188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
