# commutative_ring_iff_abelian_lie_ring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f36cc2e8-27cd-fb4e-ddd5-9d4d54b96b80",
  "kind": "theorem",
  "lexical_name": "commutative_ring_iff_abelian_lie_ring",
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
  "slug": "commutative-ring-iff-abelian-lie-ring--598c03d7cd774b38648b7a9f",
  "source": {
    "blob": "b16518292b5fe099cb93d0b315e892d5f184f5d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant13b0f3f3f02320863cebe2f1900a07e3a010f20746f20428413cbd4d8088e02f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:598c03d7cd774b38648b7a9f752da3b3d643f58ecc4485a1ba3249c32e5d3d9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant13b0f3f3f02320863cebe2f1900a07e3a010f20746f20428413cbd4d8088e02f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f36cc2e8-27cd-fb4e-ddd5-9d4d54b96b80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commutative_ring_iff_abelian_lie_ring {A : Type v} [Ring A] :
    Std.Commutative (α := A) (· * ·) ↔ IsLieAbelian A := by
  have h₁ : Std.Commutative (α := A) (· * ·) ↔ ∀ a b : A, a * b = b * a :=
    ⟨fun h => h.1, fun h => ⟨h⟩⟩
  have h₂ : IsLieAbelian A ↔ ∀ a b : A, ⁅a, b⁆ = 0 := ⟨fun h => h.1, fun h => ⟨h⟩⟩
  simp only [h₁, h₂, LieRing.of_associative_ring_bracket, sub_eq_zero]

section Center

variable (R : Type u) (L : Type v) (M : Type w) (N : Type w₁)
variable [CommRing R] [LieRing L] [LieAlgebra R L]
variable [AddCommGroup M] [Module R M] [LieRingModule L M] [LieModule R L M]
variable [AddCommGroup N] [Module R N] [LieRingModule L N] [LieModule R L N]

namespace LieModule

/-- The kernel of the action of a Lie algebra `L` on a Lie module `M` as a Lie ideal in `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant13b0f3f3f02320863cebe2f1900a07e3a010f20746f20428413cbd4d8088e02f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant13b0f3f3f02320863cebe2f1900a07e3a010f20746f20428413cbd4d8088e02f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b16518292b5fe099cb93d0b315e892d5f184f5d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
