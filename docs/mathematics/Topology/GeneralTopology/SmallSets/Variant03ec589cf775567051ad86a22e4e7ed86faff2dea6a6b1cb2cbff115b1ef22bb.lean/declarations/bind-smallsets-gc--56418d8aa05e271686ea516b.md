# bind_smallSets_gc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86b9344a-f9fe-59e8-3c2b-4c377352b515",
  "kind": "theorem",
  "lexical_name": "bind_smallSets_gc",
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
  "slug": "bind-smallsets-gc--56418d8aa05e271686ea516b",
  "source": {
    "blob": "e09332bf9b057f4d22220f29aaca1f0ff61ca2b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56418d8aa05e271686ea516b48c103425bda5f90544de0fa072f5718f401a19e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86b9344a-f9fe-59e8-3c2b-4c377352b515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bind_smallSets_gc :
    GaloisConnection (fun L : Filter (Set α) ↦ L.bind principal) smallSets := by
  intro L l
  simp_rw [smallSets_eq_generate, le_generate_iff, image_subset_iff]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09332bf9b057f4d22220f29aaca1f0ff61ca2b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
