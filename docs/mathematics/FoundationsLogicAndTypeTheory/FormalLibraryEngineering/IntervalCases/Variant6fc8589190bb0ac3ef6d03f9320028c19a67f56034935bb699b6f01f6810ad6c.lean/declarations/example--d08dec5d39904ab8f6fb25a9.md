# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a029bc99e11ad633deba66443c6ed376c95f920b966e02cac2f86d571bf1cd97",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--d08dec5d39904ab8f6fb25a9",
  "source": {
    "blob": "ef7a8d848b8fde1fc3917afb2d1419cf9708567c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant6fc8589190bb0ac3ef6d03f9320028c19a67f56034935bb699b6f01f6810ad6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d08dec5d39904ab8f6fb25a91c1f6cbd85038f609b431a69ccebef69d4f4a40f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant6fc8589190bb0ac3ef6d03f9320028c19a67f56034935bb699b6f01f6810ad6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a029bc99e11ad633deba66443c6ed376c95f920b966e02cac2f86d571bf1cd97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (n : ℕ) (h1 : 4 ≤ n) (h2 : n < 10) : n < 20 := by
  interval_cases using h1, h2
  all_goals { norm_num }

-- example (n : ℕ+) (w₂ : n < 1) : False := by interval_cases n

-- example (n : ℕ+) (w₂ : n < 2) : n = 1 := by interval_cases n

-- example (n : ℕ+) (h1 : 4 ≤ n) (h2 : n < 5) : n = 4 := by interval_cases n

-- example (n : ℕ+) (w₁ : 2 < n) (w₂ : 4 ≥ n) : n = 3 ∨ n = 4 := by
--   interval_cases n,
--   { guard_target' (3 : ℕ+) = 3 ∨ (3 : ℕ+) = 4, left; rfl },
--   { guard_target' (4 : ℕ+) = 3 ∨ (4 : ℕ+) = 4, right; rfl },

-- example (n : ℕ+) (w₁ : 1 < n) (w₂ : n < 4) : n = 2 ∨ n = 3 := by
--   { interval_cases n, { left; rfl }, { right; rfl }, }

-- example (n : ℕ+) (w₂ : n < 3) : n = 1 ∨ n = 2 := by
--   { interval_cases n, { left; rfl }, { right; rfl }, }

-- example (n : ℕ+) (w₂ : n < 4) : n = 1 ∨ n = 2 ∨ n = 3 := by
--   { interval_cases n, { left; rfl }, { right, left; rfl }, { right, right; rfl }, }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant6fc8589190bb0ac3ef6d03f9320028c19a67f56034935bb699b6f01f6810ad6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant6fc8589190bb0ac3ef6d03f9320028c19a67f56034935bb699b6f01f6810ad6c.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef7a8d848b8fde1fc3917afb2d1419cf9708567c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
