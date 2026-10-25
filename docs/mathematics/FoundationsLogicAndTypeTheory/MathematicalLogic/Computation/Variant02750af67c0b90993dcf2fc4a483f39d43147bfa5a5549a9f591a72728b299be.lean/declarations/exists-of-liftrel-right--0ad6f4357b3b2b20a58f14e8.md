# exists_of_LiftRel_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:386ea760-bb37-ebf7-794f-0d28c92779a9",
  "kind": "theorem",
  "lexical_name": "exists_of_LiftRel_right",
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
  "slug": "exists-of-liftrel-right--0ad6f4357b3b2b20a58f14e8",
  "source": {
    "blob": "f3090b10a49d03b4cc4569cbe1374c466ccfaab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1151,
    "line": 1147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant02750af67c0b90993dcf2fc4a483f39d43147bfa5a5549a9f591a72728b299be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ad6f4357b3b2b20a58f14e8ee46eaec68e1d0dce8a75ed1de1f90fd3e488c67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant02750af67c0b90993dcf2fc4a483f39d43147bfa5a5549a9f591a72728b299be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:386ea760-bb37-ebf7-794f-0d28c92779a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1147–1151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_LiftRel_right {R : α → β → Prop} {ca cb} (H : LiftRel R ca cb) {b} (h : b ∈ cb) :
    ∃ a, a ∈ ca ∧ R a b :=
  H.right h
#align computation.exists_of_lift_rel_right Computation.exists_of_LiftRel_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant02750af67c0b90993dcf2fc4a483f39d43147bfa5a5549a9f591a72728b299be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant02750af67c0b90993dcf2fc4a483f39d43147bfa5a5549a9f591a72728b299be.lean#L1147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3090b10a49d03b4cc4569cbe1374c466ccfaab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
