# hundred_lt_pow_initialBound_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ce16573f6aba4ab33e620dcc7c54471938c0bed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:093f9c3b-8930-133d-c5a4-23e0add1e74a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b3a7354-b2c8-960c-3758-6157c53a9366",
  "kind": "theorem",
  "lexical_name": "hundred_lt_pow_initialBound_mul",
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
  "slug": "hundred-lt-pow-initialbound-mul--51dd7541f9d6ec9eb09d8a16",
  "source": {
    "blob": "7ce16573f6aba4ab33e620dcc7c54471938c0bed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 201,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51dd7541f9d6ec9eb09d8a169489767a84098a9a425924daae53032b1d78627d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b3a7354-b2c8-960c-3758-6157c53a9366`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hundred_lt_pow_initialBound_mul {ε : ℝ} (hε : 0 < ε) (l : ℕ) :
    100 < ↑4 ^ initialBound ε l * ε ^ 5 := by
  rw [← rpow_nat_cast 4, ← div_lt_iff (pow_pos hε 5), lt_rpow_iff_log_lt _ zero_lt_four, ←
    div_lt_iff, initialBound, Nat.cast_max, Nat.cast_max]
  · push_cast
    exact lt_max_of_lt_right (lt_max_of_lt_right <| Nat.lt_floor_add_one _)
  · exact log_pos (by norm_num)
  · exact div_pos (by norm_num) (pow_pos hε 5)
#align szemeredi_regularity.hundred_lt_pow_initial_bound_mul SzemerediRegularity.hundred_lt_pow_initialBound_mul

/-- An explicit bound on the size of the equipartition whose existence is given by Szemerédi's
regularity lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce16573f6aba4ab33e620dcc7c54471938c0bed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
