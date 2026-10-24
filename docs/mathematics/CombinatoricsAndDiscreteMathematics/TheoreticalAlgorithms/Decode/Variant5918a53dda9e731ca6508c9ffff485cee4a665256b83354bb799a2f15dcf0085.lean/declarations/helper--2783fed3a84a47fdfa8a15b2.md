# helper₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31be6729ed562a3f596d33deabe3d72ea20cc2ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 565,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3172912-0203-e496-cd58-9eecadc45386",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22bbfc95-dc6d-aa62-cdf0-f79d5948d87b",
  "kind": "theorem",
  "lexical_name": "helper₃",
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
  "slug": "helper--2783fed3a84a47fdfa8a15b2",
  "source": {
    "blob": "31be6729ed562a3f596d33deabe3d72ea20cc2ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 565,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2783fed3a84a47fdfa8a15b22807677dedf2edb208e3303036a0a68c81364307",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22bbfc95-dc6d-aa62-cdf0-f79d5948d87b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem helper₃ {x : UInt8} (n : Nat) (hn : n < 8) :
    (x &&& UInt8.ofNat (2 ^ n - 1)).toUInt32.toBitVec = (x.toBitVec.setWidth n).setWidth 32 := by
  apply BitVec.eq_of_toNat_eq
  simp only [UInt8.toUInt32_and, UInt32.toBitVec_and, UInt8.toBitVec_toUInt32, BitVec.toNat_and,
    BitVec.toNat_setWidth, UInt8.toNat_toBitVec, Nat.reducePow, UInt8.toNat_mod_uInt32Size,
    UInt8.toNat_ofNat']
  have : 2 ^ n < 2 ^ 8 := Nat.pow_lt_pow_right (by decide) hn
  rw [Nat.mod_mod_of_dvd' (by decide), Nat.mod_eq_of_lt (by omega), Nat.mod_mod_of_dvd']
  · exact Nat.and_two_pow_sub_one_eq_mod _ _
  · exact Nat.pow_dvd_pow (n := 32) 2 (by omega)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31be6729ed562a3f596d33deabe3d72ea20cc2ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
