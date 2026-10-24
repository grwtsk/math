# cylinder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:378ae60e6702f90e431ae6c58fefc6919b787565942b9c03cd81b40e9b6262c9",
  "kind": "def",
  "lexical_name": "cylinder",
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
  "slug": "cylinder--aef8326c8ecfd54e1c7502cb",
  "source": {
    "blob": "e3a1a1458883e1e8722ecefcbda6610a65933dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 135,
    "path": "GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aef8326c8ecfd54e1c7502cbf753e83099957f13a316ddeb5e3fa31607a64985",
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

Occurrence: `declaration:378ae60e6702f90e431ae6c58fefc6919b787565942b9c03cd81b40e9b6262c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cylinder (f g : E.Hom F) : PreOneHypercover.{max w w'} S where
  I₀ := Σ (i : E.I₀), F.I₁ (f.s₀ i) (g.s₀ i)
  X p := cylinderX f g p.2
  f p := cylinderf f g p.2
  I₁ p q := ULift.{max w w'} (E.I₁ p.1 q.1)
  Y {p q} k :=
    pullback
      (pullback.map (cylinderf f g p.2)
        (cylinderf f g q.2) _ _ (pullback.fst _ _) (pullback.fst _ _) (𝟙 S) (by simp)
        (by simp))
      (pullback.lift _ _ (E.w k.down))
  p₁ {p q} k := pullback.fst _ _ ≫ pullback.fst _ _
  p₂ {p q} k := pullback.fst _ _ ≫ pullback.snd _ _
  w {_ _} k := by simp [pullback.condition]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3a1a1458883e1e8722ecefcbda6610a65933dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
