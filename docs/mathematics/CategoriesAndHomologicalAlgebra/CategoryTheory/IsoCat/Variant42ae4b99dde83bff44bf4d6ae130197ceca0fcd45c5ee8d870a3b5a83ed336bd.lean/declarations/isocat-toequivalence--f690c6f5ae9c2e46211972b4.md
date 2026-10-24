# IsoCat.toEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7be157eab52e6f04568298698ab6d29c6a47d165dfc0cdff426ad55732b51148",
  "kind": "def",
  "lexical_name": "IsoCat.toEquivalence",
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
  "slug": "isocat-toequivalence--f690c6f5ae9c2e46211972b4",
  "source": {
    "blob": "8c4839a5c5f8813e3490845a4b89a413b6332103",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variant42ae4b99dde83bff44bf4d6ae130197ceca0fcd45c5ee8d870a3b5a83ed336bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f690c6f5ae9c2e46211972b4910d71b1e03359c79eeaa64bb8b67c4ea54d4af4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variant42ae4b99dde83bff44bf4d6ae130197ceca0fcd45c5ee8d870a3b5a83ed336bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7be157eab52e6f04568298698ab6d29c6a47d165dfc0cdff426ad55732b51148`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsoCat.toEquivalence (e : IsoCat C D) : C ≌ D where
  functor := e.functor
  inverse := e.inverse
  unitIso := eqToIso e.unit_eq
  counitIso := eqToIso e.counit_eq
  functor_unitIso_comp X := by simp [eqToHom_map]

/-- Promotes an equivalence of categories `e : C ≌ D` whose unit and counit isomorphisms are
given by equalities of objects into an `IsoCat C D`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variant42ae4b99dde83bff44bf4d6ae130197ceca0fcd45c5ee8d870a3b5a83ed336bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variant42ae4b99dde83bff44bf4d6ae130197ceca0fcd45c5ee8d870a3b5a83ed336bd.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c4839a5c5f8813e3490845a4b89a413b6332103` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
