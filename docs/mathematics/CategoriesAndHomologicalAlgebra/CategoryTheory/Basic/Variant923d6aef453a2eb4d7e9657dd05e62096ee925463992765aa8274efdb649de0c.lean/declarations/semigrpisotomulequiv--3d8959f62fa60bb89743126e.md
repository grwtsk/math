# semigrpIsoToMulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ad3ef2bae09cea114df93615384ee48c642e04a99554837a459985f61385d9e",
  "kind": "def",
  "lexical_name": "semigrpIsoToMulEquiv",
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
  "slug": "semigrpisotomulequiv--3d8959f62fa60bb89743126e",
  "source": {
    "blob": "bf8762e8d6234afe8482558f4a40fe1671939446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 425,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant923d6aef453a2eb4d7e9657dd05e62096ee925463992765aa8274efdb649de0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d8959f62fa60bb89743126e7c1f856b06deabbc3fc36fe248f9f448a7b2b45e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant923d6aef453a2eb4d7e9657dd05e62096ee925463992765aa8274efdb649de0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ad3ef2bae09cea114df93615384ee48c642e04a99554837a459985f61385d9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def semigrpIsoToMulEquiv {X Y : Semigrp} (i : X ≅ Y) : X ≃* Y :=
  MulHom.toMulEquiv i.hom.hom i.inv.hom (by ext; simp) (by ext; simp)

end CategoryTheory.Iso

/-- multiplicative equivalences between `Mul`s are the same as (isomorphic to) isomorphisms
in `MagmaCat` -/
@[to_additive
    /-- additive equivalences between `Add`s are the same
    as (isomorphic to) isomorphisms in `AddMagmaCat` -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant923d6aef453a2eb4d7e9657dd05e62096ee925463992765aa8274efdb649de0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant923d6aef453a2eb4d7e9657dd05e62096ee925463992765aa8274efdb649de0c.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf8762e8d6234afe8482558f4a40fe1671939446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
