# conjAut_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c54912df-4ddc-aa00-5846-b2acc93a6185",
  "kind": "theorem",
  "lexical_name": "conjAut_zpow",
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
  "slug": "conjaut-zpow--c1b35d714ca068a0974b6c7a",
  "source": {
    "blob": "318cbf91ee382a9ea48d0505c3801c1f5c7d43d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantf3b5a61e43be24a1628531bea76d522b0daafc8d654ead9ae42b39331b44716f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1b35d714ca068a0974b6c7ac5e23231b815e7678d0e6ed7cea3649c62ef488f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantf3b5a61e43be24a1628531bea76d522b0daafc8d654ead9ae42b39331b44716f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c54912df-4ddc-aa00-5846-b2acc93a6185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conjAut_zpow (f : Aut X) (n : ℤ) : α.conjAut (f ^ n) = α.conjAut f ^ n :=
  map_zpow α.conjAut f n

end Iso

namespace Functor

universe v₁ u₁

variable {C : Type u} [Category.{v} C] {D : Type u₁} [Category.{v₁} D] (F : C ⥤ D)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantf3b5a61e43be24a1628531bea76d522b0daafc8d654ead9ae42b39331b44716f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantf3b5a61e43be24a1628531bea76d522b0daafc8d654ead9ae42b39331b44716f.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `318cbf91ee382a9ea48d0505c3801c1f5c7d43d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
