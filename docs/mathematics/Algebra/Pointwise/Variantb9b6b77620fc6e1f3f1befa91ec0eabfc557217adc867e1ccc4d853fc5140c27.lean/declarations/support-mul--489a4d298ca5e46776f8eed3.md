# support_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7327ab520c49e4d321d7821191aaa1e7d641b042",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:463846c0-b6c8-09d7-0a3b-3589aed7da65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:482b6ca2-f2e9-5849-4610-ca94c4204449",
  "kind": "theorem",
  "lexical_name": "support_mul",
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
  "slug": "support-mul--489a4d298ca5e46776f8eed3",
  "source": {
    "blob": "7327ab520c49e4d321d7821191aaa1e7d641b042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 62,
    "path": "GRWTSK/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:489a4d298ca5e46776f8eed3f83df402afb5c605e2929e87c45f94f6fbf2ec29",
  "verification": {
    "reference": "docs/verification/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:482b6ca2-f2e9-5849-4610-ca94c4204449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_mul [DecidableEq α] {g₁ g₂ : α →₀ β} :
    (g₁ * g₂).support ⊆ g₁.support ∩ g₂.support :=
  subset_inter support_mul_subset_left support_mul_subset_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pointwise/Variantb9b6b77620fc6e1f3f1befa91ec0eabfc557217adc867e1ccc4d853fc5140c27.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7327ab520c49e4d321d7821191aaa1e7d641b042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
