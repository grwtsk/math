# functorIsoMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cf55f69cb8feb89c04bea4770654547e780e3afe1cf292046f9ea4b51a2dec2",
  "kind": "def",
  "lexical_name": "functorIsoMk",
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
  "slug": "functorisomk--f712f7f58fd1a958b67df439",
  "source": {
    "blob": "09288978b7be53504d510d0c56592ec8c5e5f440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 528,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f712f7f58fd1a958b67df4393c1fa22f2967c1b7a69ee1418e54ea3765895960",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cf55f69cb8feb89c04bea4770654547e780e3afe1cf292046f9ea4b51a2dec2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorIsoMk (A B : J ⥤ Triangle C) (iso₁ : A ⋙ π₁ ≅ B ⋙ π₁)
    (iso₂ : A ⋙ π₂ ≅ B ⋙ π₂) (iso₃ : A ⋙ π₃ ≅ B ⋙ π₃)
    (comm₁ : whiskerLeft A π₁Toπ₂ ≫ iso₂.hom = iso₁.hom ≫ whiskerLeft B π₁Toπ₂)
    (comm₂ : whiskerLeft A π₂Toπ₃ ≫ iso₃.hom = iso₂.hom ≫ whiskerLeft B π₂Toπ₃)
    (comm₃ : whiskerLeft A π₃Toπ₁ ≫ whiskerRight iso₁.hom (shiftFunctor C (1 : ℤ)) =
      iso₃.hom ≫ whiskerLeft B π₃Toπ₁) : A ≅ B where
  hom := functorHomMk _ _ iso₁.hom iso₂.hom iso₃.hom comm₁ comm₂ comm₃
  inv := functorHomMk _ _ iso₁.inv iso₂.inv iso₃.inv
    (by simp only [← cancel_epi iso₁.hom, ← reassoc_of% comm₁,
          Iso.hom_inv_id, comp_id, Iso.hom_inv_id_assoc])
    (by simp only [← cancel_epi iso₂.hom, ← reassoc_of% comm₂,
          Iso.hom_inv_id, comp_id, Iso.hom_inv_id_assoc])
    (by
      simp only [← cancel_epi iso₃.hom, ← reassoc_of% comm₃, Iso.hom_inv_id_assoc,
        ← whiskerRight_comp, Iso.hom_inv_id, whiskerRight_id']
      apply comp_id)

/-- Constructor for natural isomorphisms between functors constructed
with `functorMk`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09288978b7be53504d510d0c56592ec8c5e5f440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
