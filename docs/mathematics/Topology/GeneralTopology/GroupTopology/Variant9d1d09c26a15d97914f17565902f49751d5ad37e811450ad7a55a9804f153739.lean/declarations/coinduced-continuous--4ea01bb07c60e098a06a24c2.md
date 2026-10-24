# coinduced_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0932e97241dfa6e970f31cb107d7530b24d1d26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d1d09c26a15d97914f17565902f49751d5ad37e811450ad7a55a9804f153739.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3a8e510-46e5-ca64-4226-6dec94e86cfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:100a2f24-98a7-67d9-ec3c-c613ce9d582f",
  "kind": "theorem",
  "lexical_name": "coinduced_continuous",
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
  "slug": "coinduced-continuous--4ea01bb07c60e098a06a24c2",
  "source": {
    "blob": "a0932e97241dfa6e970f31cb107d7530b24d1d26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 190,
    "path": "GRWTSK/Topology/GeneralTopology/GroupTopology/Variant9d1d09c26a15d97914f17565902f49751d5ad37e811450ad7a55a9804f153739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ea01bb07c60e098a06a24c2860b8960069055e47a4a71590a4d516b06d467f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupTopology/Variant9d1d09c26a15d97914f17565902f49751d5ad37e811450ad7a55a9804f153739.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:100a2f24-98a7-67d9-ec3c-c613ce9d582f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coinduced_continuous {α β : Type*} [t : TopologicalSpace α] [Group β] (f : α → β) :
    Continuous[t, (coinduced f).toTopologicalSpace] f := by
  rw [continuous_sInf_rng]
  rintro _ ⟨t', ht', rfl⟩
  exact continuous_iff_coinduced_le.2 ht'

end GroupTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupTopology/Variant9d1d09c26a15d97914f17565902f49751d5ad37e811450ad7a55a9804f153739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupTopology/Variant9d1d09c26a15d97914f17565902f49751d5ad37e811450ad7a55a9804f153739.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0932e97241dfa6e970f31cb107d7530b24d1d26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
