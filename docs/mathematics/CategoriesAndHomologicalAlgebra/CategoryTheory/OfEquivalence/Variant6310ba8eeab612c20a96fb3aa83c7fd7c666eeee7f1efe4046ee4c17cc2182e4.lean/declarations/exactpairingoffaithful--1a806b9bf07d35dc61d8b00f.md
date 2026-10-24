# exactPairingOfFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffeca19c58fef561833f1d5d2c527e707952edb47f06816b9bdd64baffe88bf7",
  "kind": "def",
  "lexical_name": "exactPairingOfFaithful",
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
  "slug": "exactpairingoffaithful--1a806b9bf07d35dc61d8b00f",
  "source": {
    "blob": "c4a6177f19390b9605eadc0e2c020c353a2099c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 25,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfEquivalence/Variant6310ba8eeab612c20a96fb3aa83c7fd7c666eeee7f1efe4046ee4c17cc2182e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a806b9bf07d35dc61d8b00fabd203558fce78d2d2ecd742e990136ec525bee8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfEquivalence/Variant6310ba8eeab612c20a96fb3aa83c7fd7c666eeee7f1efe4046ee4c17cc2182e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffeca19c58fef561833f1d5d2c527e707952edb47f06816b9bdd64baffe88bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactPairingOfFaithful [F.Faithful] {X Y : C} (eval : Y ⊗ X ⟶ 𝟙_ C)
    (coeval : 𝟙_ C ⟶ X ⊗ Y) [ExactPairing (F.obj X) (F.obj Y)]
    (map_eval : F.map eval = (δ F _ _) ≫ ε_ _ _ ≫ ε F)
    (map_coeval : F.map coeval = (η F) ≫ η_ _ _ ≫ μ F _ _) : ExactPairing X Y where
  evaluation' := eval
  coevaluation' := coeval
  evaluation_coevaluation' :=
    F.map_injective <| by
      simp [map_eval, map_coeval, Functor.Monoidal.map_whiskerLeft,
        Functor.Monoidal.map_whiskerRight]
  coevaluation_evaluation' :=
    F.map_injective <| by
      simp [map_eval, map_coeval, Functor.Monoidal.map_whiskerLeft,
        Functor.Monoidal.map_whiskerRight]

/-- Given a pair of objects which are sent by a fully faithful functor to a pair of objects
with an exact pairing, we get an exact pairing.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfEquivalence/Variant6310ba8eeab612c20a96fb3aa83c7fd7c666eeee7f1efe4046ee4c17cc2182e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfEquivalence/Variant6310ba8eeab612c20a96fb3aa83c7fd7c666eeee7f1efe4046ee4c17cc2182e4.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4a6177f19390b9605eadc0e2c020c353a2099c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
