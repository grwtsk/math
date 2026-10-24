# isZariskiLocalAtTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3decf21a7ae6c5c601c467741370705012fd02b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/683c025b547e6ba09a8b0cd63d95ade22af6ec62b21f9927a945148ba4e4405a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:caa10241-2eae-0596-5b9c-a14c3381b802",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:654acebe-7b9a-42a4-c0fe-4b7bbcfecca5",
  "kind": "lemma",
  "lexical_name": "isZariskiLocalAtTarget",
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
  "slug": "iszariskilocalattarget--939e08286f6dbf5b0d5edb40",
  "source": {
    "blob": "b3decf21a7ae6c5c601c467741370705012fd02b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 292,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant683c025b547e6ba09a8b0cd63d95ade22af6ec62b21f9927a945148ba4e4405a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:939e08286f6dbf5b0d5edb402f607af6c5ad38fbe78e3f6f72b8150d044cefeb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant683c025b547e6ba09a8b0cd63d95ade22af6ec62b21f9927a945148ba4e4405a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:654acebe-7b9a-42a4-c0fe-4b7bbcfecca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isZariskiLocalAtTarget [P.IsMultiplicative]
    (hP : ∀ {X Y Z : Scheme.{u}} (f : X ⟶ Y) (g : Y ⟶ Z) [IsOpenImmersion g], P (f ≫ g) → P f) :
    IsZariskiLocalAtTarget P := by
  refine .mk_of_iff_of_zeroHypercover fun {X Y} f 𝒰 ↦ ⟨fun hf i ↦ ?_, fun h ↦ ?_⟩
  · apply hP _ (𝒰.f i)
    rw [← pullback.condition]
    exact IsZariskiLocalAtSource.comp hf _
  · rw [P.iff_of_zeroHypercover_source (𝒰.pullback₁ f)]
    intro i
    rw [← Scheme.Cover.pullbackHom_map]
    exact P.comp_mem _ _ (h i) (of_isOpenImmersion _)

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant683c025b547e6ba09a8b0cd63d95ade22af6ec62b21f9927a945148ba4e4405a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant683c025b547e6ba09a8b0cd63d95ade22af6ec62b21f9927a945148ba4e4405a.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3decf21a7ae6c5c601c467741370705012fd02b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
