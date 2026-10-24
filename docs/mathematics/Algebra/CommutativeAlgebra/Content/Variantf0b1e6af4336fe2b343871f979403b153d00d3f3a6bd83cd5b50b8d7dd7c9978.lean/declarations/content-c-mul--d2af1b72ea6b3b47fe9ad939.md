# content_C_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc591b897f746325bac6c20eb86c99d71263ff84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f81b8d28-ecba-d157-8006-090b9c773403",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c968f54-5184-3fd9-44d2-f25132d3bb95",
  "kind": "theorem",
  "lexical_name": "content_C_mul",
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
  "slug": "content-c-mul--d2af1b72ea6b3b47fe9ad939",
  "source": {
    "blob": "bc591b897f746325bac6c20eb86c99d71263ff84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 146,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2af1b72ea6b3b47fe9ad9391f6c6a34ccd7bb150e99a2ce023eba7579817e03",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Content/Variantf0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c968f54-5184-3fd9-44d2-f25132d3bb95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem content_C_mul (r : R) (p : R[X]) : (C r * p).content = normalize r * p.content := by
  by_cases h0 : r = 0; · simp [h0]
  rw [content]; rw [content]; rw [← Finset.gcd_mul_left]
  refine' congr (congr rfl _) _ <;> ext <;> simp [h0, mem_support_iff]
set_option linter.uppercaseLean3 false in
#align polynomial.content_C_mul Polynomial.content_C_mul

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Content/Variantf0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf0b1e6af4336fe2b343871f979403b153d00d3f3a6bd83cd5b50b8d7dd7c9978.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc591b897f746325bac6c20eb86c99d71263ff84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
