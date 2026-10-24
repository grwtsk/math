# KaehlerDifferential.kerTotal_mkQ_single_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cef68402fb7b80b00ca0436233549a4e9ceee37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 503,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c93e809-58b2-be53-4730-d1a1aa49ad3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea26bc2a-201a-ce4c-19ef-53bf13f0efa2",
  "kind": "theorem",
  "lexical_name": "KaehlerDifferential.kerTotal_mkQ_single_smul",
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
  "slug": "kaehlerdifferential-kertotal-mkq-single-smul--df63cc5acda064fa5f3bcd83",
  "source": {
    "blob": "8cef68402fb7b80b00ca0436233549a4e9ceee37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 503,
    "path": "GRWTSK/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df63cc5acda064fa5f3bcd83fa8a42c53e821c566abbcd96d825aeb77ef21ec5",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea26bc2a-201a-ce4c-19ef-53bf13f0efa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KaehlerDifferential.kerTotal_mkQ_single_smul (r : R) (x y) : (y𝖣r • x) = r • y𝖣x := by
  let : SMulZeroClass R S := inferInstance
  rw [Algebra.smul_def, KaehlerDifferential.kerTotal_mkQ_single_mul,
    KaehlerDifferential.kerTotal_mkQ_single_algebraMap, add_zero, ← LinearMap.map_smul_of_tower,
    Finsupp.smul_single, mul_comm, Algebra.smul_def]

set_option backward.isDefEq.respectTransparency.types false in
/-- The (universal) derivation into `(S →₀ S) ⧸ KaehlerDifferential.kerTotal R S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cef68402fb7b80b00ca0436233549a4e9ceee37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
