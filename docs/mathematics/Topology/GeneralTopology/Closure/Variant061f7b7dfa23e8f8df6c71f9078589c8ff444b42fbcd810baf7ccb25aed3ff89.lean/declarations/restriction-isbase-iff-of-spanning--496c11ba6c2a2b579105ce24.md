# Restriction.isBase_iff_of_spanning

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c9a8e4a241339d966c3d1635358562dffa2de80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 894,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fdad5dc-e811-caa4-979b-e324bb07173e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:093cc273-4eae-1508-946d-49449622562a",
  "kind": "lemma",
  "lexical_name": "Restriction.isBase_iff_of_spanning",
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
  "slug": "restriction-isbase-iff-of-spanning--496c11ba6c2a2b579105ce24",
  "source": {
    "blob": "7c9a8e4a241339d966c3d1635358562dffa2de80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 898,
    "line": 894,
    "path": "GRWTSK/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:496c11ba6c2a2b579105ce244d990f5d6119c9ca057f649658610397408cbdea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:093cc273-4eae-1508-946d-49449622562a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 894–898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Restriction.isBase_iff_of_spanning {N : Matroid α} (hR : N ≤r M) (hN : M.Spanning N.E) :
    N.IsBase B ↔ (M.IsBase B ∧ B ⊆ N.E) := by
  obtain ⟨R, hR : R ⊆ M.E, rfl⟩ := hR
  rw [Spanning.isBase_restrict_iff (show M.Spanning R from hN), restrict_ground_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean#L894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c9a8e4a241339d966c3d1635358562dffa2de80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
