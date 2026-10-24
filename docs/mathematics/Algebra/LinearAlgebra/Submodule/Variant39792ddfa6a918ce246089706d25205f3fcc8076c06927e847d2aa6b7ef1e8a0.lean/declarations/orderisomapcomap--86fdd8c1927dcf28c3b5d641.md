# orderIsoMapComap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e2a3fdb7a674c652740261ed81b431df5c991a4eaf6ea91a7b5a9f69fa22280",
  "kind": "def",
  "lexical_name": "orderIsoMapComap",
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
  "slug": "orderisomapcomap--86fdd8c1927dcf28c3b5d641",
  "source": {
    "blob": "e687027de70e7bbeceeffee198c75605be5fc713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 867,
    "line": 846,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant39792ddfa6a918ce246089706d25205f3fcc8076c06927e847d2aa6b7ef1e8a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86fdd8c1927dcf28c3b5d641c9663bec69d6bf3e3e9558016f0df3b20e6e6ca1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variant39792ddfa6a918ce246089706d25205f3fcc8076c06927e847d2aa6b7ef1e8a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e2a3fdb7a674c652740261ed81b431df5c991a4eaf6ea91a7b5a9f69fa22280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 846–867.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def orderIsoMapComap (e : M ≃ₗ⁅R,L⁆ M') :
    LieSubmodule R L M ≃o LieSubmodule R L M' where
  toFun := map e
  invFun := comap e
  left_inv := fun N ↦ by ext; simp
  right_inv := fun N ↦ by ext; simp [← e.eq_symm_apply]
  map_rel_iff' := fun {_ _} ↦ Set.image_subset_image_iff e.injective

end LieSubmodule


end LieSubmoduleMapAndComap

namespace LieModuleHom

variable {R : Type u} {L : Type v} {M : Type w} {N : Type w₁}
variable [CommRing R] [LieRing L]
variable [AddCommGroup M] [Module R M] [LieRingModule L M]
variable [AddCommGroup N] [Module R N] [LieRingModule L N]
variable (f : M →ₗ⁅R,L⁆ N)

/-- The kernel of a morphism of Lie algebras, as an ideal in the domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variant39792ddfa6a918ce246089706d25205f3fcc8076c06927e847d2aa6b7ef1e8a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant39792ddfa6a918ce246089706d25205f3fcc8076c06927e847d2aa6b7ef1e8a0.lean#L846).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e687027de70e7bbeceeffee198c75605be5fc713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
