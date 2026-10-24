# Internal.intercalateImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf581a44472f85c68a7a4eb25becce067bc85268ddb052e85ccee4b73c345760",
  "kind": "def",
  "lexical_name": "Internal.intercalateImpl",
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
  "slug": "internal-intercalateimpl--316c742f2f79013ed9a73657",
  "source": {
    "blob": "440cd9a9d6db1e459a76645f0e1716a655bbd266",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 272,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantd5f604f68e1c80928fd146c598ba77ee74b70f84793f7af8ae264c5c43d06a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:316c742f2f79013ed9a73657ad06cc725c4c2efe9439ab07d8c13b13026bce0f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantd5f604f68e1c80928fd146c598ba77ee74b70f84793f7af8ae264c5c43d06a97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf581a44472f85c68a7a4eb25becce067bc85268ddb052e85ccee4b73c345760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Internal.intercalateImpl (s : String) : List String → String :=
  String.intercalate s

/--
Predicate for validity of positions inside a `String`.

There are multiple equivalent definitions for validity.

We say that a position is valid if the string obtained by taking all of the bytes up to, but
excluding, the given position, is valid UTF-8; see `Pos.isValid_iff_isValidUTF8_extract_zero`.

Similarly, a position is valid if the string obtained by taking all of the bytes starting at the
given position is valid UTF-8; see `Pos.isValid_iff_isValidUTF8_extract_utf8ByteSize`.

An equivalent condition is that the position is the length of the UTF-8 encoding of
some prefix of the characters of the string; see `Pos.isValid_iff_exists_append` and
`Pos.isValid_iff_exists_take_data`.

Another equivalent condition that can be checked efficiently is that the position is either the
end position or strictly smaller than the end position and the byte at the position satisfies
`UInt8.IsUTF8FirstByte`; see `Pos.isValid_iff_isUTF8FirstByte`.

Examples:
 * `String.Pos.IsValid "abc" ⟨0⟩`
 * `String.Pos.IsValid "abc" ⟨1⟩`
 * `String.Pos.IsValid "abc" ⟨3⟩`
 * `¬ String.Pos.IsValid "abc" ⟨4⟩`
 * `String.Pos.IsValid "𝒫(A)" ⟨0⟩`
 * `¬ String.Pos.IsValid "𝒫(A)" ⟨1⟩`
 * `¬ String.Pos.IsValid "𝒫(A)" ⟨2⟩`
 * `¬ String.Pos.IsValid "𝒫(A)" ⟨3⟩`
 * `String.Pos.IsValid "𝒫(A)" ⟨4⟩`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantd5f604f68e1c80928fd146c598ba77ee74b70f84793f7af8ae264c5c43d06a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantd5f604f68e1c80928fd146c598ba77ee74b70f84793f7af8ae264c5c43d06a97.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440cd9a9d6db1e459a76645f0e1716a655bbd266` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
