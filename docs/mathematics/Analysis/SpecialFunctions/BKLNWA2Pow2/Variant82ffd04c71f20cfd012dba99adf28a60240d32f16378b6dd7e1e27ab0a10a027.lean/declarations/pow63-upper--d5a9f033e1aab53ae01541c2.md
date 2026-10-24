# pow63_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3644704fb67040868ad143c4bd4b79babb8d761e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:435321a0-29c9-7870-887d-f0a9a2bcb6c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:625b2693-33da-47fb-cec8-339f4a3c3fff",
  "kind": "theorem",
  "lexical_name": "pow63_upper",
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
  "slug": "pow63-upper--d5a9f033e1aab53ae01541c2",
  "source": {
    "blob": "3644704fb67040868ad143c4bd4b79babb8d761e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 88,
    "path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5a9f033e1aab53ae01541c2b364314cc2c9be2912a64bd7e6f79435ed72ccce",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:625b2693-33da-47fb-cec8-339f4a3c3fff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow63_upper :
    (1 + 193571378 / (10:ℝ)^16) * f ((2:ℝ)^(63:ℕ)) ≤ (1.03252 : ℝ) + (1:ℝ) / 10^5 := by
  unfold f
  rw [show ⌊log ((2:ℝ)^(63:ℕ)) / log 2⌋₊ = 63 from floor_log_two_pow 63]
  finsum_expand
  simp only [Nat.cast_ofNat, two_pow_eq_exp_log, ← exp_mul]
  norm_num
  interval_decide 98

/-! ### Large-N 2^M certificates (sorry'd interface)

These are verified via reflective interval arithmetic in `BKLNW_a2_reflective.lean`
(see `pow145_upper` etc.), which uses `native_decide` with
`Engine.checkBKLNWAlphaPowUpperBound`. Sorry'd here to keep compilation fast
(same pattern as the exp bounds in `BKLNW_a2_bounds.lean`). -/

-- 2^145 (for b=100)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant82ffd04c71f20cfd012dba99adf28a60240d32f16378b6dd7e1e27ab0a10a027.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3644704fb67040868ad143c4bd4b79babb8d761e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
