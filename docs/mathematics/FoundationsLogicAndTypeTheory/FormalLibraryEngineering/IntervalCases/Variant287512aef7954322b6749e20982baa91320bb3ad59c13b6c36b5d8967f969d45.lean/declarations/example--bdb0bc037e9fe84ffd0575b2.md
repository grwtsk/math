# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88ac6c01ddd3a9af56efc570c154de76511bc9da7c934113ccd1fc97beb673a2",
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
  "slug": "example--bdb0bc037e9fe84ffd0575b2",
  "source": {
    "blob": "470536b0c87c89399ce77aacbffd2301d4fb5b47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant287512aef7954322b6749e20982baa91320bb3ad59c13b6c36b5d8967f969d45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdb0bc037e9fe84ffd0575b2eb0b53763725157c37e88c18dc08219c88463fb8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant287512aef7954322b6749e20982baa91320bb3ad59c13b6c36b5d8967f969d45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88ac6c01ddd3a9af56efc570c154de76511bc9da7c934113ccd1fc97beb673a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–121.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant287512aef7954322b6749e20982baa91320bb3ad59c13b6c36b5d8967f969d45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant287512aef7954322b6749e20982baa91320bb3ad59c13b6c36b5d8967f969d45.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `470536b0c87c89399ce77aacbffd2301d4fb5b47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
