# IsPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc1876ef37bba12f32def66d4aab731c5290b7a18005b13223da70d56f0c0f04",
  "kind": "class",
  "lexical_name": "IsPrime",
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
  "slug": "isprime--4d0d21fb80d3eff163292a19",
  "source": {
    "blob": "0ff0b2c5dbffe41fc7a1d950a5b4ddf82c6a265b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 78,
    "path": "GRWTSK/Algebra/PrimeIdeal/Variantefaa4c598ac9173e8be539b4015bf67085df28e9a4a36285388c85bbb623851b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d0d21fb80d3eff163292a196fd9a81d10a1d636894383ae1e734dde67171bbf",
  "verification": {
    "reference": "docs/verification/Algebra/PrimeIdeal/Variantefaa4c598ac9173e8be539b4015bf67085df28e9a4a36285388c85bbb623851b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc1876ef37bba12f32def66d4aab731c5290b7a18005b13223da70d56f0c0f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsPrime [Preorder P] (I : Ideal P) : Prop extends IsProper I where
  compl_filter : IsPFilter (I : Set P)ᶜ

section Preorder

variable [Preorder P]

/-- Create an element of type `Order.Ideal.PrimePair` from an ideal satisfying the predicate
`Order.Ideal.IsPrime`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimeIdeal/Variantefaa4c598ac9173e8be539b4015bf67085df28e9a4a36285388c85bbb623851b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimeIdeal/Variantefaa4c598ac9173e8be539b4015bf67085df28e9a4a36285388c85bbb623851b.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ff0b2c5dbffe41fc7a1d950a5b4ddf82c6a265b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
