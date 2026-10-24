# RelCWComplex.openCell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a99c27d6381771bc36a224135a4442d4129855d367b42874fb0aecdfc4fcc02e",
  "kind": "def",
  "lexical_name": "RelCWComplex.openCell",
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
  "slug": "relcwcomplex-opencell--3786b6133ef01d57d66fba98",
  "source": {
    "blob": "b8480283b94195d8efa20abab52263d7ad3af899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 201,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd0c72dd36aa605212c1396d4de7b833e8f6da5afd7d299fe0f3d0a13020585a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3786b6133ef01d57d66fba98567b93c3c04fceaacf87459198642b08da97441e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd0c72dd36aa605212c1396d4de7b833e8f6da5afd7d299fe0f3d0a13020585a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a99c27d6381771bc36a224135a4442d4129855d367b42874fb0aecdfc4fcc02e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RelCWComplex.openCell [RelCWComplex C D] (n : ℕ) (i : cell C n) : Set X := map n i '' ball 0 1

/-- The closed `n`-cell given by the index `i`. Use this instead of `map n i '' closedBall 0 1`
whenever possible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd0c72dd36aa605212c1396d4de7b833e8f6da5afd7d299fe0f3d0a13020585a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd0c72dd36aa605212c1396d4de7b833e8f6da5afd7d299fe0f3d0a13020585a2.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8480283b94195d8efa20abab52263d7ad3af899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
