# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90c9e3cfc1e16958adaac9b9c90f1bbe20f8aa13321b3e2ae890e7c807f61143",
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
  "slug": "instance--31a84e3a77e0d70f36e8b1ef",
  "source": {
    "blob": "bbe5b72b928ae5ceeb3ce2da8b101cfcd4978a42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant1efd45ec94a4cabe473e6fecb9c1d1763a4a2915dc4004b904838da0f3a5fe56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31a84e3a77e0d70f36e8b1efaa247deb2c6e82762e77c2e1869efea76cae9817",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant1efd45ec94a4cabe473e6fecb9c1d1763a4a2915dc4004b904838da0f3a5fe56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90c9e3cfc1e16958adaac9b9c90f1bbe20f8aa13321b3e2ae890e7c807f61143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommRing (BitVec w) where
  nsmul := ⟨(· * ·)⟩
  zsmul := ⟨(· * ·)⟩
  add_assoc := BitVec.add_assoc
  add_comm := BitVec.add_comm
  add_zero := BitVec.add_zero
  neg_add_cancel := BitVec.add_left_neg
  mul_assoc := BitVec.mul_assoc
  mul_comm := BitVec.mul_comm
  mul_one := BitVec.mul_one
  one_mul := BitVec.one_mul
  left_distrib _ _ _ := BitVec.mul_add
  right_distrib _ _ _ := BitVec.add_mul
  zero_mul _ := BitVec.zero_mul
  mul_zero _ := BitVec.mul_zero
  sub_eq_add_neg := BitVec.sub_eq_add_neg
  pow_zero _ := BitVec.pow_zero
  pow_succ _ _ := BitVec.pow_succ
  ofNat_succ x := BitVec.ofNat_add x 1
  intCast_neg _ := BitVec.ofInt_neg
  neg_zsmul i x := by
    change (BitVec.ofInt _ (-i) * x = _)
    rw [BitVec.ofInt_neg]
    rw [BitVec.neg_mul]
    rfl
  zsmul_natCast_eq_nsmul _ _ := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant1efd45ec94a4cabe473e6fecb9c1d1763a4a2915dc4004b904838da0f3a5fe56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant1efd45ec94a4cabe473e6fecb9c1d1763a4a2915dc4004b904838da0f3a5fe56.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe5b72b928ae5ceeb3ce2da8b101cfcd4978a42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
