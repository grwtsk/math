# LieSubalgebra.isLieAbelian_lieSpan_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:657ad6e8-9f24-6c62-2000-36a560c7d99b",
  "kind": "theorem",
  "lexical_name": "LieSubalgebra.isLieAbelian_lieSpan_iff",
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
  "slug": "liesubalgebra-islieabelian-liespan-iff--2381299b6b8ea21b2a3a88b5",
  "source": {
    "blob": "2f80d97203b5dee61a6e48759746642c5befc84d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2381299b6b8ea21b2a3a88b5e40b182cc185648b0a90c2236dfdfdfb2e6a3d52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:657ad6e8-9f24-6c62-2000-36a560c7d99b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem LieSubalgebra.isLieAbelian_lieSpan_iff
    {R L : Type*} [CommRing R] [LieRing L] [LieAlgebra R L] {s : Set L} :
    IsLieAbelian (lieSpan R L s) ↔ ∀ᵉ (x ∈ s) (y ∈ s), ⁅x, y⁆ = 0 := by
  refine ⟨fun h x hx y hy ↦ ?_, fun h ↦ ⟨fun ⟨x, hx⟩ ⟨y, hy⟩ ↦ ?_⟩⟩
  · let x' : lieSpan R L s := ⟨x, subset_lieSpan hx⟩
    let y' : lieSpan R L s := ⟨y, subset_lieSpan hy⟩
    suffices ⁅x', y'⁆ = 0 by simpa [x', y', Subtype.ext_iff] using this
    simp [trivial_lie_zero]
  · induction hx using lieSpan_induction with
    | mem w hw =>
      induction hy using lieSpan_induction with
      | mem u hu => simpa [Subtype.ext_iff] using h w hw u hu
      | zero => simp [Subtype.ext_iff]
      | add u v _ _ hu hv =>
        simp only [Subtype.ext_iff, coe_bracket, ZeroMemClass.coe_zero, lie_add] at hu hv ⊢
        simp [hu, hv]
      | smul t u _ hu =>
        simp only [Subtype.ext_iff, coe_bracket, ZeroMemClass.coe_zero] at hu
        simp [Subtype.ext_iff, hu]
      | lie u v _ _ hu hv =>
        simp only [Subtype.ext_iff, coe_bracket, ZeroMemClass.coe_zero] at hu hv ⊢
        rw [leibniz_lie]
        simp [hu, hv]
    | zero => simp [Subtype.ext_iff]
    | add u v _ _ hu hv =>
      simp only [Subtype.ext_iff, coe_bracket, ZeroMemClass.coe_zero, add_lie] at hu hv ⊢
      simp [hu, hv]
    | smul t u _ hu =>
      simp only [Subtype.ext_iff, coe_bracket, ZeroMemClass.coe_zero] at hu
      simp [Subtype.ext_iff, hu]
    | lie u v _ _ hu hv =>
      simp only [Subtype.ext_iff, coe_bracket, ZeroMemClass.coe_zero] at hu hv ⊢
      simp [hu, hv]

section Center

variable (R : Type u) (L : Type v) (M : Type w) (N : Type w₁)
variable [CommRing R] [LieRing L] [LieAlgebra R L]
variable [AddCommGroup M] [Module R M] [LieRingModule L M] [LieModule R L M]
variable [AddCommGroup N] [Module R N] [LieRingModule L N] [LieModule R L N]

namespace LieModule

attribute [local instance 100] LieRing.ofAssociativeRing

/-- The kernel of the action of a Lie algebra `L` on a Lie module `M` as a Lie ideal in `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f80d97203b5dee61a6e48759746642c5befc84d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
