# intCast_ofNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3192cba7-6be4-9ffd-a584-d7962e98af11",
  "kind": "theorem",
  "lexical_name": "intCast_ofNat",
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
  "slug": "intcast-ofnat--9e30e96c9c7f4bdfa47e8478",
  "source": {
    "blob": "cdc744cabad9751fe03744970cc0a63ac51da188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 165,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e30e96c9c7f4bdfa47e84788e9a90b30d7cfdf029d110a5cab29dd62f8e532f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3192cba7-6be4-9ffd-a584-d7962e98af11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intCast_ofNat (x : Nat) : (OfNat.ofNat (α := Int) x : USize) = OfNat.ofNat x := by
    -- A better proof would be welcome!
    simp only [Int.cast, IntCast.intCast]
    rw [USize.ofInt]
    rw [Int.toNat_emod (Int.zero_le_ofNat x)]
    · erw [Int.toNat_natCast]
      rw [Int.toNat_pow_of_nonneg (by decide)]
      simp +instances only [ofNat, BitVec.ofNat, Fin.Internal.ofNat_eq_ofNat, Fin.ofNat, Int.reduceToNat, Nat.dvd_refl,
        Nat.mod_mod_of_dvd, instOfNat]
      try rfl
    · obtain _ | _ := System.Platform.numBits_eq <;> simp_all

end USize
namespace Lean.Grind

attribute [local instance] UInt8.natCast UInt8.intCast in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc744cabad9751fe03744970cc0a63ac51da188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
