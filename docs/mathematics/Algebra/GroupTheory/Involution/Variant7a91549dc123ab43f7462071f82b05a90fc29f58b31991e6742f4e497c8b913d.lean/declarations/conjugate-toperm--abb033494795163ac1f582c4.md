# conjugate_toPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c021e92b0b08f436166d06b8731920f65ad8e68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07627644-3513-69d3-0214-ed2e7f9d5a9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2da9d10-97f4-abea-84f8-9a73fa2cd1e7",
  "kind": "theorem",
  "lexical_name": "conjugate_toPerm",
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
  "slug": "conjugate-toperm--abb033494795163ac1f582c4",
  "source": {
    "blob": "2c021e92b0b08f436166d06b8731920f65ad8e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 164,
    "path": "GRWTSK/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abb033494795163ac1f582c4e75fbbf0cd95c3c52697b7a79d8f5db964514f22",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2da9d10-97f4-abea-84f8-9a73fa2cd1e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conjugate_toPerm (g : Equiv.Perm X) (ι : CertifiedInvolution X) :
    (ι.conjugate g).toPerm = FinitePermutationDynamics.conjugate g ι.toPerm := by
  ext x
  rfl

/-- Transport a certified involution to an equivalent finite carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c021e92b0b08f436166d06b8731920f65ad8e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
