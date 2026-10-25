# minExponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb5e491ea9a5e5b3b75f3c3ad88877fa8384ab9b16c9ad35db10a179dc5a498a",
  "kind": "def",
  "lexical_name": "minExponent",
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
  "slug": "minexponent--8801f5b15a0b5dbf3ff4df2a",
  "source": {
    "blob": "56056f73440188f92b36154139e02455f6c6dc93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e0dbd99de769af969ded5aa41c34ef30de090a2e06292a5c7a17da6f9340f34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8801f5b15a0b5dbf3ff4df2a39041641af449ae38844c191bbb3a563ca1b6c43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e0dbd99de769af969ded5aa41c34ef30de090a2e06292a5c7a17da6f9340f34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb5e491ea9a5e5b3b75f3c3ad88877fa8384ab9b16c9ad35db10a179dc5a498a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def minExponent (spec : Format) : Int :=
  3 - 2 ^ (spec.exponentBits - 1) - spec.mantissaBits

/--
Suppose we have written a number where `totalExponent` is the position of the
most significant digit, where the unit digit corresponds to `1`. So, for example,
`1.0b` has total exponent `1`, `0.1b` has total exponent `0`, `0.01b` has total
exponent `-1`, and so on. This function computes which exponent that number
should have according to the given `Format`. So, for example, for the number
`0.1b` in `binary64` format, it wants us to use the exponent `-53`, corresponding
to the representation `2^52 * 2^(-53)`, which has a 53-bit mantissa. If the total
exponent gets quite small, then the result exponent eventually gets capped at
`spec.minExponent`, which first forces the result to be a subnormal number and
then, if the total exponent is even smaller, to be zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e0dbd99de769af969ded5aa41c34ef30de090a2e06292a5c7a17da6f9340f34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e0dbd99de769af969ded5aa41c34ef30de090a2e06292a5c7a17da6f9340f34.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56056f73440188f92b36154139e02455f6c6dc93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
