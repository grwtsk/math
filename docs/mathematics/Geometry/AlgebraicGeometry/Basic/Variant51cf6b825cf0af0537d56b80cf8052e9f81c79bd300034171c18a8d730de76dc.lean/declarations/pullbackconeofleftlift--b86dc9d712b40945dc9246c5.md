# pullbackConeOfLeftLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84a4f5b545b189c09ab0f3821b78f8339b576815ca6aa3b41381758a93845979",
  "kind": "def",
  "lexical_name": "pullbackConeOfLeftLift",
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
  "slug": "pullbackconeofleftlift--b86dc9d712b40945dc9246c5",
  "source": {
    "blob": "22b1569af81b9358ba015aba3f8e97b03c814037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 420,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b86dc9d712b40945dc9246c536386586b10ee48e34d8160ec43cfdce6ea7ee98",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84a4f5b545b189c09ab0f3821b78f8339b576815ca6aa3b41381758a93845979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackConeOfLeftLift : s.pt ⟶ (pullbackConeOfLeft f g).pt where
  base :=
    pullback.lift s.fst.base s.snd.base
      (congr_arg (fun x => PresheafedSpace.Hom.base x) s.condition)
  c :=
    { app := fun U =>
        s.snd.c.app _ ≫
          s.pt.presheaf.map
            (eqToHom
              (by
                dsimp only [Opens.map, IsOpenMap.functor, Functor.op]
                congr 2
                let s' : PullbackCone f.base g.base := PullbackCone.mk s.fst.base s.snd.base
                  -- Porting note : in mathlib3, this is just an underscore
                  (congr_arg Hom.base s.condition)

                have : _ = s.snd.base := limit.lift_π s' WalkingCospan.right
                conv_lhs =>
                  erw [← this]
                  dsimp
                  -- Porting note : need a bit more hand holding here about function composition
                  rw [coe_comp, show ∀ f g, f ∘ g = fun x => f (g x) from fun _ _ => rfl]
                  erw [← Set.preimage_preimage]
                erw [Set.preimage_image_eq _
                    (TopCat.snd_openEmbedding_of_left_openEmbedding hf.base_open g.base).inj]
                rfl))
      naturality := fun U V i => by
        erw [s.snd.c.naturality_assoc]
        rw [Category.assoc]
        erw [← s.pt.presheaf.map_comp, ← s.pt.presheaf.map_comp]
        congr 1 }
#align algebraic_geometry.PresheafedSpace.is_open_immersion.pullback_cone_of_left_lift AlgebraicGeometry.PresheafedSpace.IsOpenImmersion.pullbackConeOfLeftLift

-- this lemma is not a `simp` lemma, because it is an implementation detail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b1569af81b9358ba015aba3f8e97b03c814037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
