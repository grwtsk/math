# fastGrowingε₀_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d332225fdc11aed6ef487342848c15bedf4c12e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:080d8c35-7f5d-8333-a538-b666be66d482",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b44f3ab-1d00-88ff-e1e7-b4c777959940",
  "kind": "theorem",
  "lexical_name": "fastGrowingε₀_two",
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
  "slug": "fastgrowing-two--e66fe197475b7c0322a480cc",
  "source": {
    "blob": "3d332225fdc11aed6ef487342848c15bedf4c12e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1128,
    "line": 1118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e66fe197475b7c0322a480cc5bc9e1c3396d4ab53073ed09733c0b3500571ab5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b44f3ab-1d00-88ff-e1e7-b4c777959940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1118–1128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fastGrowingε₀_two : fastGrowingε₀ 2 = 2048 := by
  norm_num [fastGrowingε₀, show oadd 0 1 0 = 1 from rfl, @fastGrowing_limit (oadd 1 1 0) _ rfl,
    show oadd 0 (2 : Nat).succPNat 0 = 3 from rfl, @fastGrowing_succ 3 2 rfl]

end ONote

/-- The type of normal ordinal notations.

It would have been nicer to define this right in the inductive type, but `NF o` requires `repr`
which requires `ONote`, so all these things would have to be defined at once, which messes up the VM
representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean#L1118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d332225fdc11aed6ef487342848c15bedf4c12e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
