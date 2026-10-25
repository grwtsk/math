# UInt32.pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5edc2144dd5515e996ae08a20dde47283851122a0165c55d379ccaf76a37066",
  "kind": "def",
  "lexical_name": "UInt32.pow",
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
  "slug": "uint32-pow--75c4926bf9abc55c63f3cbb3",
  "source": {
    "blob": "77c0be5080c92d2f23db3af4c44423e645c6381d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 442,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant428f58fe51f1da6377847927cd847b0afd7219966b95e1ce539a98078fea9f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75c4926bf9abc55c63f3cbb34bbec71ce0dcad2cd07cd59b139e8d70b33be411",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant428f58fe51f1da6377847927cd847b0afd7219966b95e1ce539a98078fea9f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5edc2144dd5515e996ae08a20dde47283851122a0165c55d379ccaf76a37066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def UInt32.pow (x : UInt32) (n : Nat) : UInt32 :=
  match n with
  | 0 => 1
  | n + 1 => UInt32.mul (UInt32.pow x n) x
/--
The modulo operator for 32-bit unsigned integers, which computes the remainder when dividing one
integer by another. Usually accessed via the `%` operator.

When the divisor is `0`, the result is the dividend rather than an error.

This function is overridden at runtime with an efficient implementation.

Examples:
* `UInt32.mod 5 2 = 1`
* `UInt32.mod 4 2 = 0`
* `UInt32.mod 4 0 = 4`
-/
@[extern "lean_uint32_mod", implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant428f58fe51f1da6377847927cd847b0afd7219966b95e1ce539a98078fea9f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant428f58fe51f1da6377847927cd847b0afd7219966b95e1ce539a98078fea9f72.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c0be5080c92d2f23db3af4c44423e645c6381d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
