# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93de53a455304e73026fc9dc3c8e06446769a49dc814633bb183f69a9c25da0a",
  "kind": "instance",
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
  "slug": "instance--9fec2ed478dfd1fc6e835792",
  "source": {
    "blob": "e2888288cd6b3c863dea49c6f454c696e745b8e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/SigmaCompact/Variant1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fec2ed478dfd1fc6e835792a34d2b52ce51d65cd91dbbf87b0cd1be80c47c6b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SigmaCompact/Variant1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93de53a455304e73026fc9dc3c8e06446769a49dc814633bb183f69a9c25da0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) sigmaCompactSpace_of_locallyCompact_secondCountable
    [LocallyCompactSpace X] [SecondCountableTopology X] : SigmaCompactSpace X := by
  choose K hKc hxK using fun x : X => exists_compact_mem_nhds x
  rcases countable_cover_nhds hxK with ⟨s, hsc, hsU⟩
  refine SigmaCompactSpace.of_countable _ (hsc.image K) (forall_mem_image.2 fun x _ => hKc x) ?_
  rwa [sUnion_image]

-- The `alias` command creates a definition, triggering the defLemma linter.
@[nolint defLemma, deprecated (since := "2024-11-13")]
alias sigmaCompactSpace_of_locally_compact_second_countable :=
  sigmaCompactSpace_of_locallyCompact_secondCountable

section

variable (X)
variable [SigmaCompactSpace X]

open SigmaCompactSpace

/-- A choice of compact covering for a `σ`-compact space, chosen to be monotone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SigmaCompact/Variant1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SigmaCompact/Variant1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2888288cd6b3c863dea49c6f454c696e745b8e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
