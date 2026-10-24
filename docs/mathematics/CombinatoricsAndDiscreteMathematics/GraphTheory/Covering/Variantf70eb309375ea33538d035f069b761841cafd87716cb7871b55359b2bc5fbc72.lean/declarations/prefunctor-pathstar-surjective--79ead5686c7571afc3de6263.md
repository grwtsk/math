# Prefunctor.pathStar_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ca79576a04a2a05b12a41894eb1fbb010f7a237",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f5dc51f-4116-fa38-cd8d-b834d4d8a41d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e58e82fa-ff79-659d-dd7b-c28b5b511398",
  "kind": "theorem",
  "lexical_name": "Prefunctor.pathStar_surjective",
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
  "slug": "prefunctor-pathstar-surjective--79ead5686c7571afc3de6263",
  "source": {
    "blob": "0ca79576a04a2a05b12a41894eb1fbb010f7a237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 249,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79ead5686c7571afc3de6263761ac933e788b2133836cacb4e8bfdc58acd53e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e58e82fa-ff79-659d-dd7b-c28b5b511398`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prefunctor.pathStar_surjective (hφ : ∀ u, Surjective (φ.star u)) (u : U) :
    Surjective (φ.pathStar u) := by
  dsimp [Prefunctor.pathStar, Quiver.PathStar.mk]
  rintro ⟨v, p⟩
  induction' p with v' v'' p' ev ih
  · use ⟨u, Path.nil⟩
    simp only [Prefunctor.mapPath_nil, eq_self_iff_true, heq_iff_eq, and_self_iff]
  · obtain ⟨⟨u', q'⟩, h⟩ := ih
    simp only at h
    obtain ⟨rfl, rfl⟩ := h
    obtain ⟨⟨u'', eu⟩, k⟩ := hφ u' ⟨_, ev⟩
    simp only [star_apply, Sigma.mk.inj_iff] at k
    -- Porting note: was `obtain ⟨rfl, rfl⟩ := k`
    obtain ⟨rfl, k⟩ := k
    simp only [heq_eq_eq] at k
    subst k
    use⟨_, q'.cons eu⟩
    simp only [Prefunctor.mapPath_cons, eq_self_iff_true, heq_iff_eq, and_self_iff]
#align prefunctor.path_star_surjective Prefunctor.pathStar_surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf70eb309375ea33538d035f069b761841cafd87716cb7871b55359b2bc5fbc72.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ca79576a04a2a05b12a41894eb1fbb010f7a237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
