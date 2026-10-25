# Ne.ite_ne_right_iff

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
      "line": 1220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82172cfd06c3ab50ae9f7a5474fd02eca47c1c9c2be3c3456a6064791f369fa9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:791e2aff-65af-049f-3c0e-7fc6674b9e80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:883d6b7a-e905-38fe-3acc-5f7dcddd9e17",
  "kind": "theorem",
  "lexical_name": "Ne.ite_ne_right_iff",
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
  "slug": "ne-ite-ne-right-iff--2bd03e986646a3538b00d7db",
  "source": {
    "blob": "ad2cf618637cac4ef0c5ea4cd232d7d642d41705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1226,
    "line": 1220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant82172cfd06c3ab50ae9f7a5474fd02eca47c1c9c2be3c3456a6064791f369fa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bd03e986646a3538b00d7dbd40018de043abb85eb3bd7fd08d2ea7bc998c65e",
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

Occurrence: `result:883d6b7a-e905-38fe-3acc-5f7dcddd9e17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1220–1226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Ne.ite_ne_right_iff (h : a ≠ b) : ite P a b ≠ b ↔ P :=
  Ne.dite_ne_right_iff fun _ ↦ h
#align ne.ite_ne_right_iff Ne.ite_ne_right_iff

variable (P Q a b)

/-- A `dite` whose results do not actually depend on the condition may be reduced to an `ite`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant82172cfd06c3ab50ae9f7a5474fd02eca47c1c9c2be3c3456a6064791f369fa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant82172cfd06c3ab50ae9f7a5474fd02eca47c1c9c2be3c3456a6064791f369fa9.lean#L1220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad2cf618637cac4ef0c5ea4cd232d7d642d41705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
