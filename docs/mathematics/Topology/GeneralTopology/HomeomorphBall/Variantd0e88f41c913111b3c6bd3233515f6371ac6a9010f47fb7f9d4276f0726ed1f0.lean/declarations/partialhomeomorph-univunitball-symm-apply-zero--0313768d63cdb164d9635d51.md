# PartialHomeomorph.univUnitBall_symm_apply_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a4272033b17ee49be323cf428398394841c55fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd63e73b-5e3e-bbd1-4f91-ba15ef078314",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4595b50e-85b9-55db-fdae-56b0b285c9e8",
  "kind": "theorem",
  "lexical_name": "PartialHomeomorph.univUnitBall_symm_apply_zero",
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
  "slug": "partialhomeomorph-univunitball-symm-apply-zero--0313768d63cdb164d9635d51",
  "source": {
    "blob": "9a4272033b17ee49be323cf428398394841c55fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0313768d63cdb164d9635d5199b3482a6662ac4ff715cdfd4a4eb33b58ae13e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4595b50e-85b9-55db-fdae-56b0b285c9e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PartialHomeomorph.univUnitBall_symm_apply_zero : univUnitBall.symm (0 : E) = 0 := by
  simp [PartialHomeomorph.univUnitBall_symm_apply]

/-- A (semi) normed real vector space is homeomorphic to the unit ball in the same space.
This homeomorphism sends `x : E` to `(1 + ‖x‖²)^(- ½) • x`.

In many cases the actual implementation is not important, so we don't mark the projection lemmas
`Homeomorph.unitBall_apply_coe` and `Homeomorph.unitBall_symm_apply` as `@[simp]`.

See also `Homeomorph.contDiff_unitBall` and `PartialHomeomorph.contDiffOn_unitBall_symm`
for smoothness properties that hold when `E` is an inner-product space. -/
@[simps! -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a4272033b17ee49be323cf428398394841c55fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
