# mem_coeSubmodule_conductor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29a07561d840fab53bbcafae25f3cb79a86396ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d665a9e7-fd1a-e7e9-b08d-9729231f1808",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e2abdea-c6a3-b4d2-0457-20f2e2cc6cb4",
  "kind": "lemma",
  "lexical_name": "mem_coeSubmodule_conductor",
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
  "slug": "mem-coesubmodule-conductor--12f61085df785b42a9c9d2a7",
  "source": {
    "blob": "29a07561d840fab53bbcafae25f3cb79a86396ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 65,
    "path": "GRWTSK/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12f61085df785b42a9c9d2a7825396fb3ae23303a8823638030830d7035ae4ad",
  "verification": {
    "reference": "docs/verification/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e2abdea-c6a3-b4d2-0457-20f2e2cc6cb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_coeSubmodule_conductor {L} [CommRing L] [Algebra S L] [Algebra R L]
    [IsScalarTower R S L] [FaithfulSMul S L] {x : S} {y : L} :
    y ∈ coeSubmodule L (conductor R x) ↔ ∀ z : S,
      y * (algebraMap S L) z ∈ R[algebraMap S L x] := by
  trans ∀ z, y * (algebraMap S L) z ∈ (R[x]).map (IsScalarTower.toAlgHom R S L)
  · simp only [coeSubmodule, Submodule.mem_map, linearMap_apply, Subalgebra.mem_map,
      IsScalarTower.coe_toAlgHom']
    constructor
    · rintro ⟨y, hy, rfl⟩ z
      exact ⟨_, hy z, map_mul _ _ _⟩
    · intro H
      obtain ⟨y, _, e⟩ := H 1
      rw [map_one, mul_one] at e
      subst e
      simp only [← map_mul, (FaithfulSMul.algebraMap_injective S L).eq_iff,
        exists_eq_right] at H
      exact ⟨_, H, rfl⟩
  · rw [AlgHom.map_adjoin, Set.image_singleton]; rfl

variable {I : Ideal R}

/-- This technical lemma tells us that if `C` is the conductor of `R<x>` and `I` is an ideal of `R`
  then `p * (I * S) ⊆ I * R<x>` for any `p` in `C ∩ R` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29a07561d840fab53bbcafae25f3cb79a86396ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
