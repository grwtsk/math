# one_le_m_coe

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
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8e1c9be-9474-7a98-0bee-36bb39a98b73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c502e06-6665-a713-c84f-d4c183cdf5d4",
  "kind": "theorem",
  "lexical_name": "one_le_m_coe",
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
  "slug": "one-le-m-coe--cbd71a561b4d2276e12b0407",
  "source": {
    "blob": "7ce16573f6aba4ab33e620dcc7c54471938c0bed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbd71a561b4d2276e12b0407803b7da59ef28f9f2b594940c47e2e104dc432ac",
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

Occurrence: `result:5c502e06-6665-a713-c84f-d4c183cdf5d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_le_m_coe [Nonempty α] (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α) : (1 : ℝ) ≤ m :=
  Nat.one_le_cast.2 <| m_pos hPα
#align szemeredi_regularity.one_le_m_coe SzemerediRegularity.one_le_m_coe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce16573f6aba4ab33e620dcc7c54471938c0bed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
