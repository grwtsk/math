# frozenScope_subset_universe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75fa4d84-2b09-f697-672b-b296f43efb52",
  "kind": "theorem",
  "lexical_name": "frozenScope_subset_universe",
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
  "slug": "frozenscope-subset-universe--f0b45de9bd7b50cdffc8bfad",
  "source": {
    "blob": "5ccefab6bacf618fecf4182f542b2367444656c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 201,
    "path": "GRWTSK/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0b45de9bd7b50cdffc8bfad6325140f7072a93922440da327a6d9d336300ba8",
  "verification": {
    "reference": "docs/verification/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75fa4d84-2b09-f697-672b-b296f43efb52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frozenScope_subset_universe (seed : Set State) (expand : Set State →o Set State)
    {U : Set State} (hseed : seed ⊆ U) (hbound : expand U ⊆ U) :
    frozenScope seed expand ⊆ U := frozenScope_le seed expand hseed hbound

/-- A finite declared invariant universe gives a finite frozen obligation set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ccefab6bacf618fecf4182f542b2367444656c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
