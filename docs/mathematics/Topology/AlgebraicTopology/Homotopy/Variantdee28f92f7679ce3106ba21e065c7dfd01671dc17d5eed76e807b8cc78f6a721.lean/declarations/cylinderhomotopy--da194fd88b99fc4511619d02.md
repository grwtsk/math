# cylinderHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6270b10c42302df203f08c9f26529c5f3a2e04bb4a6e6e2675593b393f10fc2c",
  "kind": "def",
  "lexical_name": "cylinderHomotopy",
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
  "slug": "cylinderhomotopy--da194fd88b99fc4511619d02",
  "source": {
    "blob": "e3a1a1458883e1e8722ecefcbda6610a65933dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 217,
    "path": "GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da194fd88b99fc4511619d02d4c23106c09f117eb8fcd24f3b83f5bdaae898a3",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6270b10c42302df203f08c9f26529c5f3a2e04bb4a6e6e2675593b393f10fc2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cylinderHomotopy :
    Homotopy ((cylinderHom f g).comp f) ((cylinderHom f g).comp g) where
  H p := p.2
  a p := pullback.snd _ _
  wl p := by
    have : F.p₁ p.snd = pullback.lift _ _ (F.w p.2) ≫ pullback.fst _ _ := by simp
    nth_rw 1 [this]
    rw [← pullback.condition_assoc]
    simp
  wr p := by
    have : g.h₀ p.fst = pullback.lift (f.h₀ p.fst) (g.h₀ p.fst) (by simp) ≫
        pullback.snd (F.f _) (F.f _) := by simp
    dsimp only [cylinder_X, Hom.comp_s₀, cylinder_I₀, Function.comp_apply, cylinderHom_s₀,
      Hom.comp_h₀, cylinderHom_h₀]
    nth_rw 3 [this]
    rw [pullback.condition_assoc]
    simp

/-- Up to homotopy, the category of (pre-)`1`-hypercovers is cofiltered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3a1a1458883e1e8722ecefcbda6610a65933dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
