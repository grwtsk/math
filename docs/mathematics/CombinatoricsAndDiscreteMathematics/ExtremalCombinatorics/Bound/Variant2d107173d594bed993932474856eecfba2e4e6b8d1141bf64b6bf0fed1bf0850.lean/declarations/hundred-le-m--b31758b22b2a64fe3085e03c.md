# hundred_le_m

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
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de525c0e-8adc-4f6c-5e67-ac31fabeca13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83f7c119-397a-f181-cd52-2a5a0d2b727e",
  "kind": "theorem",
  "lexical_name": "hundred_le_m",
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
  "slug": "hundred-le-m--b31758b22b2a64fe3085e03c",
  "source": {
    "blob": "7ce16573f6aba4ab33e620dcc7c54471938c0bed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 141,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b31758b22b2a64fe3085e03c86fe6eb6a1b305d1cc128f6f60b9a04ddb6d8749",
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

Occurrence: `result:83f7c119-397a-f181-cd52-2a5a0d2b727e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hundred_le_m [Nonempty α] (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α)
    (hPε : 100 ≤ (4 : ℝ) ^ P.parts.card * ε ^ 5) (hε : ε ≤ 1) : 100 ≤ m := by
  exact_mod_cast
    (hundred_div_ε_pow_five_le_m hPα hPε).trans'
      (le_div_self (by norm_num) (by sz_positivity) <| pow_le_one _ (by sz_positivity) hε)
#align szemeredi_regularity.hundred_le_m SzemerediRegularity.hundred_le_m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce16573f6aba4ab33e620dcc7c54471938c0bed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
