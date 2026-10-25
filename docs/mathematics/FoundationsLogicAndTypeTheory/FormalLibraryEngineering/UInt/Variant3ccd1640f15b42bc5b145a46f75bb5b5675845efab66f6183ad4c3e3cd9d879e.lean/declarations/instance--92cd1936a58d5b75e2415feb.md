# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69e79c0e5a03b997158de4d901570c69b8148f85a23060f920192888df013dc5",
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
  "slug": "instance--92cd1936a58d5b75e2415feb",
  "source": {
    "blob": "cdc744cabad9751fe03744970cc0a63ac51da188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92cd1936a58d5b75e2415feb9a6bc6a9d37fb1876922e7d01f7006fa44a1d363",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69e79c0e5a03b997158de4d901570c69b8148f85a23060f920192888df013dc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommRing UInt32 where
  nsmul := ⟨(· * ·)⟩
  zsmul := ⟨(· * ·)⟩
  add_assoc := UInt32.add_assoc
  add_comm := UInt32.add_comm
  add_zero := UInt32.add_zero
  neg_add_cancel := UInt32.add_left_neg
  mul_assoc := UInt32.mul_assoc
  mul_comm := UInt32.mul_comm
  mul_one := UInt32.mul_one
  one_mul := UInt32.one_mul
  left_distrib _ _ _ := UInt32.mul_add
  right_distrib _ _ _ := UInt32.add_mul
  zero_mul _ := UInt32.zero_mul
  mul_zero _ := UInt32.mul_zero
  sub_eq_add_neg := UInt32.sub_eq_add_neg
  pow_zero := UInt32.pow_zero
  pow_succ := UInt32.pow_succ
  ofNat_succ x := UInt32.ofNat_add x 1
  intCast_neg := UInt32.ofInt_neg
  intCast_ofNat := UInt32.intCast_ofNat
  neg_zsmul i a := by
    change (-i : Int) * a = - (i * a)
    simp [UInt32.intCast_neg, UInt32.neg_mul]
  zsmul_natCast_eq_nsmul n a := congrArg (· * a) (UInt32.intCast_ofNat _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc744cabad9751fe03744970cc0a63ac51da188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
