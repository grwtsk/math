# asIdealOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3180801e702e4324d2df848aaea833ab9957c78e10cbbea78ad51e4c933da7b",
  "kind": "def",
  "lexical_name": "asIdealOpposite",
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
  "slug": "asidealopposite--c84526304f91608ceff4e5f6",
  "source": {
    "blob": "3ee580991f327de065dc02c7a02fa4c3205cbdcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 359,
    "path": "GRWTSK/Algebra/Operations/Variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985dd4a214933b3ec1e41c87d7bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c84526304f91608ceff4e5f63db170a4a42e452a66566e1fe181727b89649493",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985dd4a214933b3ec1e41c87d7bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3180801e702e4324d2df848aaea833ab9957c78e10cbbea78ad51e4c933da7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def asIdealOpposite : TwoSidedIdeal R →o Ideal Rᵐᵒᵖ where
  toFun I := asIdeal ⟨I.ringCon.op⟩
  monotone' I J h x h' := by
    simp only [mem_asIdeal, mem_iff, RingCon.op_iff, MulOpposite.unop_zero] at h' ⊢
    exact J.rel_iff _ _ |>.2 <| h <| I.rel_iff 0 x.unop |>.1 h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985dd4a214933b3ec1e41c87d7bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985dd4a214933b3ec1e41c87d7bb.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ee580991f327de065dc02c7a02fa4c3205cbdcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
