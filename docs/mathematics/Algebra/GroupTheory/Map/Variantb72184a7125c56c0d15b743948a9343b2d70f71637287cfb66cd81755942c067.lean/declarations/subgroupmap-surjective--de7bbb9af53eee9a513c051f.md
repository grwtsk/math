# subgroupMap_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f55620d-f165-b9a4-6802-4fb3d0dd73db",
  "kind": "theorem",
  "lexical_name": "subgroupMap_surjective",
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
  "slug": "subgroupmap-surjective--de7bbb9af53eee9a513c051f",
  "source": {
    "blob": "6ee0278c5ca1f5d03c70dcec7e6f5beab2f83702",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 518,
    "path": "GRWTSK/Algebra/GroupTheory/Map/Variantb72184a7125c56c0d15b743948a9343b2d70f71637287cfb66cd81755942c067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de7bbb9af53eee9a513c051fac878e53fc85f900291ceb6cd56d8dbc47bde6a8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Map/Variantb72184a7125c56c0d15b743948a9343b2d70f71637287cfb66cd81755942c067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f55620d-f165-b9a4-6802-4fb3d0dd73db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subgroupMap_surjective (f : G →* G') (H : Subgroup G) :
    Function.Surjective (f.subgroupMap H) :=
  f.submonoidMap_surjective H.toSubmonoid

end MonoidHom

namespace MulEquiv

variable {H K : Subgroup G}

/-- Makes the identity isomorphism from a proof two subgroups of a multiplicative
    group are equal. -/
@[to_additive
      "Makes the identity additive isomorphism from a proof
      two subgroups of an additive group are equal."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Map/Variantb72184a7125c56c0d15b743948a9343b2d70f71637287cfb66cd81755942c067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Map/Variantb72184a7125c56c0d15b743948a9343b2d70f71637287cfb66cd81755942c067.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee0278c5ca1f5d03c70dcec7e6f5beab2f83702` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
