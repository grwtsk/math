# isNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d46c44e2b5ee7dcb3391c89b0632af5fcdb7ef8be28c1827818ad4461a3b211",
  "kind": "def",
  "lexical_name": "isNat",
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
  "slug": "isnat--0ebe217c93dab4d5dfa10204",
  "source": {
    "blob": "320148c14e4a757cf0d21c4109c34818293bc55d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 342,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantb2813983abe6f00da463f13f5e5f3c554060b4fee8069277bf95f9735e4120da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ebe217c93dab4d5dfa102040a0ebc530da137180b1dd2356f072938329f2bfa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantb2813983abe6f00da463f13f5e5f3c554060b4fee8069277bf95f9735e4120da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d46c44e2b5ee7dcb3391c89b0632af5fcdb7ef8be28c1827818ad4461a3b211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def isNat (s : String) : Bool :=
  s.toSlice.isNat

/--
Interprets a string as the decimal representation of a natural number, returning it. Returns
{name}`none` if the slice does not contain a decimal natural number.

A slice can be interpreted as a decimal natural number if it is not empty and all the characters in
it are digits.

Use {name}`isNat` to check whether {name}`toNat?` would return {name}`some`.
{name (scope := "Init.Data.String.Search")}`toNat!` is an alternative that panics instead of
returning {name}`none` when the slice is not a natural number.

Examples:
 * {lean}`"".toNat? = none`
 * {lean}`"0".toNat? = some 0`
 * {lean}`"5".toNat? = some 5`
 * {lean}`"587".toNat? = some 587`
 * {lean}`"-587".toNat? = none`
 * {lean}`" 5".toNat? = none`
 * {lean}`"2+3".toNat? = none`
 * {lean}`"0xff".toNat? = none`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantb2813983abe6f00da463f13f5e5f3c554060b4fee8069277bf95f9735e4120da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantb2813983abe6f00da463f13f5e5f3c554060b4fee8069277bf95f9735e4120da.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `320148c14e4a757cf0d21c4109c34818293bc55d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
