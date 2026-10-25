# rank_extension_defined

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "988fd595fd2c2eac7d2e55e18f9af2e41c9516ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:155ad98a-a137-b9d6-9b8c-e3041c29c81a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab156828-0fba-a50e-573b-3de8271f4c48",
  "kind": "theorem",
  "lexical_name": "rank_extension_defined",
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
  "slug": "rank-extension-defined--6d3dbb21f1dc78a9d256a201",
  "source": {
    "blob": "988fd595fd2c2eac7d2e55e18f9af2e41c9516ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Varianta82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d3dbb21f1dc78a9d256a20150116be74e3ae9b36b751f7c18c18f3dbb65821a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Varianta82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab156828-0fba-a50e-573b-3de8271f4c48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_extension_defined {cl : ClosureOperator (Finset α)}
    {candidates atlas larger targets : Finset α} {before : ℕ}
    (hsub : atlas ⊆ larger) (hbefore : rank cl candidates atlas targets = some before) :
    ∃ after, rank cl candidates larger targets = some after ∧ after ≤ before := by
  obtain ⟨carriers, hcarrier, hsuff, hcard⟩ := rank_attained hbefore
  have hsuff' := sufficient_of_atlas_subset hsub hsuff
  obtain ⟨after, hafter⟩ := rank_defined_of_sufficient hcarrier hsuff'
  refine ⟨after, hafter, ?_⟩
  simpa [hcard] using rank_le_card hafter hcarrier hsuff'

/-- Structural burden is antitone whenever both minima use the same finite carrier universe. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Varianta82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Varianta82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `988fd595fd2c2eac7d2e55e18f9af2e41c9516ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
