# Interval.commMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1434a489d77cb54ef2e5e3f13c8649c745fd4866d1420ac61bc30dfaf3cf6bf",
  "kind": "instance",
  "lexical_name": "Interval.commMonoid",
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
  "slug": "interval-commmonoid--f00dd32bcdd17f8ac05bb28b",
  "source": {
    "blob": "7739684cf0b6de71c2784b7c1a885e699beb35bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 242,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantf76721d426ef637d173f62827ed61f549741a8691a23013f0742bc0781f88a07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f00dd32bcdd17f8ac05bb28b66735e062f3797b97dae2e80c17222bc92d954ef",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantf76721d426ef637d173f62827ed61f549741a8691a23013f0742bc0781f88a07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1434a489d77cb54ef2e5e3f13c8649c745fd4866d1420ac61bc30dfaf3cf6bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Interval.commMonoid [CommMonoid α] [Preorder α] [IsOrderedMonoid α] :
    CommMonoid (Interval α) where
  mul_comm := fun _ _ => Option.map₂_comm mul_comm
  mul_assoc := fun _ _ _ => Option.map₂_assoc mul_assoc

namespace NonemptyInterval

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantf76721d426ef637d173f62827ed61f549741a8691a23013f0742bc0781f88a07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantf76721d426ef637d173f62827ed61f549741a8691a23013f0742bc0781f88a07.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7739684cf0b6de71c2784b7c1a885e699beb35bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
