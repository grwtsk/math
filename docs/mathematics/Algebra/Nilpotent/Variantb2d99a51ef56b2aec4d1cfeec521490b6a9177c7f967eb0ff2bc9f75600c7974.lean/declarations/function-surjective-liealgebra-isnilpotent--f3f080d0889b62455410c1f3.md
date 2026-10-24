# Function.Surjective.lieAlgebra_isNilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd6c1d057d91360eaf898e07cbc816d98dd8c2bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 849,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2d99a51ef56b2aec4d1cfeec521490b6a9177c7f967eb0ff2bc9f75600c7974.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9fff86f-464e-6735-2c7f-7f2fc5a924ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cca39ae1-7e55-fcdf-f832-67b4b155cedc",
  "kind": "theorem",
  "lexical_name": "Function.Surjective.lieAlgebra_isNilpotent",
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
  "slug": "function-surjective-liealgebra-isnilpotent--f3f080d0889b62455410c1f3",
  "source": {
    "blob": "dd6c1d057d91360eaf898e07cbc816d98dd8c2bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 855,
    "line": 849,
    "path": "GRWTSK/Algebra/Nilpotent/Variantb2d99a51ef56b2aec4d1cfeec521490b6a9177c7f967eb0ff2bc9f75600c7974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3f080d0889b62455410c1f39f31810f5360c05cb346f6a19f5e8f32fd4f7c47",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variantb2d99a51ef56b2aec4d1cfeec521490b6a9177c7f967eb0ff2bc9f75600c7974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cca39ae1-7e55-fcdf-f832-67b4b155cedc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 849–855.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Surjective.lieAlgebra_isNilpotent [h₁ : IsNilpotent L] {f : L →ₗ⁅R⁆ L'}
    (h₂ : Function.Surjective f) : IsNilpotent L' := by
  rw [LieRing.IsNilpotent, LieModule.isNilpotent_iff R] at h₁ ⊢
  peel h₁ with k hk
  rw [← LieIdeal.lowerCentralSeries_map_eq k h₂, hk]
  simp only [LieIdeal.map_eq_bot_iff, bot_le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variantb2d99a51ef56b2aec4d1cfeec521490b6a9177c7f967eb0ff2bc9f75600c7974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variantb2d99a51ef56b2aec4d1cfeec521490b6a9177c7f967eb0ff2bc9f75600c7974.lean#L849).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd6c1d057d91360eaf898e07cbc816d98dd8c2bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
