# supported_ratio_sum_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6141837b-577c-1ba9-badd-1a05c1bf29e7",
  "kind": "theorem",
  "lexical_name": "supported_ratio_sum_abs_le",
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
  "slug": "supported-ratio-sum-abs-le--5a7a35b98431cc528edba3e8",
  "source": {
    "blob": "76e41e90eeab38989cbde6fa04c08eb9e163ca5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 104,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a7a35b98431cc528edba3e8145849d21e7d664100fb55283032b6b39160840e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6141837b-577c-1ba9-badd-1a05c1bf29e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supported_ratio_sum_abs_le (A : ℝ) (P : Finset ℕ)
    (hA : 1 ≤ A) (hP : ∀ p ∈ P, Nat.Prime p) :
    |∑ p ∈ supportedPairs P, ratioClassContribution A p.1 p.2| ≤
      kernelBound A * (1 + A) * ∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ)) := by
  calc
    _ ≤ ∑ p ∈ supportedPairs P, |ratioClassContribution A p.1 p.2| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ p ∈ supportedPairs P,
        kernelBound A * (1 + A) / Real.sqrt ((p.1 * p.2 : ℕ) : ℝ) := by
      apply sum_le_sum
      intro p hp
      have hs := (mem_supportedPairs_iff P hP p.1 p.2).mp hp
      exact ratioClass_abs_le A p.1 p.2 hA
        (Nat.one_le_iff_ne_zero.mpr hs.1.ne_zero)
        (Nat.one_le_iff_ne_zero.mpr hs.2.1.ne_zero)
    _ = kernelBound A * (1 + A) *
        ∑ p ∈ supportedPairs P, 1 / Real.sqrt ((p.1 * p.2 : ℕ) : ℝ) := by
      rw [mul_sum]
      apply sum_congr rfl
      intro p _
      ring
    _ = _ := by rw [supportedPairs_weight_sum P hP]

end
end RatioClassBudgetScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76e41e90eeab38989cbde6fa04c08eb9e163ca5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
