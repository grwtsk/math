# isInitialIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a05604e240f450a2432ce9ecded85a012864dc3f938a90dbe8090eb7a6f5fa1",
  "kind": "def",
  "lexical_name": "isInitialIso",
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
  "slug": "isinitialiso--da7293ca177307e31ddd5ed4",
  "source": {
    "blob": "e1512232e5bc5386445cf1d1f04227e6c906be8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantaa5d1c8aae4f0cfd0c2dda09bb59f6aa072536b553c680a65b42e224184d3723.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da7293ca177307e31ddd5ed42045e1df184db975c82358cbe760f3930d9be434",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantaa5d1c8aae4f0cfd0c2dda09bb59f6aa072536b553c680a65b42e224184d3723.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a05604e240f450a2432ce9ecded85a012864dc3f938a90dbe8090eb7a6f5fa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isInitialIso (X : Arrow C) {I : C} (i : IsInitial I) {W : C} :
    (X □ i.to W) ≅ X.hom ▷ W :=
  haveI : IsIso (X.hom ▷ I) :=
    isIso_of_isInitial (i.ofIso (zeroMul i).symm) (i.ofIso (zeroMul i).symm) _
  haveI : IsPushout (X.hom ▷ I) (_ ◁ i.to W) ((i.ofIso (zeroMul i).symm).to _) (𝟙 _) :=
    .of_horiz_isIso (sq := ⟨(i.ofIso (zeroMul i).symm).hom_ext ..⟩)
  Arrow.isoMk' _ _ this.isoPushout.symm (Iso.refl _)
    (pushout.hom_ext ((i.ofIso (zeroMul i).symm).hom_ext ..) (by simp [pushout.inr_desc]))

set_option backward.defeqAttrib.useBackward true in
/-- The arrow isomorphism `(∅ ⟶ W) □ X ≅ W ◁ X` in a braided CCC with pushouts and
an initial object. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantaa5d1c8aae4f0cfd0c2dda09bb59f6aa072536b553c680a65b42e224184d3723.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variantaa5d1c8aae4f0cfd0c2dda09bb59f6aa072536b553c680a65b42e224184d3723.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1512232e5bc5386445cf1d1f04227e6c906be8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
