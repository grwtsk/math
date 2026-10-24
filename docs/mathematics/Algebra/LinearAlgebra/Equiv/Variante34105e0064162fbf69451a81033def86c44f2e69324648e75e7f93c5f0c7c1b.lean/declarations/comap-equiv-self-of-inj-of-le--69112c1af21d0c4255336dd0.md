# comap_equiv_self_of_inj_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70d3d56130f43bec6cf10f390ae10479360ea2ffc441dc23f969f3a42037371f",
  "kind": "def",
  "lexical_name": "comap_equiv_self_of_inj_of_le",
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
  "slug": "comap-equiv-self-of-inj-of-le--69112c1af21d0c4255336dd0",
  "source": {
    "blob": "27359e19ebb69e25962e15cdc831a81851643b5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 238,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69112c1af21d0c4255336dd0b01c7d64c0ae7e312a028f96dee9b237ac0132da",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70d3d56130f43bec6cf10f390ae10479360ea2ffc441dc23f969f3a42037371f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def comap_equiv_self_of_inj_of_le {f : M →ₗ[R] N} {p : Submodule R N}
    (hf : Injective f) (h : p ≤ LinearMap.range f) :
    p.comap f ≃ₗ[R] p :=
  LinearEquiv.ofBijective
  ((f ∘ₗ (p.comap f).subtype).codRestrict p <| fun ⟨_, hx⟩ ↦ mem_comap.mp hx)
  (⟨fun x y hxy ↦ by simpa using hf (Subtype.ext_iff.mp hxy),
    fun ⟨x, hx⟩ ↦ by obtain ⟨y, rfl⟩ := h hx; exact ⟨⟨y, hx⟩, by simp [Subtype.ext_iff]⟩⟩)

end Module

end Submodule

namespace LinearMap

variable [CommSemiring R] [AddCommMonoid M] [AddCommMonoid M₁] [AddCommMonoid M₂] [AddCommMonoid M₃]
  [Module R M] [Module R M₁] [Module R M₂] [Module R M₃]

section

variable (f : M₁ →ₗ[R] M₂) (i : M₃ →ₗ[R] M₂) (hi : Injective i)
  (hf : ∀ x, f x ∈ LinearMap.range i)

/-- The restriction of a linear map on the target to a submodule of the target given by
an inclusion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27359e19ebb69e25962e15cdc831a81851643b5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
