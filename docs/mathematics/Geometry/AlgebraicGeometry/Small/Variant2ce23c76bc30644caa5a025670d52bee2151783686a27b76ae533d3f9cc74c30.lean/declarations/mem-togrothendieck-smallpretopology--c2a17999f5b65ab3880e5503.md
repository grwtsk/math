# mem_toGrothendieck_smallPretopology

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
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01f211a1-d7ed-2ea9-dace-04340da3b08c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:782fcdea-6bb5-310a-36ef-3f2c9f2d4b64",
  "kind": "lemma",
  "lexical_name": "mem_toGrothendieck_smallPretopology",
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
  "slug": "mem-togrothendieck-smallpretopology--c2a17999f5b65ab3880e5503",
  "source": {
    "blob": "71d02013f5603aea09344ac6fdd5ea1cccaf77f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 221,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2a17999f5b65ab3880e55035c33ec3da6cd7b0b21926e586c2cb9c475ea166b",
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

Occurrence: `result:782fcdea-6bb5-310a-36ef-3f2c9f2d4b64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_toGrothendieck_smallPretopology (X : Q.Over ⊤ S) (R : Sieve X) :
    R ∈ (S.smallPretopology P Q).toGrothendieck _ X ↔
      ∀ x : X.left, ∃ (Y : Q.Over ⊤ S) (f : Y ⟶ X) (y : Y.left),
        R f ∧ P f.left ∧ f.left.base y = x := by
  rw [Pretopology.mem_toGrothendieck]
  refine ⟨?_, fun h ↦ ?_⟩
  · rintro ⟨T, ⟨𝒰, h, p, rfl⟩, hle⟩
    intro x
    obtain ⟨y, hy⟩ := 𝒰.covers x
    refine ⟨(𝒰.obj (𝒰.f x)).asOverProp S (p _), (𝒰.map (𝒰.f x)).asOverProp S, y, hle _ ?_,
      𝒰.map_prop _, hy⟩
    use 𝒰.f x
  · choose Y f y hf hP hy using h
    let 𝒰 : X.left.Cover P :=
      { J := X.left,
        obj := fun i ↦ (Y i).left
        map := fun i ↦ (f i).left
        map_prop := hP
        f := id
        covers := fun i ↦ ⟨y i, hy i⟩ }
    letI : 𝒰.Over S :=
      { over := fun i ↦ inferInstance
        isOver_map := fun i ↦ inferInstance }
    refine ⟨𝒰.toPresieveOverProp fun i ↦ MorphismProperty.Comma.prop _, ?_, ?_⟩
    · use 𝒰, inferInstance, fun i ↦ MorphismProperty.Comma.prop _
    · rintro - - ⟨i⟩
      exact hf i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71d02013f5603aea09344ac6fdd5ea1cccaf77f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
