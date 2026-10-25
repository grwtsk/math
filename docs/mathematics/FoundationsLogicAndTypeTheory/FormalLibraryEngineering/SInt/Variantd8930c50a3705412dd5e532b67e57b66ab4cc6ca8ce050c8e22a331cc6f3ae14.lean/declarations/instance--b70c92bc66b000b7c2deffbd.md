# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3286639f9d4cd1941fba1f9e3245e9314c40521cba572d288b3fe0bb553889c5",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b70c92bc66b000b7c2deffbd",
  "source": {
    "blob": "89c3e90508ff240b37158cdc71c856a30afa33ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 204,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b70c92bc66b000b7c2deffbd72a6324ccc31d3236a1c7947fffefd333dde0189",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3286639f9d4cd1941fba1f9e3245e9314c40521cba572d288b3fe0bb553889c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommRing Int64 where
  nsmul := ⟨(· * ·)⟩
  zsmul := ⟨(· * ·)⟩
  add_assoc := Int64.add_assoc
  add_comm := Int64.add_comm
  add_zero := Int64.add_zero
  neg_add_cancel := Int64.add_left_neg
  mul_assoc := Int64.mul_assoc
  mul_comm := Int64.mul_comm
  mul_one := Int64.mul_one
  one_mul := Int64.one_mul
  left_distrib _ _ _ := Int64.mul_add
  right_distrib _ _ _ := Int64.add_mul
  zero_mul _ := Int64.zero_mul
  mul_zero _ := Int64.mul_zero
  sub_eq_add_neg := Int64.sub_eq_add_neg
  pow_zero := Int64.pow_zero
  pow_succ := Int64.pow_succ
  ofNat_succ x := Int64.ofNat_add x 1
  intCast_neg := Int64.ofInt_neg
  neg_zsmul i x := by
    change (-i : Int) * x = - (i * x)
    simp [Int64.intCast_neg, Int64.neg_mul]
  zsmul_natCast_eq_nsmul n a := congrArg (· * a) (Int64.intCast_ofNat _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89c3e90508ff240b37158cdc71c856a30afa33ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
