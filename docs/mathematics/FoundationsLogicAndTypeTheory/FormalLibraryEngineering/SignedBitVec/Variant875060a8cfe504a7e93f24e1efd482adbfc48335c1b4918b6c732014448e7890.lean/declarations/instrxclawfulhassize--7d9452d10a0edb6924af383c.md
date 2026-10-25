# instRxcLawfulHasSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e06886307b3a17a9143709090f331febc491a9bd77817f3ce6e7865dfb34dd3",
  "kind": "instance",
  "lexical_name": "instRxcLawfulHasSize",
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
  "slug": "instrxclawfulhassize--7d9452d10a0edb6924af383c",
  "source": {
    "blob": "f76a64f6ba6aad26ff38c553fee23d9847883768",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 267,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d9452d10a0edb6924af383c4584b595a5db2d026d5fb5630679da1b24fb231f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e06886307b3a17a9143709090f331febc491a9bd77817f3ce6e7865dfb34dd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance instRxcLawfulHasSize : Rxc.LawfulHasSize (BitVec n) where
  size_eq_zero_of_not_le bound x := by
    simp only [LE.le]
    match n with
    | 0 => simp [eq_nil x, eq_nil bound]
    | n + 1 =>
      simp [BitVec.sle_iff_toInt_le, Rxc.HasSize.size,
        toInt_eq_ofNat_toNat_rotate_sub (show n + 1 > 0 by omega)]
      omega
  size_eq_one_of_succ?_eq_none lo hi := by
    rw [← rotate_rotate (x := lo)]
    generalize rotate lo = lo
    simp only [LE.le]
    match n with
    | 0 => simp [eq_nil lo, eq_nil hi, succ?, rotate, Rxc.HasSize.size, intMinSealed_def]
    | n + 1 =>
      simp [BitVec.sle_iff_toInt_le, toInt_eq_ofNat_toNat_rotate_sub,
        Rxc.HasSize.size, rotate_rotate, succ?_rotate, Option.map_eq_map, Option.map_eq_none_iff,
        succ?_eq_none]
      omega
  size_eq_succ_of_succ?_eq_some lo hi x := by
    rw [← rotate_rotate (x := lo)]
    generalize rotate lo = lo
    simp only [LE.le]
    match n with
    | 0 => simp [eq_nil lo, eq_nil hi, succ?, rotate, Rxc.HasSize.size, intMinSealed_def]
    | n + 1 =>
      simp only [sle_iff_toInt_le, Nat.zero_lt_succ, toInt_eq_ofNat_toNat_rotate_sub,
        rotate_rotate, succ?_rotate, Option.map_eq_map, Option.map_eq_some_iff, succ?_eq_some,
        Rxc.HasSize.size, forall_exists_index, and_imp]
      rintro h y h' hy rfl
      simp only [rotate_rotate]
      omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f76a64f6ba6aad26ff38c553fee23d9847883768` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
