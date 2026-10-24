# OrderIso.equivClosureOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f29daf25708db39a2e99ab6bca2cfdae32277ddaee19270f361b7c6b4ef267f8",
  "kind": "def",
  "lexical_name": "OrderIso.equivClosureOperator",
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
  "slug": "orderiso-equivclosureoperator--58b2913eeff36448ce943bf2",
  "source": {
    "blob": "402bc70d553c123cdef94619351bdc8b9748eb46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 283,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantb1cbc178b596d23283c3541ad828f45b05368e5bf6c2a6425c2d438d434421a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58b2913eeff36448ce943bf26ee375d69c963732cc4a0b1838113183c509f9ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/Variantb1cbc178b596d23283c3541ad828f45b05368e5bf6c2a6425c2d438d434421a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f29daf25708db39a2e99ab6bca2cfdae32277ddaee19270f361b7c6b4ef267f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OrderIso.equivClosureOperator {α β} [Preorder α] [Preorder β] (e : α ≃o β) :
    ClosureOperator α ≃ ClosureOperator β where
  toFun     c := c.conjBy e
  invFun    c := c.conjBy e.symm
  left_inv  c := Eq.trans (c.conjBy_trans _ _).symm
                 <| Eq.trans (congrArg _ e.self_trans_symm) c.conjBy_refl
  right_inv c := Eq.trans (c.conjBy_trans _ _).symm
                 <| Eq.trans (congrArg _ e.symm_trans_self) c.conjBy_refl

/-! ### Lower adjoint -/


variable {α} {β : Type*}

/-- A lower adjoint of `u` on the preorder `α` is a function `l` such that `l` and `u` form a Galois
connection. It allows us to define closure operators whose output does not match the input. In
practice, `u` is often `(↑) : β → α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/Variantb1cbc178b596d23283c3541ad828f45b05368e5bf6c2a6425c2d438d434421a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantb1cbc178b596d23283c3541ad828f45b05368e5bf6c2a6425c2d438d434421a9.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `402bc70d553c123cdef94619351bdc8b9748eb46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
