# coeff_rename_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d16ddf46015ca45c086f648b3fde88d740fce8b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe7565bd-e8a0-ae78-e97a-a73e90c3d470",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a0c13df-4f67-e834-e693-f5ec84c7493e",
  "kind": "theorem",
  "lexical_name": "coeff_rename_eq_zero",
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
  "slug": "coeff-rename-eq-zero--aa2ae1fc6b8c4bcefdea2765",
  "source": {
    "blob": "d16ddf46015ca45c086f648b3fde88d740fce8b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 304,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa2ae1fc6b8c4bcefdea2765aa182229324efede1a0a39f248eb6cb435ad6271",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Rename/Variant071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a0c13df-4f67-e834-e693-f5ec84c7493e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_rename_eq_zero (f : σ → τ) (φ : MvPolynomial σ R) (d : τ →₀ ℕ)
    (h : ∀ u : σ →₀ ℕ, u.mapDomain f = d → φ.coeff u = 0) : (rename f φ).coeff d = 0 := by
  classical
  rw [rename_eq, ← not_mem_support_iff]
  intro H
  replace H := mapDomain_support H
  rw [Finset.mem_image] at H
  obtain ⟨u, hu, rfl⟩ := H
  specialize h u rfl
  simp at h hu
  contradiction
#align mv_polynomial.coeff_rename_eq_zero MvPolynomial.coeff_rename_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Rename/Variant071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d16ddf46015ca45c086f648b3fde88d740fce8b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
