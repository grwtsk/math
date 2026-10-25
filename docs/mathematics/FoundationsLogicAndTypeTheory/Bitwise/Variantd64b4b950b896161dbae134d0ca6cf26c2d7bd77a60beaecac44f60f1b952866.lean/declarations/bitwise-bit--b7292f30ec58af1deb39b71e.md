# bitwise_bit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:214e73d0-d148-f888-c338-dc64297b026c",
  "kind": "theorem",
  "lexical_name": "bitwise_bit",
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
  "slug": "bitwise-bit--b7292f30ec58af1deb39b71e",
  "source": {
    "blob": "104d452e5308bbaa39a509864a2a8c4efa741447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 293,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7292f30ec58af1deb39b71ed59bc4a8ae8e191b11500c9950df2962be0f5e0b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:214e73d0-d148-f888-c338-dc64297b026c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitwise_bit (f : Bool → Bool → Bool) (a m b n) :
    bitwise f (bit a m) (bit b n) = bit (f a b) (bitwise f m n) := by
  rcases m with m | m <;> rcases n with n | n <;>
  simp [bitwise, ofNat_eq_coe, bit_coe_nat, natBitwise, Bool.not_false, Bool.not_eq_false',
    bit_negSucc]
  · by_cases h : f false false <;> simp +decide [h]
  · by_cases h : f false true <;> simp +decide [h]
  · by_cases h : f true false <;> simp +decide [h]
  · by_cases h : f true true <;> simp +decide [h]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantd64b4b950b896161dbae134d0ca6cf26c2d7bd77a60beaecac44f60f1b952866.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `104d452e5308bbaa39a509864a2a8c4efa741447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
