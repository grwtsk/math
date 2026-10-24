# mem_coeSubmodule_conductor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5052e4ea-4d7a-b95f-6e5c-08555610edde",
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
  "slug": "mem-coesubmodule-conductor--2d401ce3c1a32372747ae5cd",
  "source": {
    "blob": "8465d52f7ad404b9b02559befe9525d01d3a6cb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 95,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d401ce3c1a32372747ae5cdae1fde17f9c7a63e8e70a309140d277cf1c42470",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5052e4ea-4d7a-b95f-6e5c-08555610edde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_coeSubmodule_conductor {L} [CommRing L] [Algebra S L] [Algebra R L]
    [IsScalarTower R S L] [NoZeroSMulDivisors S L] {x : S} {y : L} :
    y ∈ coeSubmodule L (conductor R x) ↔ ∀ z : S,
      y * (algebraMap S L) z ∈ Algebra.adjoin R {algebraMap S L x} := by
  cases subsingleton_or_nontrivial L
  · rw [Subsingleton.elim (coeSubmodule L _) ⊤, Subsingleton.elim (Algebra.adjoin R _) ⊤]; simp
  trans ∀ z, y * (algebraMap S L) z ∈ (Algebra.adjoin R {x}).map (IsScalarTower.toAlgHom R S L)
  · simp only [coeSubmodule, Submodule.mem_map, Algebra.linearMap_apply, Subalgebra.mem_map,
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

/-- This technical lemma tell us that if `C` is the conductor of `R<x>` and `I` is an ideal of `R`
  then `p * (I * S) ⊆ I * R<x>` for any `p` in `C ∩ R` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8465d52f7ad404b9b02559befe9525d01d3a6cb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
