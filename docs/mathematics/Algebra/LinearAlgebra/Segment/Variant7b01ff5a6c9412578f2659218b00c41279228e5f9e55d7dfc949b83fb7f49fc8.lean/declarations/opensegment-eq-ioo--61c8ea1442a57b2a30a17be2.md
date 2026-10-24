# openSegment_eq_Ioo'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:380a778d-507f-85ec-82e9-b5fb2cdf15e5",
  "kind": "theorem",
  "lexical_name": "openSegment_eq_Ioo'",
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
  "slug": "opensegment-eq-ioo--61c8ea1442a57b2a30a17be2",
  "source": {
    "blob": "2c3cd6f15e4a6495ed88f5ade1b22f0864187137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 554,
    "path": "GRWTSK/Algebra/LinearAlgebra/Segment/Variant7b01ff5a6c9412578f2659218b00c41279228e5f9e55d7dfc949b83fb7f49fc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61c8ea1442a57b2a30a17be2b1e837184349f5cb090f3d26598e11ab1de7ff69",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Segment/Variant7b01ff5a6c9412578f2659218b00c41279228e5f9e55d7dfc949b83fb7f49fc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:380a778d-507f-85ec-82e9-b5fb2cdf15e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem openSegment_eq_Ioo' (hxy : x ≠ y) : openSegment 𝕜 x y = Ioo (min x y) (max x y) := by
  rcases hxy.lt_or_gt with h | h
  · rw [openSegment_eq_Ioo h, max_eq_right h.le, min_eq_left h.le]
  · rw [openSegment_symm, openSegment_eq_Ioo h, max_eq_left h.le, min_eq_right h.le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Segment/Variant7b01ff5a6c9412578f2659218b00c41279228e5f9e55d7dfc949b83fb7f49fc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Segment/Variant7b01ff5a6c9412578f2659218b00c41279228e5f9e55d7dfc949b83fb7f49fc8.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c3cd6f15e4a6495ed88f5ade1b22f0864187137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
