# finite_entry_matches_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "105673657fa98ef916163b9ebcf82c6b86211f43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 303,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificateCorrespondence/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dda2e7d-b9aa-1be9-ffbc-fe8cb46c8b73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:324fad0d-ca4e-cd11-36cb-4fdccf9bf83a",
  "kind": "theorem",
  "lexical_name": "finite_entry_matches_iff",
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
  "slug": "finite-entry-matches-iff--e6d93ef929380ac1a5c4382a",
  "source": {
    "blob": "105673657fa98ef916163b9ebcf82c6b86211f43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 303,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant810681e6d5ac40eee7780224a9a837de464ff3e0a7a748a30bc299ac39ecfb56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6d93ef929380ac1a5c4382aa227a49e1c90faaff25526a333b9dc84441d8480",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant810681e6d5ac40eee7780224a9a837de464ff3e0a7a748a30bc299ac39ecfb56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:324fad0d-ca4e-cd11-36cb-4fdccf9bf83a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_entry_matches_iff {input : Frozen} {binding : Binding} {entry : RustOccurrence}
    (admitted : InputAdmission input) :
    FiniteEntryMatches input binding entry ↔ EntryMatches input binding entry := by
  refine ⟨finite_entry_matches_to_entry admitted, ?_⟩
  intro matched
  obtain ⟨set, selected, root⟩ := matched.1
  have found := entry_slot_exact matched
  simp only [sourceSlot, selected] at found
  have member := slot_member_of_lookup found
  refine ⟨⟨set, selected, root, ?_⟩, matched.2.1, matched.2.2.1, matched.2.2.2.1,
    entry_origin_exact matched⟩
  simpa [matched.2.1] using member

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant810681e6d5ac40eee7780224a9a837de464ff3e0a7a748a30bc299ac39ecfb56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant810681e6d5ac40eee7780224a9a837de464ff3e0a7a748a30bc299ac39ecfb56.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `105673657fa98ef916163b9ebcf82c6b86211f43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
