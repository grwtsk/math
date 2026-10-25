# toNat_two_pow_sub_one_sub_toInt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18b66b87-8501-5a1c-c405-6a591f5f29eb",
  "kind": "theorem",
  "lexical_name": "toNat_two_pow_sub_one_sub_toInt",
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
  "slug": "tonat-two-pow-sub-one-sub-toint--dba62f25688c24e7e456f658",
  "source": {
    "blob": "b6a5aba53a79b4d3c907db3ecd8e528e32481fdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant59bf15f161bd623a4a132d91a1925c891c3e72bcfcfb87506144e890c4c2c25c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dba62f25688c24e7e456f658f7dea8c62d4a18041f290e3b69eb6ba32cec47ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant59bf15f161bd623a4a132d91a1925c891c3e72bcfcfb87506144e890c4c2c25c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18b66b87-8501-5a1c-c405-6a591f5f29eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toNat_two_pow_sub_one_sub_toInt {lo : BitVec n} (h : n > 0) :
    (2 ^ (n - 1) - lo.toInt).toNat = 2 ^ n - (rotate lo).toNat := by
  simp only [toInt_eq_ofNat_toNat_rotate_sub h, intMinSealed_def, BitVec.natCast_eq_ofNat,
    BitVec.toNat_ofNat, Int.natCast_emod, Int.natCast_pow, Int.cast_ofNat_Int]
  rw [Int.emod_eq_of_lt, Int.sub_eq_add_neg, Int.neg_sub, ← Int.add_sub_assoc]; rotate_left
  · exact Int.le_of_lt (Int.pow_pos (by omega))
  · exact Int.pow_lt_pow_of_lt (by omega) (by omega)
  simp [Int.toNat_sub', Int.toNat_pow_of_nonneg,
    show (2 : Int) ^ (n - 1) + 2 ^ (n - 1) = 2 ^ (n - 1 + 1) by omega,
    show n - 1 + 1 = n by omega]

end AuxiliaryLemmas

end HasModel

namespace Int8

open BitVec.Signed
open scoped HasModel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant59bf15f161bd623a4a132d91a1925c891c3e72bcfcfb87506144e890c4c2c25c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant59bf15f161bd623a4a132d91a1925c891c3e72bcfcfb87506144e890c4c2c25c.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6a5aba53a79b4d3c907db3ecd8e528e32481fdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
