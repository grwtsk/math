# Spec.homEquivRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebf1b5ae638b419ea5de2d49a75757cdbb8f9b4fc13f540c39749825a31e4684",
  "kind": "def",
  "lexical_name": "Spec.homEquivRingHom",
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
  "slug": "spec-homequivringhom--0d9942af107420ae31d3384c",
  "source": {
    "blob": "e2ffa7d6312ab6b19e80b0daee4e9736c666e610",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 613,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantb8b2c86747c9b87443428e6ef9f803651debd8a2565ba85c4cd1ffa5c9583715.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d9942af107420ae31d3384c61ca500aec754e7f2204b12f7fd9724d8c94956c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantb8b2c86747c9b87443428e6ef9f803651debd8a2565ba85c4cd1ffa5c9583715.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebf1b5ae638b419ea5de2d49a75757cdbb8f9b4fc13f540c39749825a31e4684`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Spec.homEquivRingHom {R S : Type u} [CommRing R] [CommRing S] :
    (Spec ↧S ⟶ Spec ↧R) ≃ (R →+* S) :=
  homEquiv.trans <| CategoryTheory.ConcreteCategory.homEquiv.trans <| .refl _

/-- The bijection between the set of scheme morphisms `Spec B ⟶ Spec A` commuting with their scheme
morphisms to `Spec R` and the set of concrete algebra homomorphisms `A →ₐ[R] B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantb8b2c86747c9b87443428e6ef9f803651debd8a2565ba85c4cd1ffa5c9583715.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantb8b2c86747c9b87443428e6ef9f803651debd8a2565ba85c4cd1ffa5c9583715.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2ffa7d6312ab6b19e80b0daee4e9736c666e610` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
