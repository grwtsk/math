# or_congr_right'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad2cf618637cac4ef0c5ea4cd232d7d642d41705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 398,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82172cfd06c3ab50ae9f7a5474fd02eca47c1c9c2be3c3456a6064791f369fa9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c390e62f-7df1-e320-9903-dda528efaf44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de3e1744-5a69-30f9-b80f-e2fadc04ede4",
  "kind": "theorem",
  "lexical_name": "or_congr_right'",
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
  "slug": "or-congr-right--3d43eb8ae11c70d8559786fa",
  "source": {
    "blob": "ad2cf618637cac4ef0c5ea4cd232d7d642d41705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 398,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant82172cfd06c3ab50ae9f7a5474fd02eca47c1c9c2be3c3456a6064791f369fa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d43eb8ae11c70d8559786fad58da7113b0e7f226a5eda5cb7bc80e1c23c8dc1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant82172cfd06c3ab50ae9f7a5474fd02eca47c1c9c2be3c3456a6064791f369fa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de3e1744-5a69-30f9-b80f-e2fadc04ede4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem or_congr_right' (h : ¬a → (b ↔ c)) : a ∨ b ↔ a ∨ c := Decidable.or_congr_right' h
#align or_congr_right or_congr_right'ₓ -- reorder implicits

#align or_iff_left or_iff_leftₓ -- reorder implicits

/-! ### Declarations about distributivity -/

#align and_or_distrib_left and_or_left
#align or_and_distrib_right or_and_right
#align or_and_distrib_left or_and_left
#align and_or_distrib_right and_or_right

/-! Declarations about `iff` -/

alias Iff.iff := iff_congr
#align iff.iff Iff.iff

-- @[simp] -- FIXME simp ignores proof rewrites
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant82172cfd06c3ab50ae9f7a5474fd02eca47c1c9c2be3c3456a6064791f369fa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant82172cfd06c3ab50ae9f7a5474fd02eca47c1c9c2be3c3456a6064791f369fa9.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad2cf618637cac4ef0c5ea4cd232d7d642d41705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
