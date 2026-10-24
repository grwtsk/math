# equalizerCondition_yonedaPresheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "988ef792acd8a799f03c716551a2153e06eace0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ad00f0e-9d24-c319-773c-dab74500704f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87d6b136-83ae-ec38-7692-ce7ec033c6b2",
  "kind": "theorem",
  "lexical_name": "equalizerCondition_yonedaPresheaf",
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
  "slug": "equalizercondition-yonedapresheaf--238203c5292f05e11127ce1e",
  "source": {
    "blob": "988ef792acd8a799f03c716551a2153e06eace0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:238203c5292f05e11127ce1e11923d85a64fdf1beafd7792e4687ab4cf2e2c02",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87d6b136-83ae-ec38-7692-ce7ec033c6b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equalizerCondition_yonedaPresheaf
    [∀ (Z B : C) (π : Z ⟶ B) [EffectiveEpi π], PreservesLimit (cospan π π) G]
    (hq : ∀ (Z B : C) (π : Z ⟶ B) [EffectiveEpi π], IsQuotientMap (G.map π)) :
      EqualizerCondition (yonedaPresheaf G X) := by
  apply EqualizerCondition.mk
  intro Z B π _ _
  refine ⟨fun a b h ↦ ?_, fun ⟨a, ha⟩ ↦ ?_⟩
  · simp only [yonedaPresheaf, unop_op, Quiver.Hom.unop_op, Set.coe_setOf, MapToEqualizer,
      Set.mem_setOf_eq, Subtype.mk.injEq, comp, ContinuousMap.mk.injEq] at h
    simp only [yonedaPresheaf, unop_op]
    ext x
    obtain ⟨y, hy⟩ := (hq Z B π).surjective x
    rw [← hy]
    exact congr_fun h y
  · simp only [yonedaPresheaf, comp, unop_op, Quiver.Hom.unop_op, Set.mem_setOf_eq,
      ContinuousMap.mk.injEq] at ha
    simp only [yonedaPresheaf, comp, unop_op, Quiver.Hom.unop_op, Set.coe_setOf,
      MapToEqualizer, Set.mem_setOf_eq, Subtype.mk.injEq]
    simp only [yonedaPresheaf, unop_op] at a
    refine ⟨(hq Z B π).lift a (factorsThrough_of_pullbackCondition G X ha), ?_⟩
    congr
    exact DFunLike.ext'_iff.mp ((hq Z B π).lift_comp a (factorsThrough_of_pullbackCondition G X ha))

/--
If `G` preserves finite coproducts (which is the case when `C` is `CompHaus`, `Profinite` or
`Stonean`), then `yonedaPresheaf` preserves finite products, which is required to be a sheaf for
the extensive topology.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `988ef792acd8a799f03c716551a2153e06eace0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
