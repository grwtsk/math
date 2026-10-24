# Precylinder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7f2f501dd017cf214aa9bc27eed1315d89f71bfc751b4a6078485c39773aae0",
  "kind": "structure",
  "lexical_name": "Precylinder",
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
  "slug": "precylinder--9e47ed1112ce895356e325a2",
  "source": {
    "blob": "27161f3430e606dd6cfed91a48431d1e25532e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 59,
    "path": "GRWTSK/Topology/AlgebraicTopology/Cylinder/Variantfe08674979c60b45039ef22f523c38951d04e89087f7162d1d0ae5be71cc8fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e47ed1112ce895356e325a2e2b3015c18aa9a2f2b712ac46907b323cbddbe96",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Cylinder/Variantfe08674979c60b45039ef22f523c38951d04e89087f7162d1d0ae5be71cc8fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7f2f501dd017cf214aa9bc27eed1315d89f71bfc751b4a6078485c39773aae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Precylinder (A : C) where
  /-- the underlying object of a (pre)cylinder -/
  I : C
  /-- the first "inclusion" in the (pre)cylinder -/
  i₀ : A ⟶ I
  /-- the second "inclusion" in the (pre)cylinder -/
  i₁ : A ⟶ I
  /-- the codiagonal of the (pre)cylinder -/
  π : I ⟶ A
  i₀_π : i₀ ≫ π = 𝟙 A := by cat_disch
  i₁_π : i₁ ≫ π = 𝟙 A := by cat_disch

namespace Precylinder

attribute [reassoc (attr := simp)] i₀_π i₁_π

variable {A : C} (P : Precylinder A)

/-- The precylinder object obtained by switching the two inclusions. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Cylinder/Variantfe08674979c60b45039ef22f523c38951d04e89087f7162d1d0ae5be71cc8fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Cylinder/Variantfe08674979c60b45039ef22f523c38951d04e89087f7162d1d0ae5be71cc8fea.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27161f3430e606dd6cfed91a48431d1e25532e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
