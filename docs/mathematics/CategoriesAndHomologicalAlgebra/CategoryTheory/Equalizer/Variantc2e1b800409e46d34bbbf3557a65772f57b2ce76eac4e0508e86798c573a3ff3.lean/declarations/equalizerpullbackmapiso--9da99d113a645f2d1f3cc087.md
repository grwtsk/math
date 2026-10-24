# equalizerPullbackMapIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:316766c12af077cb784a6565bda09c7b9e7ac601dbf417dc5eb583c3780d8837",
  "kind": "def",
  "lexical_name": "equalizerPullbackMapIso",
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
  "slug": "equalizerpullbackmapiso--9da99d113a645f2d1f3cc087",
  "source": {
    "blob": "e51c89581bfb967b866754f5e87b8b996f7f228d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9da99d113a645f2d1f3cc087ad65e6775bdbe53cbdf9bb51a1ff58effbbcff0b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:316766c12af077cb784a6565bda09c7b9e7ac601dbf417dc5eb583c3780d8837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equalizerPullbackMapIso {f g : X ⟶ Y} {s : X ⟶ S} {t : Y ⟶ S}
    (hf : f ≫ t = s) (hg : g ≫ t = s) (v : T ⟶ S) :
    equalizer
      (pullback.map s v t v f (𝟙 T) (𝟙 S) (by simp [hf]) (by simp))
      (pullback.map s v t v g (𝟙 T) (𝟙 S) (by simp [hg]) (by simp)) ≅
    pullback (equalizer.ι f g) (pullback.fst s v) :=
  letI lhs := pullback.map s v t v f (𝟙 T) (𝟙 S) (by simp [hf]) (by simp)
  letI rhs := pullback.map s v t v g (𝟙 T) (𝟙 S) (by simp [hg]) (by simp)
  haveI hl : pullback.fst s v ≫ f = lhs ≫ pullback.fst _ _ := by simp [lhs]
  haveI hr : pullback.fst s v ≫ g = rhs ≫ pullback.fst _ _ := by simp [rhs]
  letI e : equalizer lhs rhs ≅ pullback (equalizer.ι f g) (pullback.fst s v) :=
    { hom := pullback.lift
        (equalizer.lift (equalizer.ι _ _ ≫ pullback.fst _ _) (by
          simp [hl, hr, equalizer.condition_assoc lhs rhs]))
        (pullback.lift (equalizer.ι _ _ ≫ pullback.fst _ _)
          (equalizer.ι _ _ ≫ pullback.snd _ _) (by simp [pullback.condition]))
        (by simp)
      inv := equalizer.lift
        (pullback.map _ _ _ _ (equalizer.ι _ _) (pullback.snd _ _) s rfl
          (by simp [pullback.condition]))
        (by ext <;> simp [lhs, rhs, equalizer.condition f g])
      hom_inv_id := by ext <;> simp
      inv_hom_id := by ext <;> simp [pullback.condition] }
  e

variable {f g : X ⟶ Y} {s : X ⟶ S} {t : Y ⟶ S} (hf : f ≫ t = s) (hg : g ≫ t = s) (v : T ⟶ S)

set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e51c89581bfb967b866754f5e87b8b996f7f228d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
