# smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d41074a73ccb8a9d513f7aa26ed2d38da635cbd491deed7dc689982d1262b7dd",
  "kind": "instance",
  "lexical_name": "smul",
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
  "slug": "smul--acfb10295e9410046eadce8a",
  "source": {
    "blob": "b11a3fbc9c897916b6b025056a1d23dc9b2de136",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acfb10295e9410046eadce8af49ce947db0075eeaeff309cb2aa8419a8d0f90d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d41074a73ccb8a9d513f7aa26ed2d38da635cbd491deed7dc689982d1262b7dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance smul [IsLattice A M] (a : Aˣ) : IsLattice A (a • M : Submodule R V) where
  fg := by
    obtain ⟨s, rfl⟩ := IsLattice.fg (M := M)
    rw [Submodule.smul_span]
    have : Finite (a • (s : Set V) : Set V) := Finite.Set.finite_image _ _
    exact Submodule.fg_span (Set.toFinite (a • (s : Set V)))
  span_eq_top := by
    rw [Submodule.coe_pointwise_smul, ← Submodule.smul_span, IsLattice.span_eq_top]
    ext x
    refine ⟨fun _ ↦ trivial, fun _ ↦ ?_⟩
    rw [show x = a • a⁻¹ • x by simp]
    exact Submodule.smul_mem_pointwise_smul _ _ _ (by trivial)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b11a3fbc9c897916b6b025056a1d23dc9b2de136` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
