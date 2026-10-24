# stableUnderBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2a4f81adbdbb053d4d0b15edfb5c9f4b60bfd82cc8e80674533a24a8d30d261",
  "kind": "instance",
  "lexical_name": "stableUnderBaseChange",
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
  "slug": "stableunderbasechange--75919cd503d66501a29df2a4",
  "source": {
    "blob": "1402e1a84771dc857005db60977a95ece2808417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 199,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75919cd503d66501a29df2a4c8adb0d80a4f96c1617ade3bdd406a0370a1b4e3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2a4f81adbdbb053d4d0b15edfb5c9f4b60bfd82cc8e80674533a24a8d30d261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance stableUnderBaseChange : ValuativeCriterion.Existence.IsStableUnderBaseChange := by
  constructor
  intro Y' X X' Y Y'_to_Y f X'_to_X f' hP hf commSq
  let commSq' : ValuativeCommSq f :=
  { R := commSq.R
    K := commSq.K
    i₁ := commSq.i₁ ≫ X'_to_X
    i₂ := commSq.i₂ ≫ Y'_to_Y
    commSq := ⟨by simp only [Category.assoc, hP.w, reassoc_of% commSq.commSq.w]⟩ }
  obtain ⟨l₀, hl₁, hl₂⟩ := (hf commSq').exists_lift
  refine ⟨⟨⟨hP.lift l₀ commSq.i₂ (by simp_all only [commSq']), ?_, hP.lift_snd _ _ _⟩⟩⟩
  apply hP.hom_ext
  · simpa
  · simp only [Category.assoc]
    rw [hP.lift_snd]
    rw [commSq.commSq.w]

@[stacks 01KE]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1402e1a84771dc857005db60977a95ece2808417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
