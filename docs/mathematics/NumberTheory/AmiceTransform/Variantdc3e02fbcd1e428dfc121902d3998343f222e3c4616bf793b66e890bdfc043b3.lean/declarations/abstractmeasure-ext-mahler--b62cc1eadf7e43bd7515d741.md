# AbstractMeasure.ext_mahler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3be085b70a1f356a9abe33d20cabdae0ad3d94c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2da364a7-fc0a-9da7-1127-8f8ac69440af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fb81e28-1bab-1b26-644c-79ea06cb6854",
  "kind": "lemma",
  "lexical_name": "AbstractMeasure.ext_mahler",
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
  "slug": "abstractmeasure-ext-mahler--b62cc1eadf7e43bd7515d741",
  "source": {
    "blob": "3be085b70a1f356a9abe33d20cabdae0ad3d94c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b62cc1eadf7e43bd7515d7412cf5ef0564f600d6b72b6086d202e74511f5e10c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fb81e28-1bab-1b26-644c-79ea06cb6854`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AbstractMeasure.ext_mahler {μ : D(ℤ_[p], R)}
    (hμ : ∀ n, μ ((mahler n : C(ℤ_[p], ℤ_[p])) • 1) = 0) : μ = 0 := by
  obtain ⟨b, rfl⟩ := toCLMEquiv.symm.surjective μ
  simpa using PadicInt.ext_mahler (by simpa using hμ)

end Preliminaries

namespace AbstractMeasure

section Definitions

variable {R : Type*} [CommRing R] [TopologicalSpace R]
  [Algebra ℤ_[p] R] [ContinuousSMul ℤ_[p] R] [IsTopologicalRing R]

/--
The Amice transform, sending a measure `μ` on `ℤ_[p]` to the power series with `n`-th
coefficient `μ (mahler n)`. More suggestively, this is the series `∫ a : ℤ_[p], (1 + X) ^ a dμ`.

See also `amiceTransformEquiv` for the same map bundled as a linear equivalence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3be085b70a1f356a9abe33d20cabdae0ad3d94c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
