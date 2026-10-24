# inner_ιMulti_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7b8acfca3889734d65056e9a88f0e6fe8c461f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e01d38ed-6292-d73c-1ee8-65e6bb81d662",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e06a7106-dcb3-2a8b-7394-b4f639e0d3bb",
  "kind": "lemma",
  "lexical_name": "inner_ιMulti_self",
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
  "slug": "inner-multi-self--eaca6ccb22fb45882aedfbc4",
  "source": {
    "blob": "d7b8acfca3889734d65056e9a88f0e6fe8c461f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaca6ccb22fb45882aedfbc41910d644adec64c557068877d2875b242f53875c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e06a7106-dcb3-2a8b-7394-b4f639e0d3bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inner_ιMulti_self [FiniteDimensional ℝ E] (x : Fin n → E) :
    ⟪ιMulti ℝ n x, ιMulti ℝ n x⟫ = det (gram ℝ x) :=
  innerProductForm_ιMulti_self x

end exteriorPower

section OrthonormalBasis

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] [FiniteDimensional ℝ E]
variable {I : Type*} [Fintype I] [LinearOrder I]

/-- An orthonormal basis of a finite-dimensional real inner product space `E` induces an
orthonormal basis of `⋀[ℝ]^n E`, indexed by `n`-element subsets of the index type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b8acfca3889734d65056e9a88f0e6fe8c461f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
