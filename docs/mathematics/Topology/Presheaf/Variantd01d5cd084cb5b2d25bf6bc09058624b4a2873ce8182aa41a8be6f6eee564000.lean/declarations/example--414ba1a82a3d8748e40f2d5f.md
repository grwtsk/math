# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1650d288147e0152cfc6e2d097f6fdf55eb56940dc6e090fcd3b655576f9d0f2",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--414ba1a82a3d8748e40f2d5f",
  "source": {
    "blob": "5444303c843083eca5e6b9d5002114d95c8343b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 107,
    "path": "GRWTSK/Topology/Presheaf/Variantd01d5cd084cb5b2d25bf6bc09058624b4a2873ce8182aa41a8be6f6eee564000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:414ba1a82a3d8748e40f2d5fb2e1763e9fc2d85a2433d0046c0166fca4edd634",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variantd01d5cd084cb5b2d25bf6bc09058624b4a2873ce8182aa41a8be6f6eee564000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1650d288147e0152cfc6e2d097f6fdf55eb56940dc6e090fcd3b655576f9d0f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {X} [CompleteLattice X] (v : Nat → X) (w x y z : X) (e : v 0 = v 1) (_ : v 1 = v 2)
    (h₀ : v 1 ≤ x) (_ : x ≤ z ⊓ w) (h₂ : x ≤ y ⊓ z) : v 0 ≤ y := by
  restrict_tac

variable {X : TopCat.{w}} {C : Type u} [Category.{v} C] {FC : C → C → Type*} {CC : C → Type*}
variable [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)] [ConcreteCategory C FC]

/-- The restriction of a section along an inclusion of open sets.
For `x : F.obj (op V)`, we provide the notation `x |_ₕ i` (`h` stands for `hom`) for `i : U ⟶ V`,
and the notation `x |_ₗ U ⟪i⟫` (`l` stands for `le`) for `i : U ≤ V`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variantd01d5cd084cb5b2d25bf6bc09058624b4a2873ce8182aa41a8be6f6eee564000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variantd01d5cd084cb5b2d25bf6bc09058624b4a2873ce8182aa41a8be6f6eee564000.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5444303c843083eca5e6b9d5002114d95c8343b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
