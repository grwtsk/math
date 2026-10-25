# LibrarySearchConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7829b9cd4ea61a5ff8dcdd0249cea61a4eab3d4add3af505142aee2b0003e24a",
  "kind": "structure",
  "lexical_name": "LibrarySearchConfig",
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
  "slug": "librarysearchconfig--65df5012d76482628c90723f",
  "source": {
    "blob": "2cf74f441f09be38b6ccdbb0f9a93688d8a2e2cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1807,
    "line": 1780,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant6a77673e818ee8410267bebc5086e4eddcdf3809d466b6d088963f6e58ee8813.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65df5012d76482628c90723fcef39756ad288ef9c17ea3487d35203267bf09c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant6a77673e818ee8410267bebc5086e4eddcdf3809d466b6d088963f6e58ee8813.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7829b9cd4ea61a5ff8dcdd0249cea61a4eab3d4add3af505142aee2b0003e24a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1780–1807.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LibrarySearchConfig where
  /-- If true, use `grind` as a discharger for subgoals that cannot be closed
  by `solve_by_elim` alone. -/
  grind : Bool := false
  /-- If true, use `try?` as a discharger for subgoals that cannot be closed
  by `solve_by_elim` alone. -/
  try? : Bool := false
  /-- If true (the default), star-indexed lemmas (with overly-general discrimination keys
  like `[*]`) are searched as a fallback when no concrete-keyed lemmas are found.
  Use `-star` to disable this fallback. -/
  star : Bool := true
  /-- If true, collect all successful lemmas instead of stopping at the first complete solution.
  Use `+all` to enable this behavior. -/
  all : Bool := false

/--
Searches environment for definitions or theorems that can solve the goal using `exact`
with conditions resolved by `solve_by_elim`.

The optional `using` clause provides identifiers in the local context that must be
used by `exact?` when closing the goal.  This is most useful if there are multiple
ways to resolve the goal, and one wants to guide which lemma is used.

Use `+grind` to enable `grind` as a fallback discharger for subgoals.
Use `+try?` to enable `try?` as a fallback discharger for subgoals.
Use `-star` to disable fallback to star-indexed lemmas (like `Empty.elim`, `And.left`).
Use `+all` to collect all successful lemmas instead of stopping at the first.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant6a77673e818ee8410267bebc5086e4eddcdf3809d466b6d088963f6e58ee8813.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant6a77673e818ee8410267bebc5086e4eddcdf3809d466b6d088963f6e58ee8813.lean#L1780).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cf74f441f09be38b6ccdbb0f9a93688d8a2e2cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
