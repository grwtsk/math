# SemilinearMapClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edba679649ef5364a797438367aa1827774f98952d2d3f47966e3623a19ec31b",
  "kind": "class",
  "lexical_name": "SemilinearMapClass",
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
  "slug": "semilinearmapclass--b6830b46ed3583e3939abb1e",
  "source": {
    "blob": "9feb83ebac684637800434c22c833cd2628a0c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 121,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6830b46ed3583e3939abb1e478eeee7a3dc5aaa45361e3b65ba815467949cf9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edba679649ef5364a797438367aa1827774f98952d2d3f47966e3623a19ec31b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SemilinearMapClass (F : Type*) {R S : outParam (Type*)} [Semiring R] [Semiring S]
  (σ : outParam (R →+* S)) (M M₂ : outParam (Type*)) [AddCommMonoid M] [AddCommMonoid M₂]
  [Module R M] [Module S M₂] extends AddHomClass F M M₂ where
  /-- A semilinear map preserves scalar multiplication up to some ring homomorphism `σ`.
  See also `_root_.map_smul` for the case where `σ` is the identity. -/
  map_smulₛₗ : ∀ (f : F) (r : R) (x : M), f (r • x) = σ r • f x
#align semilinear_map_class SemilinearMapClass

end

-- Porting note: `dangerousInstance` linter has become smarter about `outParam`s
-- `σ` becomes a metavariable but that's fine because it's an `outParam`
-- attribute [nolint dangerousInstance] SemilinearMapClass.toAddHomClass

export SemilinearMapClass (map_smulₛₗ)

attribute [simp] map_smulₛₗ

/-- `LinearMapClass F R M M₂` asserts `F` is a type of bundled `R`-linear maps `M → M₂`.

This is an abbreviation for `SemilinearMapClass F (RingHom.id R) M M₂`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9feb83ebac684637800434c22c833cd2628a0c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
