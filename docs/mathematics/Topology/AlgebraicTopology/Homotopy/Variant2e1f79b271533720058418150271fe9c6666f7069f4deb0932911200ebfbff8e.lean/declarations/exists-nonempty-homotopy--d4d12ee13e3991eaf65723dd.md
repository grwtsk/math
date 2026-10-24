# exists_nonempty_homotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:868ebab2-256a-340b-2156-a1394fd1212b",
  "kind": "lemma",
  "lexical_name": "exists_nonempty_homotopy",
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
  "slug": "exists-nonempty-homotopy--d4d12ee13e3991eaf65723dd",
  "source": {
    "blob": "abeb7be41df0bc98254793490384f02e7ef78783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 244,
    "path": "GRWTSK/Topology/AlgebraicTopology/Homotopy/Variant2e1f79b271533720058418150271fe9c6666f7069f4deb0932911200ebfbff8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4d12ee13e3991eaf65723ddb1a0141289ad9b2afe59f176188f4819509272f9",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Homotopy/Variant2e1f79b271533720058418150271fe9c6666f7069f4deb0932911200ebfbff8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:868ebab2-256a-340b-2156-a1394fd1212b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_nonempty_homotopy (f g : E.Hom F) :
    ∃ (W : PreOneHypercover.{max w w'} S) (h : W.Hom E),
      Nonempty (Homotopy (h.comp f) (h.comp g)) :=
  ⟨cylinder f g, PreOneHypercover.cylinderHom f g, ⟨cylinderHomotopy f g⟩⟩

end PreOneHypercover

namespace GrothendieckTopology

open PreOneHypercover OneHypercover

variable {J : GrothendieckTopology C}

namespace OneHypercover

variable {S : C} {E : OneHypercover.{w} J S} {F : OneHypercover.{w'} J S}
variable [HasPullbacks C]

set_option backward.isDefEq.respectTransparency.types false in
/-- Given two refinement morphism `f, g : E ⟶ F`, this is a `1`-hypercover `W` that
admits a morphism `h : W ⟶ E` such that `h ≫ f` and `h ≫ g` are homotopic. Hence
they become equal after quotienting out by homotopy. -/
@[simps! toPreOneHypercover]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Homotopy/Variant2e1f79b271533720058418150271fe9c6666f7069f4deb0932911200ebfbff8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Homotopy/Variant2e1f79b271533720058418150271fe9c6666f7069f4deb0932911200ebfbff8e.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abeb7be41df0bc98254793490384f02e7ef78783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
