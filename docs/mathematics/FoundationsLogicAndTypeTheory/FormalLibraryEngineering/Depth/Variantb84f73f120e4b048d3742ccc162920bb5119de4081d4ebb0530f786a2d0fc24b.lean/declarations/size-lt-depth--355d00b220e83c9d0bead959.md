# size_lt_depth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da5769f9-d9d5-3461-5830-df93d9a01463",
  "kind": "theorem",
  "lexical_name": "size_lt_depth",
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
  "slug": "size-lt-depth--355d00b220e83c9d0bead959",
  "source": {
    "blob": "49acf54cc1693425e31abffa69aa52677a6d0017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:355d00b220e83c9d0bead959737a264a3d841cfeb50a58519f892a6478b6547c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da5769f9-d9d5-3461-5830-df93d9a01463`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem size_lt_depth : ∀ t : RBNode α, t.size < 2 ^ t.depth
  | .nil => (by decide : 0 < 1)
  | .node _ a _ b => by
    rw [size, depth, Nat.add_right_comm, Nat.pow_succ, Nat.mul_two]
    refine Nat.add_le_add
      (Nat.lt_of_lt_of_le a.size_lt_depth ?_) (Nat.lt_of_lt_of_le b.size_lt_depth ?_)
    · exact Nat.pow_le_pow_right (by decide) (Nat.le_max_left ..)
    · exact Nat.pow_le_pow_right (by decide) (Nat.le_max_right ..)

/--
`depthLB c n` is the best upper bound on the depth of any balanced red-black tree
with root colored `c` and black-height `n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49acf54cc1693425e31abffa69aa52677a6d0017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
