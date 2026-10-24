# supported_eq_range_rename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "427aed843e47526ffaf6c1949d7c34a093493109",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc313341f5fd6716db9b8e7d1ed7b1ea8e319309f80f573e0f22d73719536b48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38d90670-8149-6419-193c-3e88e7a7b227",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff2c5b87-f9a2-3cfe-38c0-79ae9b5cb2e3",
  "kind": "theorem",
  "lexical_name": "supported_eq_range_rename",
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
  "slug": "supported-eq-range-rename--30118099bb5562e148c34a32",
  "source": {
    "blob": "427aed843e47526ffaf6c1949d7c34a093493109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 41,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Supported/Variantbc313341f5fd6716db9b8e7d1ed7b1ea8e319309f80f573e0f22d73719536b48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30118099bb5562e148c34a3230c5316bd2429b733a6191ce8a7bbd53db39e17b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Supported/Variantbc313341f5fd6716db9b8e7d1ed7b1ea8e319309f80f573e0f22d73719536b48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff2c5b87-f9a2-3cfe-38c0-79ae9b5cb2e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supported_eq_range_rename (s : Set σ) : supported R s = (rename ((↑) : s → σ)).range := by
  rw [supported, Set.image_eq_range, adjoin_range_eq_range_aeval, rename]
  congr

/-- The isomorphism between the subalgebra of polynomials supported by `s` and
`MvPolynomial s R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Supported/Variantbc313341f5fd6716db9b8e7d1ed7b1ea8e319309f80f573e0f22d73719536b48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Supported/Variantbc313341f5fd6716db9b8e7d1ed7b1ea8e319309f80f573e0f22d73719536b48.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `427aed843e47526ffaf6c1949d7c34a093493109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
