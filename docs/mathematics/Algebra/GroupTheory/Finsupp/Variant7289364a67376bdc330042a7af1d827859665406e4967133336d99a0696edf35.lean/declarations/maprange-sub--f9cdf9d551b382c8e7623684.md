# mapRange_sub'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13e13e5c-6904-bb54-8eec-d93a433a8692",
  "kind": "lemma",
  "lexical_name": "mapRange_sub'",
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
  "slug": "maprange-sub--f9cdf9d551b382c8e7623684",
  "source": {
    "blob": "8ca1da52a2379751bbc9093966cda0a207e24b84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 164,
    "path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9cdf9d551b382c8e7623684882ababdf97dd1de38e81ed29b1db0a5f3e1aeed",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13e13e5c-6904-bb54-8eec-d93a433a8692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapRange_sub' [AddGroup G] [SubtractionMonoid H] [FunLike F G H] [AddMonoidHomClass F G H]
    {f : F} (v₁ v₂ : ι →₀ G) :
    mapRange f (map_zero f) (v₁ - v₂) = mapRange f (map_zero f) v₁ - mapRange f (map_zero f) v₂ :=
  mapRange_sub (map_sub f) v₁ v₂

/-- Note the general `SMul` instance for `Finsupp` doesn't apply as `ℤ` is not distributive
unless `F i`'s addition is commutative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca1da52a2379751bbc9093966cda0a207e24b84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
