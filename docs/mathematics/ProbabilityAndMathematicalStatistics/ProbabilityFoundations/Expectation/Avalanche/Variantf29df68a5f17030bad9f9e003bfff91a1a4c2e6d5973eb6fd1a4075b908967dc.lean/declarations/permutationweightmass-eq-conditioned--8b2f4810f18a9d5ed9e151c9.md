# permutationWeightMass_eq_conditioned

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c38b8f794c2018a4bc6c55e3fb5214c32de20cd4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 867,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f29df68a5f17030bad9f9e003bfff91a1a4c2e6d5973eb6fd1a4075b908967dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:098f046f-df19-c5bb-b158-eea613173d08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:966e1fcb-801a-b178-69bd-7cfaea460e01",
  "kind": "theorem",
  "lexical_name": "permutationWeightMass_eq_conditioned",
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
  "slug": "permutationweightmass-eq-conditioned--8b2f4810f18a9d5ed9e151c9",
  "source": {
    "blob": "c38b8f794c2018a4bc6c55e3fb5214c32de20cd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 881,
    "line": 867,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantf29df68a5f17030bad9f9e003bfff91a1a4c2e6d5973eb6fd1a4075b908967dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b2f4810f18a9d5ed9e151c9de768e48c52af25b9cf020289e357a7e4f66b030",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantf29df68a5f17030bad9f9e003bfff91a1a4c2e6d5973eb6fd1a4075b908967dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:966e1fcb-801a-b178-69bd-7cfaea460e01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 867–881.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem permutationWeightMass_eq_conditioned {n k : Nat}
    (hn : 0 < n) (hk : 0 < k) :
    permutationWeightMass n k =
      functionWeightMass n k / (1 - functionWeightMass n 0) := by
  have hn0 : n ≠ 0 := Nat.ne_of_gt hn
  have hk0 : k ≠ 0 := Nat.ne_of_gt hk
  have hpow : (2 ^ n : ℚ) ≠ 0 := by positivity
  have hden : (2 ^ n : ℚ) - 1 ≠ 0 := by
    exact (sub_pos.mpr (by exact_mod_cast Nat.one_lt_two_pow hn0)).ne'
  simp only [permutationWeightMass, functionWeightMass, if_neg hk0,
    if_neg hn0, Nat.choose_zero_right]
  field_simp [hpow, hden]
  norm_num

/-- Fixed-coordinate flip marginal under the random-permutation baseline. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantf29df68a5f17030bad9f9e003bfff91a1a4c2e6d5973eb6fd1a4075b908967dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantf29df68a5f17030bad9f9e003bfff91a1a4c2e6d5973eb6fd1a4075b908967dc.lean#L867).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c38b8f794c2018a4bc6c55e3fb5214c32de20cd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
