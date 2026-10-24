# nonAssocSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bda11c4ad678b32a3b5ccfe604588fe893d29c7331685871f2599d5fc7b3a2f9",
  "kind": "instance",
  "lexical_name": "nonAssocSemiring",
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
  "slug": "nonassocsemiring--cfbcb8764de0b5091161b081",
  "source": {
    "blob": "25d941dd4f344c38d94838f8a8aeb7cc958b7ee9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 292,
    "path": "GRWTSK/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfbcb8764de0b5091161b081d2277a25fbb8422b6b5f0ae31e991e9fe0427838",
  "verification": {
    "reference": "docs/verification/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bda11c4ad678b32a3b5ccfe604588fe893d29c7331685871f2599d5fc7b3a2f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonAssocSemiring [Semiring α] [Invertible (2 : α)] : NonAssocSemiring αˢʸᵐ :=
  { SymAlg.addCommMonoid with
    one := 1
    mul := (· * ·)
    zero := 0
    zero_mul := fun _ => by
      rw [mul_def, unsym_zero, zero_mul, mul_zero, add_zero,
        mul_zero, sym_zero]
    mul_zero := fun _ => by
      rw [mul_def, unsym_zero, zero_mul, mul_zero, add_zero,
        mul_zero, sym_zero]
    mul_one := fun _ => by
      rw [mul_def, unsym_one, mul_one, one_mul, ← two_mul, invOf_mul_self_assoc, sym_unsym]
    one_mul := fun _ => by
      rw [mul_def, unsym_one, mul_one, one_mul, ← two_mul, invOf_mul_self_assoc, sym_unsym]
    left_distrib := fun a b c => by
      -- Porting note: rewrote previous proof which used `match` in a way that seems unsupported.
      rw [mul_def, mul_def, mul_def, ← sym_add, ← mul_add, unsym_add, add_mul]
      congr 2
      rw [mul_add]
      abel
    right_distrib := fun a b c => by
      -- Porting note: rewrote previous proof which used `match` in a way that seems unsupported.
      rw [mul_def, mul_def, mul_def, ← sym_add, ← mul_add, unsym_add, add_mul]
      congr 2
      rw [mul_add]
      abel }

/-- The symmetrization of a real (unital, associative) algebra is a non-associative ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symmetrized/Variantbfb8a9f2f5a70e7ccf335fdb3c7769cbf45e4a7832779c09cb8dea3aaf056fe7.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25d941dd4f344c38d94838f8a8aeb7cc958b7ee9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
