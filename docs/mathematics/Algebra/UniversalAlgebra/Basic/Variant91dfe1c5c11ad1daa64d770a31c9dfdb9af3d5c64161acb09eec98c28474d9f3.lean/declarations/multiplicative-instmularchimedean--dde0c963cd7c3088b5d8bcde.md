# Multiplicative.instMulArchimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cb99bfe9561b86f0a28df46ace9d28235c40b6376964e0e0d0b0648f888a1e6",
  "kind": "instance",
  "lexical_name": "Multiplicative.instMulArchimedean",
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
  "slug": "multiplicative-instmularchimedean--dde0c963cd7c3088b5d8bcde",
  "source": {
    "blob": "8a89d0f191e70fe78dd0a0a0bfbf91443674663d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dde0c963cd7c3088b5d8bcde18346ccbd67baba5ef7fe41f5a34d59f1abb8d22",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cb99bfe9561b86f0a28df46ace9d28235c40b6376964e0e0d0b0648f888a1e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Multiplicative.instMulArchimedean [AddCommGroup G] [PartialOrder G] [Archimedean G] :
    MulArchimedean (Multiplicative G) :=
  ⟨fun x _ hy ↦ Archimedean.arch x.toAdd hy⟩

section IsOrderedMonoid

variable [CommGroup G] [LinearOrder G] [IsOrderedMonoid G] [MulArchimedean G]

/-- An archimedean decidable linearly ordered `CommGroup` has a version of the floor: for
`a > 1`, any `g` in the group lies between some two consecutive powers of `a`. -/
@[to_additive /-- An archimedean decidable linearly ordered `AddCommGroup` has a version of the
floor: for `a > 0`, any `g` in the group lies between some two consecutive multiples of `a`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a89d0f191e70fe78dd0a0a0bfbf91443674663d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
