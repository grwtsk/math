# pairInteraction_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1a65f90fed2341c078b2ebb9a7f79241b88c0239",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5570db84-03b0-dd5f-4730-1a5836cdb362",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b73f43b-8ca8-3fc7-db2b-7728055a693f",
  "kind": "theorem",
  "lexical_name": "pairInteraction_symmetric",
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
  "slug": "pairinteraction-symmetric--925756e5c5bd390f3aca0b3c",
  "source": {
    "blob": "1a65f90fed2341c078b2ebb9a7f79241b88c0239",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PlaceInteraction/Variant1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:925756e5c5bd390f3aca0b3c37cc19fa53c579169bfacc83dcd42d62ec923bdd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PlaceInteraction/Variant1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b73f43b-8ca8-3fc7-db2b-7728055a693f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairInteraction_symmetric
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    pairInteraction capacity cut first second =
      pairInteraction capacity cut second first := by
  have terminal_cuts_equal :
      insert first (insert second cut) =
        insert second (insert first cut) := by
    ext prime
    simp [or_left_comm]
  funext coordinate
  simp only [pairInteraction, Pi.add_apply, Pi.sub_apply]
  rw [terminal_cuts_equal]
  ring

end Mathematics.SemiLocalDefect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PlaceInteraction/Variant1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PlaceInteraction/Variant1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a65f90fed2341c078b2ebb9a7f79241b88c0239` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
