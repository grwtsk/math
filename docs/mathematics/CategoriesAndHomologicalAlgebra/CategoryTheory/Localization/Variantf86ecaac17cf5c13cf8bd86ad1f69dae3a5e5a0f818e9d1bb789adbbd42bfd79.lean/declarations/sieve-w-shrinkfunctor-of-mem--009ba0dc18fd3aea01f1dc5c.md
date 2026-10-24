# Sieve.W_shrinkFunctor_ι_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ccdfe6a-8c75-5928-930b-9ae118a63391",
  "kind": "lemma",
  "lexical_name": "Sieve.W_shrinkFunctor_ι_of_mem",
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
  "slug": "sieve-w-shrinkfunctor-of-mem--009ba0dc18fd3aea01f1dc5c",
  "source": {
    "blob": "1307b047891276bec9b4464fdc5d0168d3dbba7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantf86ecaac17cf5c13cf8bd86ad1f69dae3a5e5a0f818e9d1bb789adbbd42bfd79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:009ba0dc18fd3aea01f1dc5c01529393a469774a0472779671a4c9c452dfb48f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantf86ecaac17cf5c13cf8bd86ad1f69dae3a5e5a0f818e9d1bb789adbbd42bfd79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ccdfe6a-8c75-5928-930b-9ae118a63391`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Sieve.W_shrinkFunctor_ι_of_mem [LocallySmall.{w} C] {X : C} (S : Sieve X) (hS : S ∈ J X) :
    J.W (Sieve.shrinkFunctor.{w} S).ι := by
  intro Z hZ
  rw [isSheaf_iff_isSheaf_of_type] at hZ
  rw [← Presieve.isSheafFor_iff_bijective_shrinkFunctor_ι_comp]
  exact hZ _ hS

variable {D : Type*} [Category* D] {K : GrothendieckTopology D}

/-- SGA 4 III 1.2 (ii) => (i) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantf86ecaac17cf5c13cf8bd86ad1f69dae3a5e5a0f818e9d1bb789adbbd42bfd79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantf86ecaac17cf5c13cf8bd86ad1f69dae3a5e5a0f818e9d1bb789adbbd42bfd79.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1307b047891276bec9b4464fdc5d0168d3dbba7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
