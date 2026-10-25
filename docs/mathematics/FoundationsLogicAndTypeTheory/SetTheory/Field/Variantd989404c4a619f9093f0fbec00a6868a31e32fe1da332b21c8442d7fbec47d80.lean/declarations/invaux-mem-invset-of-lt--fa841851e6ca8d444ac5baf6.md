# invAux_mem_invSet_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08cbffb8-0ae9-45a0-5679-21a6a6e9b02c",
  "kind": "theorem",
  "lexical_name": "invAux_mem_invSet_of_lt",
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
  "slug": "invaux-mem-invset-of-lt--fa841851e6ca8d444ac5baf6",
  "source": {
    "blob": "533ffd0fea7755c69c198c4f4679425591c40778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 308,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa841851e6ca8d444ac5baf679a3c816992d7ed3d60a781f507d6df5f77236fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08cbffb8-0ae9-45a0-5679-21a6a6e9b02c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invAux_mem_invSet_of_lt (ha : a ≠ 0) (hb : a < b) : invAux a ∈ invSet b := by
  have H := cons_mem_invSet ha hb (zero_mem_invSet b)
  rwa [mul_zero, add_zero, mul_one] at H

/-- We set up a simultaneous induction to prove that `invAux a` is the inverse of `a`, and no
element in its defining set `invSet a` is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `533ffd0fea7755c69c198c4f4679425591c40778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
