# rotateLeftAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ea2beb96c1a66121747802bcffd3e07e0a413200a92026ec2ea1ab92772dd8a",
  "kind": "def",
  "lexical_name": "rotateLeftAux",
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
  "slug": "rotateleftaux--41d0040ca4c77a1770c542bc",
  "source": {
    "blob": "1122508b14f82b41217c28ca050d418a8f223c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 627,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf1d2a57b7a2c2e3de9fbd74c6f23354d14d2c9e4c185c461c775c038ee2d6c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41d0040ca4c77a1770c542bc2c85d9f024e1abe45fa35ff60c88014fe1dfc2df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf1d2a57b7a2c2e3de9fbd74c6f23354d14d2c9e4c185c461c775c038ee2d6c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ea2beb96c1a66121747802bcffd3e07e0a413200a92026ec2ea1ab92772dd8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rotateLeftAux (x : BitVec w) (n : Nat) : BitVec w :=
  x <<< n ||| x >>> (w - n)

/--
Rotates the bits in a bitvector to the left.

All the bits of `x` are shifted to higher positions, with the top `n` bits wrapping around to fill
the vacated low bits.

SMT-LIB name: `rotate_left`, except this operator uses a `Nat` shift amount.

Example:
 * `(0b0011#4).rotateLeft 3 = 0b1001`
-/
@[implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf1d2a57b7a2c2e3de9fbd74c6f23354d14d2c9e4c185c461c775c038ee2d6c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf1d2a57b7a2c2e3de9fbd74c6f23354d14d2c9e4c185c461c775c038ee2d6c35.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1122508b14f82b41217c28ca050d418a8f223c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
