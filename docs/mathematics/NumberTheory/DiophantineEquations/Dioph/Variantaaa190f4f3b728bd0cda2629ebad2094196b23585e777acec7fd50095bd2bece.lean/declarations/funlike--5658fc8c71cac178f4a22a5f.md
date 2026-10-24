# funLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e0e34088e2d8ad9a1e441c045b4dc49ec7eeaad8ee7d7df8cbb1fc897e35dc7",
  "kind": "instance",
  "lexical_name": "funLike",
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
  "slug": "funlike--5658fc8c71cac178f4a22a5f",
  "source": {
    "blob": "09568de59493f90e584945e77a9a05135caec77c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 101,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variantaaa190f4f3b728bd0cda2629ebad2094196b23585e777acec7fd50095bd2bece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5658fc8c71cac178f4a22a5ffe2be8eb104f51db7e0b4c3ac12c14f793f05a1a",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variantaaa190f4f3b728bd0cda2629ebad2094196b23585e777acec7fd50095bd2bece.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e0e34088e2d8ad9a1e441c045b4dc49ec7eeaad8ee7d7df8cbb1fc897e35dc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance funLike : FunLike (Poly α) (α → ℕ) fun _ => ℤ :=
  ⟨Subtype.val, Subtype.val_injective⟩
#align poly.fun_like Poly.funLike

-- Porting note: This instance is not necessary anymore
-- /-- Helper instance for when there are too many metavariables to apply `fun_like.has_coe_to_fun`
-- directly. -/
-- instance : CoeFun (Poly α) fun _ => (α → ℕ) → ℤ := FunLike.hasCoeToFun

/-- The underlying function of a `Poly` is a polynomial -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variantaaa190f4f3b728bd0cda2629ebad2094196b23585e777acec7fd50095bd2bece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variantaaa190f4f3b728bd0cda2629ebad2094196b23585e777acec7fd50095bd2bece.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09568de59493f90e584945e77a9a05135caec77c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
