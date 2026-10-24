# IsPullback.isLimitFork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d28d80e5e1f2b818d761e638bb921a71116a4774e3dbb6e31867d48e90e6dfa",
  "kind": "def",
  "lexical_name": "IsPullback.isLimitFork",
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
  "slug": "ispullback-islimitfork--6db3941062b9f96e7cabac4c",
  "source": {
    "blob": "61e45d3b910dac2738ec3e862399af488af805a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 778,
    "line": 769,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6db3941062b9f96e7cabac4cd741cab10f816fce84a78c363dd91c32f31be986",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d28d80e5e1f2b818d761e638bb921a71116a4774e3dbb6e31867d48e90e6dfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 769–778.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsPullback.isLimitFork (H : IsPullback f f g g') : IsLimit (Fork.ofι f H.w) := by
  fapply Fork.IsLimit.mk
  · exact fun s => H.isLimit.lift (PullbackCone.mk s.ι s.ι s.condition)
  · exact fun s => H.isLimit.fac _ WalkingCospan.left
  · intro s m e
    apply PullbackCone.IsLimit.hom_ext H.isLimit <;> refine e.trans ?_ <;> symm <;>
      exact H.isLimit.fac _ _

/-- If `f f' : X ⟶ Y`, `g : Y ⟶ Z` forms a pushout square, then `g` is the coequalizer of
`f` and `f'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb32f7fc1502ee947afce1f686d9ae434d5a92f833a21414f237215bc2da2f7f3.lean#L769).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61e45d3b910dac2738ec3e862399af488af805a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
