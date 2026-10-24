# oppositeRack

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:356a53d889adabc5d6aa2be2abfb28e4614fbeb46c9aa04a78603f5dde90c200",
  "kind": "instance",
  "lexical_name": "oppositeRack",
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
  "slug": "oppositerack--7d995f1cdd6fb25536e9026d",
  "source": {
    "blob": "7d2040e1e28fe8cd08490a2082d897089148780f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 266,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Quandle/Variant4c0fddcd774dd283fdb3b985a019632aeb12c00759fc5dd81196f0b94d3a51d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d995f1cdd6fb25536e9026d2b4aaa02e8dd7341086c4bdc99540d0fcaf735ca",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Quandle/Variant4c0fddcd774dd283fdb3b985a019632aeb12c00759fc5dd81196f0b94d3a51d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:356a53d889adabc5d6aa2be2abfb28e4614fbeb46c9aa04a78603f5dde90c200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance oppositeRack : Rack Rᵐᵒᵖ
    where
  act x y := op (invAct (unop x) (unop y))
  self_distrib := by
    intro x y z
    induction x using MulOpposite.rec'
    induction y using MulOpposite.rec'
    induction z using MulOpposite.rec'
    simp only [op_inj, unop_op, op_unop]
    rw [self_distrib_inv]
  invAct x y := op (Shelf.act (unop x) (unop y))
  left_inv := MulOpposite.rec' fun x => MulOpposite.rec' fun y => by simp
  right_inv := MulOpposite.rec' fun x => MulOpposite.rec' fun y => by simp
#align rack.opposite_rack Rack.oppositeRack

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Quandle/Variant4c0fddcd774dd283fdb3b985a019632aeb12c00759fc5dd81196f0b94d3a51d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Quandle/Variant4c0fddcd774dd283fdb3b985a019632aeb12c00759fc5dd81196f0b94d3a51d6.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d2040e1e28fe8cd08490a2082d897089148780f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
