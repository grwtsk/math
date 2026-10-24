# cokernelOpUnop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:248ee962834a294a41ba75c62df0f6e765fcfad4b1a86759d2e1bfd07c507009",
  "kind": "def",
  "lexical_name": "cokernelOpUnop",
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
  "slug": "cokernelopunop--48958eb7f23da416c318811a",
  "source": {
    "blob": "0dfcbc01c1c68e72e65ee7d51da5bfc789e58089",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48958eb7f23da416c318811a2720e224d1e7bcf156199e590482726f446a0b2f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:248ee962834a294a41ba75c62df0f6e765fcfad4b1a86759d2e1bfd07c507009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cokernelOpUnop : (cokernel f.op).unop ≅ kernel f where
  hom :=
    kernel.lift f (cokernel.π f.op).unop <| by
      rw [← f.unop_op, ← unop_comp, f.unop_op]
      simp
  inv := (cokernel.desc f.op (kernel.ι f).op <| by simp [← op_comp]).unop
  hom_inv_id := by
    rw [← unop_id, ← (kernel.lift f _ _).unop_op, ← unop_comp]
    congr 1
    ext
    simp [← op_comp]
  inv_hom_id := by
    ext
    simp [← unop_comp]

/-- The kernel of `g.unop` is the opposite of `cokernel g`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dfcbc01c1c68e72e65ee7d51da5bfc789e58089` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
