# pow_eq_sum_stirlingSecond_mul_descFactorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:004b91a2-1ede-3aee-5ff5-c19431569bab",
  "kind": "theorem",
  "lexical_name": "pow_eq_sum_stirlingSecond_mul_descFactorial",
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
  "slug": "pow-eq-sum-stirlingsecond-mul-descfactorial--f8a096f2912e34b4c804c04d",
  "source": {
    "blob": "3c50b837025089333914bcbe2294c9dcb66b7238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 188,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8a096f2912e34b4c804c04d01dbded43238772d85828d51e19d6bf8a0d1ba88",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:004b91a2-1ede-3aee-5ff5-c19431569bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_eq_sum_stirlingSecond_mul_descFactorial (n k : ℕ) :
    n ^ k = ∑ j ∈ Finset.range (k + 1), stirlingSecond k j * n.descFactorial j := by
  induction k with
  | zero => simp
  | succ k ih =>
    have : ∑ j ∈ Finset.range (k + 1), stirlingSecond k j * (j * n.descFactorial j)
        = ∑ j ∈ Finset.range (k + 1),
            (j + 1) * (stirlingSecond k (j + 1) * n.descFactorial (j + 1)) := by
      rw [Finset.sum_range_succ' (fun j ↦ stirlingSecond k j * (j * n.descFactorial j)) k,
        Finset.sum_range_succ (fun j ↦ (j + 1) * (stirlingSecond k (j + 1) *
          n.descFactorial (j + 1))) k,
        stirlingSecond_eq_zero_of_lt k.lt_add_one]
      simp [mul_left_comm]
    rw [pow_succ, ih, Finset.sum_mul,
      Finset.sum_range_succ' (fun j ↦ stirlingSecond (k + 1) j * n.descFactorial j) (k + 1)]
    simp only [mul_assoc, descFactorial_mul_self, mul_add, Finset.sum_add_distrib, this,
      stirlingSecond_succ_succ, add_mul, stirlingSecond_succ_zero, zero_mul, add_zero]
    exact add_comm _ _

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c50b837025089333914bcbe2294c9dcb66b7238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
