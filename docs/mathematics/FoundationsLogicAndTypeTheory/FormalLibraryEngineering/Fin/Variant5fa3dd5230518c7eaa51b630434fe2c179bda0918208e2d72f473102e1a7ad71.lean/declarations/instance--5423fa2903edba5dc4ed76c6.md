# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b79b067165b77d9a493ccab121844dfcb5e81e8c8be622820db7122fd4a16639",
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
  "slug": "instance--5423fa2903edba5dc4ed76c6",
  "source": {
    "blob": "e2a5a9d5290052dfa2db43cbc6b6592ba021904d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5423fa2903edba5dc4ed76c657dcc9a2fd75314e501df7bea9d05b64be6b4974",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b79b067165b77d9a493ccab121844dfcb5e81e8c8be622820db7122fd4a16639`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (n : Nat) [NeZero n] : CommRing (Fin n) where
  nsmul := ⟨fun k i => (k : Fin n) * i⟩
  zsmul := ⟨fun k i => (k : Fin n) * i⟩
  natCast := Fin.NatCast.instNatCast n
  intCast := Fin.IntCast.instIntCast n
  add_assoc := Fin.add_assoc
  add_comm := Fin.add_comm
  add_zero := Fin.add_zero
  neg_add_cancel := Fin.neg_add_cancel
  mul_assoc := Fin.mul_assoc
  mul_comm := Fin.mul_comm
  mul_one := Fin.mul_one
  left_distrib := Fin.left_distrib
  zero_mul := Fin.zero_mul
  pow_zero _ := by rfl
  pow_succ _ _ := by rfl
  ofNat_succ := Fin.ofNat_succ
  sub_eq_add_neg := Fin.sub_eq_add_neg
  intCast_neg := Fin.intCast_neg
  neg_zsmul i a := by
    change (((-i) : Int) : Fin n)* a = - ((i : Fin n) * a)
    simp [intCast_neg, neg_mul]
  zsmul_natCast_eq_nsmul _ _ := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2a5a9d5290052dfa2db43cbc6b6592ba021904d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
