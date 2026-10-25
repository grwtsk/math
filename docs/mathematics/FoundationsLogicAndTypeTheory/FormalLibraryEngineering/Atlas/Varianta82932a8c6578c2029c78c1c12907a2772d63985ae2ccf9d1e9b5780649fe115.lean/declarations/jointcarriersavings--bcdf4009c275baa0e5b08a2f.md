# jointCarrierSavings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fd65099cd238824a117aa68b938a66a8dcd91239f03a0393c49223ad9da4273",
  "kind": "def",
  "lexical_name": "jointCarrierSavings",
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
  "slug": "jointcarriersavings--bcdf4009c275baa0e5b08a2f",
  "source": {
    "blob": "988fd595fd2c2eac7d2e55e18f9af2e41c9516ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Varianta82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcdf4009c275baa0e5b08a2fed77698cd3efa4838899b68c9521f0187a12fdec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Varianta82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fd65099cd238824a117aa68b938a66a8dcd91239f03a0393c49223ad9da4273`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def jointCarrierSavings (cl : ClosureOperator (Finset α))
    (candidates atlas first second : Finset α) : Option ℕ :=
  match rank cl candidates atlas first, rank cl candidates atlas second,
      rank cl candidates atlas (first ∪ second) with
  | some leftRank, some rightRank, some jointRank =>
    if jointRank ≤ leftRank + rightRank then some (leftRank + rightRank - jointRank) else none
  | _, _, _ => none

/-- Joint carrier savings are an exact nonnegative reduction, conditional on defined ranks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Varianta82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Varianta82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `988fd595fd2c2eac7d2e55e18f9af2e41c9516ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
