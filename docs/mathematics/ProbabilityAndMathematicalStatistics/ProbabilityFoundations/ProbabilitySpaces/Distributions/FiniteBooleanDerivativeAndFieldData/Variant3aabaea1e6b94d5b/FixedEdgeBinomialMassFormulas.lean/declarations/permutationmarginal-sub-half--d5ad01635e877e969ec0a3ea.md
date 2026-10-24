# permutationMarginal_sub_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea8f4e49-2b25-ea72-e931-4ba25b1792ba",
  "kind": "theorem",
  "lexical_name": "permutationMarginal_sub_half",
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
  "slug": "permutationmarginal-sub-half--d5ad01635e877e969ec0a3ea",
  "source": {
    "blob": "27e377c0a3a51daf545c16b3566116a6810d9324",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 146,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5ad01635e877e969ec0a3eaaec5299d02b7f92af87ab314f6b1ec15081e0bf3",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea8f4e49-2b25-ea72-e931-4ba25b1792ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem permutationMarginal_sub_half {n : Nat} (hn : 0 < n) :
    permutationMarginal n - 1 / 2 =
      1 / (2 * (2 ^ n - 1)) := by
  have hn0 : n ≠ 0 := Nat.ne_of_gt hn
  have hpow : (2 ^ n : ℚ) = 2 * 2 ^ (n - 1) := by
    have hnEq : n - 1 + 1 = n :=
      Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.mpr hn0)
    conv_lhs => rw [← hnEq, pow_succ]
    ring
  have hden : (2 ^ n : ℚ) - 1 ≠ 0 := by
    exact (sub_pos.mpr (by exact_mod_cast Nat.one_lt_two_pow hn0)).ne'
  simp only [permutationMarginal, if_neg hn0]
  field_simp [hden]
  rw [hpow]
  ring


end BitMatrix.Dynamics.Avalanche
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27e377c0a3a51daf545c16b3566116a6810d9324` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
