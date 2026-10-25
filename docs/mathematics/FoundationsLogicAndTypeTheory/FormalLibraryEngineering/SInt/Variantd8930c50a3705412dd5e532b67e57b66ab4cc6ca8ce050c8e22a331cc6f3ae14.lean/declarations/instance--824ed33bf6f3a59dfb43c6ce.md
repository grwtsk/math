# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59ba34a20232bc31885d286882901e895309c9427f0d60b8e35a85c8acdb5472",
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
  "slug": "instance--824ed33bf6f3a59dfb43c6ce",
  "source": {
    "blob": "89c3e90508ff240b37158cdc71c856a30afa33ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:824ed33bf6f3a59dfb43c6ceb57df0f5af35d63cfd6caca91425f875845c15f6",
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

Occurrence: `declaration:59ba34a20232bc31885d286882901e895309c9427f0d60b8e35a85c8acdb5472`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommRing Int8 where
  nsmul := ⟨(· * ·)⟩
  zsmul := ⟨(· * ·)⟩
  add_assoc := Int8.add_assoc
  add_comm := Int8.add_comm
  add_zero := Int8.add_zero
  neg_add_cancel := Int8.add_left_neg
  mul_assoc := Int8.mul_assoc
  mul_comm := Int8.mul_comm
  mul_one := Int8.mul_one
  one_mul := Int8.one_mul
  left_distrib _ _ _ := Int8.mul_add
  right_distrib _ _ _ := Int8.add_mul
  zero_mul _ := Int8.zero_mul
  mul_zero _ := Int8.mul_zero
  sub_eq_add_neg := Int8.sub_eq_add_neg
  pow_zero := Int8.pow_zero
  pow_succ := Int8.pow_succ
  ofNat_succ x := Int8.ofNat_add x 1
  intCast_neg := Int8.ofInt_neg
  neg_zsmul i x := by
    change (-i : Int) * x = - (i * x)
    simp [Int8.intCast_neg, Int8.neg_mul]
  zsmul_natCast_eq_nsmul n a := congrArg (· * a) (Int8.intCast_ofNat _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89c3e90508ff240b37158cdc71c856a30afa33ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
