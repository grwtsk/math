# pairingIn_le_zero_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3eab96f2-a03c-9263-0d54-14fd0077d005",
  "kind": "lemma",
  "lexical_name": "pairingIn_le_zero_of_ne",
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
  "slug": "pairingin-le-zero-of-ne--876f47348326eab3fa825d94",
  "source": {
    "blob": "03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 404,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:876f47348326eab3fa825d94acb260bcd2962fb6a170eca6c06e82e71b1b8194",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eab96f2-a03c-9263-0d54-14fd0077d005`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairingIn_le_zero_of_ne :
    P.pairingIn ℤ i j ≤ 0 := by
  by_contra! h
  exact b.sub_notMem_range_root hi hj <| P.root_sub_root_mem_of_pairingIn_pos h hij

/-- This is Lemma 2.5 (a) from [Geck](Geck2017). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
