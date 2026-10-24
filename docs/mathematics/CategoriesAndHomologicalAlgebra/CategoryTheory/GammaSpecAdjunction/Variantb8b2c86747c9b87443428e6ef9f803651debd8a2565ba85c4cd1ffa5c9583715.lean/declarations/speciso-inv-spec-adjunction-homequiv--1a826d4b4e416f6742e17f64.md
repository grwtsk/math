# ΓSpecIso_inv_ΓSpec_adjunction_homEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6aa5e01c-d550-2d82-fec1-b164f5534e81",
  "kind": "lemma",
  "lexical_name": "ΓSpecIso_inv_ΓSpec_adjunction_homEquiv",
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
  "slug": "speciso-inv-spec-adjunction-homequiv--1a826d4b4e416f6742e17f64",
  "source": {
    "blob": "e2ffa7d6312ab6b19e80b0daee4e9736c666e610",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 507,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantb8b2c86747c9b87443428e6ef9f803651debd8a2565ba85c4cd1ffa5c9583715.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a826d4b4e416f6742e17f64da9529395e41bbaa7eef0a8ac925682562037b4c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantb8b2c86747c9b87443428e6ef9f803651debd8a2565ba85c4cd1ffa5c9583715.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aa5e01c-d550-2d82-fec1-b164f5534e81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ΓSpecIso_inv_ΓSpec_adjunction_homEquiv {X : Scheme.{u}} {B : CommRingCat} (φ : B ⟶ Γ(X, ⊤)) :
    (Scheme.ΓSpecIso B).inv ≫ ((ΓSpec.adjunction.homEquiv X (op B)) φ.op).appTop = φ := by
  simp only [Adjunction.homEquiv_apply, Scheme.Spec_map, Opens.map_top, Scheme.Hom.comp_app]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantb8b2c86747c9b87443428e6ef9f803651debd8a2565ba85c4cd1ffa5c9583715.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantb8b2c86747c9b87443428e6ef9f803651debd8a2565ba85c4cd1ffa5c9583715.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2ffa7d6312ab6b19e80b0daee4e9736c666e610` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
