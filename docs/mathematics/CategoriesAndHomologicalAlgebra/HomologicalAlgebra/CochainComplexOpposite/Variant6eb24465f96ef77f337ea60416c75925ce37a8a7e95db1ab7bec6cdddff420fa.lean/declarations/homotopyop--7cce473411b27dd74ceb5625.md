# homotopyOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6126e58326629a9be520f4f642eae2faf98a62f4f8a8db59fe5b11c3fa0ac2e6",
  "kind": "def",
  "lexical_name": "homotopyOp",
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
  "slug": "homotopyop--7cce473411b27dd74ceb5625",
  "source": {
    "blob": "f8cb3e17ee8bbb57c972e8b667130577d45ba666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplexOpposite/Variant6eb24465f96ef77f337ea60416c75925ce37a8a7e95db1ab7bec6cdddff420fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cce473411b27dd74ceb56257d47a086d06df3f9859c33a6f2ae3a1d5bdf4677",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplexOpposite/Variant6eb24465f96ef77f337ea60416c75925ce37a8a7e95db1ab7bec6cdddff420fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6126e58326629a9be520f4f642eae2faf98a62f4f8a8db59fe5b11c3fa0ac2e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homotopyOp (h : Homotopy f g) :
    Homotopy ((opEquivalence C).functor.map f.op)
      ((opEquivalence C).functor.map g.op) where
  hom p q := (h.hom (-q) (-p)).op
  zero p q hpq := by
    rw [h.zero, op_zero]
    dsimp at hpq ⊢
    lia
  comm n := by
    dsimp
    simp only [h.comm, op_add, add_left_inj]
    rw [add_comm]
    congr 1
    · rw [prevD_eq _ (j' := - (n + 1)) (by simp)]
      symm
      exact dNext_eq _ (i' := n + 1) (by simp)
    · rw [dNext_eq _ (i' := - (n - 1)) (by dsimp; lia)]
      symm
      exact prevD_eq _ (j' := n - 1) (by simp)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplexOpposite/Variant6eb24465f96ef77f337ea60416c75925ce37a8a7e95db1ab7bec6cdddff420fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplexOpposite/Variant6eb24465f96ef77f337ea60416c75925ce37a8a7e95db1ab7bec6cdddff420fa.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8cb3e17ee8bbb57c972e8b667130577d45ba666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
