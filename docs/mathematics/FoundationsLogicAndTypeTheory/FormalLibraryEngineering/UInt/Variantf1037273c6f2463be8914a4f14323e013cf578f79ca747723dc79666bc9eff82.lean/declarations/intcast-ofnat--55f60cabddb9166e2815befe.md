# intCast_ofNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b83956f8e74367fc49de560763aaa2d179b53dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53c105e0-c80f-c191-7b38-03a28989c8a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bb5be71-6d2c-3058-8e39-2a99b0fb360f",
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
  "slug": "intcast-ofnat--55f60cabddb9166e2815befe",
  "source": {
    "blob": "5b83956f8e74367fc49de560763aaa2d179b53dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55f60cabddb9166e2815befeece9c5832c8eba0059d82af61dfa6d12595cedff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bb5be71-6d2c-3058-8e39-2a99b0fb360f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intCast_ofNat (x : Nat) : (OfNat.ofNat (α := Int) x : UInt32) = OfNat.ofNat x := by
    -- A better proof would be welcome!
    simp only [Int.cast, IntCast.intCast]
    rw [UInt32.ofInt]
    rw [Int.toNat_emod (Int.zero_le_ofNat x) (by decide)]
    erw [Int.toNat_natCast]
    rw [Int.toNat_pow_of_nonneg (by decide)]
    simp +instances only [ofNat, BitVec.ofNat, Fin.Internal.ofNat_eq_ofNat, Fin.ofNat, Int.reduceToNat, Nat.dvd_refl,
      Nat.mod_mod_of_dvd, instOfNat]
    try rfl

end UInt32

namespace UInt64

/-- Variant of `UInt64.ofNat_mod_size` replacing `2 ^ 64` with `18446744073709551616`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b83956f8e74367fc49de560763aaa2d179b53dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
