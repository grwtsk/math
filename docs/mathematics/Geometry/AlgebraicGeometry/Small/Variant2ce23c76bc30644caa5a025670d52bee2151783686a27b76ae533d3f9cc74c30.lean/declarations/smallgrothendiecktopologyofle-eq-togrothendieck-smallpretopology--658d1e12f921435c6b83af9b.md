# smallGrothendieckTopologyOfLE_eq_toGrothendieck_smallPretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71d02013f5603aea09344ac6fdd5ea1cccaf77f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5103721f-bae2-f318-49b5-0d0ba8448230",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c3a8f59-a5aa-c585-4596-32bad576fe36",
  "kind": "lemma",
  "lexical_name": "smallGrothendieckTopologyOfLE_eq_toGrothendieck_smallPretopology",
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
  "slug": "smallgrothendiecktopologyofle-eq-togrothendieck-smallpretopology--658d1e12f921435c6b83af9b",
  "source": {
    "blob": "71d02013f5603aea09344ac6fdd5ea1cccaf77f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 193,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:658d1e12f921435c6b83af9b7360f0fca26a1308595865ebeda52d1f4d74e45c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c3a8f59-a5aa-c585-4596-32bad576fe36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smallGrothendieckTopologyOfLE_eq_toGrothendieck_smallPretopology (hPQ : P ≤ Q) :
    S.smallGrothendieckTopologyOfLE hPQ = (S.smallPretopology P Q).toGrothendieck := by
  ext X R
  simp only [Pretopology.mem_toGrothendieck, Functor.mem_inducedTopology_sieves_iff,
    MorphismProperty.Comma.forget_obj, mem_overGrothendieckTopology]
  constructor
  · intro ⟨𝒰, h, le⟩
    have hj (j : 𝒰.J) : Q (𝒰.obj j ↘ S) := by
      rw [← comp_over (𝒰.map j)]
      exact Q.comp_mem _ _ (hPQ _ <| 𝒰.map_prop _) X.prop
    refine ⟨𝒰.toPresieveOverProp hj, ?_, ?_⟩
    · use 𝒰, h, hj
    · rintro - - ⟨i⟩
      let fi : (𝒰.obj i).asOverProp S (hj i) ⟶ X := (𝒰.map i).asOverProp S
      have : R.functorPushforward _ ((MorphismProperty.Over.forget Q ⊤ S).map fi) := le _ ⟨i⟩
      rwa [Sieve.functorPushforward_apply,
        Sieve.mem_functorPushforward_iff_of_full_of_faithful] at this
  · rintro ⟨T, ⟨𝒰, h, p, rfl⟩, le⟩
    use 𝒰, h
    rintro - - ⟨i⟩
    exact ⟨(𝒰.obj i).asOverProp S (p i), (𝒰.map i).asOverProp S, 𝟙 _, le _ ⟨i⟩, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71d02013f5603aea09344ac6fdd5ea1cccaf77f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
