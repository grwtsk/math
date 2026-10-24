# compHom'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e7b63a5fcc9b0a80455034400d3c048dc0c7ac432b0d2a072b1205376e4b8fc",
  "kind": "def",
  "lexical_name": "compHom'",
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
  "slug": "comphom--f40be3a7bce4a88cd0ad1376",
  "source": {
    "blob": "8d2ce610938f028ee3888da55c4e944a1fd480ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 203,
    "path": "GRWTSK/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f40be3a7bce4a88cd0ad1376e51a6cf0379dafeff01f4ad58c2f151dc7be222b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e7b63a5fcc9b0a80455034400d3c048dc0c7ac432b0d2a072b1205376e4b8fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compHom' [MulOneClass M] [MulOneClass N] [CommMonoid P] (f : M →* N) : (N →* P) →* M →* P :=
  flip <| eval.comp f
#align monoid_hom.comp_hom' MonoidHom.compHom'
#align add_monoid_hom.comp_hom' AddMonoidHom.compHom'
#align monoid_hom.comp_hom'_apply_apply MonoidHom.compHom'_apply_apply
#align add_monoid_hom.comp_hom'_apply_apply AddMonoidHom.compHom'_apply_apply

/-- Composition of monoid morphisms (`MonoidHom.comp`) as a monoid morphism.

Note that unlike `MonoidHom.comp_hom'` this requires commutativity of `N`. -/
@[to_additive (attr := simps)
      "Composition of additive monoid morphisms (`AddMonoidHom.comp`) as an additive
      monoid morphism.

      Note that unlike `AddMonoidHom.comp_hom'` this requires commutativity of `N`.

      This also exists in a `LinearMap` version, `LinearMap.llcomp`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d2ce610938f028ee3888da55c4e944a1fd480ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
