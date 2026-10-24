# isStableUnderBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7e6c11018b17d62ff43f80f575ff3334072ab254ce0d8d2b14455b4a27e1acd",
  "kind": "instance",
  "lexical_name": "isStableUnderBaseChange",
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
  "slug": "isstableunderbasechange--c866cbdf16293c9d0268f3bd",
  "source": {
    "blob": "32bac392ced9f8f130bc8cf5cb4b71fd074a8f59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 155,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c866cbdf16293c9d0268f3bdf7d8b666aeccdf571547adf6998fdedbd815a84d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7e6c11018b17d62ff43f80f575ff3334072ab254ce0d8d2b14455b4a27e1acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isStableUnderBaseChange : MorphismProperty.IsStableUnderBaseChange @IsImmersion where
  of_isPullback := by
    intros X Y Y' S f g f' g' H hg
    let Z := Limits.pullback f g.coborderRange.ι
    let e : Y' ⟶ Z := Limits.pullback.lift g' (f' ≫ g.liftCoborder) (by simpa using H.w.symm)
    have : IsClosedImmersion e := by
      have := (IsPullback.paste_horiz_iff (.of_hasPullback f g.coborderRange.ι)
        (show e ≫ Limits.pullback.snd _ _ = _ from Limits.pullback.lift_snd _ _ _)).mp ?_
      · exact MorphismProperty.of_isPullback this.flip inferInstance
      · simpa [e] using H.flip
    rw [← Limits.pullback.lift_fst (f := f) (g := g.coborderRange.ι) g' (f' ≫ g.liftCoborder)
      (by simpa using H.w.symm)]
    infer_instance

open Limits Scheme.Pullback in
/-- The diagonal morphism is always an immersion. -/
@[stacks 01KJ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32bac392ced9f8f130bc8cf5cb4b71fd074a8f59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
