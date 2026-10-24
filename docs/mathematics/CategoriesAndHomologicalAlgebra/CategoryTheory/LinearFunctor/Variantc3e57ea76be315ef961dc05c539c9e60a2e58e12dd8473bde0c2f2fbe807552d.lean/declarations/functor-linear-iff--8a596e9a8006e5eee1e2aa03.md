# Functor.linear_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d8e16ae9c2b9ebccacc28d214cdd68fa82b6b68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0ceb190-52f1-53f6-9af5-efe41c7759df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f304f870-d34e-e153-5b6b-5cc7ac0bd616",
  "kind": "lemma",
  "lexical_name": "Functor.linear_iff",
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
  "slug": "functor-linear-iff--8a596e9a8006e5eee1e2aa03",
  "source": {
    "blob": "6d8e16ae9c2b9ebccacc28d214cdd68fa82b6b68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a596e9a8006e5eee1e2aa038ca2e9d483635e69df0295eedeff647f8583d727",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f304f870-d34e-e153-5b6b-5cc7ac0bd616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Functor.linear_iff (F : C ⥤ D) :
    Functor.Linear R F ↔ ∀ (X : C) (r : R), F.map (r • 𝟙 X) = r • 𝟙 (F.obj X) := by
  constructor
  · intro h X r
    rw [h.map_smul, F.map_id]
  · refine fun h => ⟨fun {X Y} f r => ?_⟩
    have : r • f = (r • 𝟙 X) ≫ f := by simp
    rw [this, F.map_comp, h, Linear.smul_comp, Category.id_comp]

section Linear

namespace Functor

section

variable {R} [Linear R F]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d8e16ae9c2b9ebccacc28d214cdd68fa82b6b68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
