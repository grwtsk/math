# ordinaryHypergeometric_div_Gamma_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5835678327c06fb3961637b3741b6088b6fc6726",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/128f946176d1ac01c5f10032511e6d59ac46046d3e070a6161ed74f23ec24414.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c9e1c76-b869-c0b9-6ab2-ae50471a9fe3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9a4e797-ec32-ab73-39d8-c4133da5d4e4",
  "kind": "theorem",
  "lexical_name": "ordinaryHypergeometric_div_Gamma_eq",
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
  "slug": "ordinaryhypergeometric-div-gamma-eq--baaf4a7ddf90cdd866fa3a1a",
  "source": {
    "blob": "5835678327c06fb3961637b3741b6088b6fc6726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 325,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Variant128f946176d1ac01c5f10032511e6d59ac46046d3e070a6161ed74f23ec24414.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baaf4a7ddf90cdd866fa3a1aa0dc6439cc93e5f8bdcf668da825c808e95c98db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Variant128f946176d1ac01c5f10032511e6d59ac46046d3e070a6161ed74f23ec24414.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9a4e797-ec32-ab73-39d8-c4133da5d4e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinaryHypergeometric_div_Gamma_eq (hc : ∀ k : ℕ, c ≠ -k) :
    ordinaryHypergeometric a b c z / Gamma c = regularizedGaussHGFun a b c z := by
  rw [regularizedGaussHGFun, ordinaryHypergeometric, div_eq_inv_mul, ← smul_eq_mul,
    FormalMultilinearSeries.const_smul_sum_apply]
  congr
  ext n
  simp [Gamma_inv_mul_ordinaryHypergeometricSeries_eq hc]

variable (b c) in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Variant128f946176d1ac01c5f10032511e6d59ac46046d3e070a6161ed74f23ec24414.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Variant128f946176d1ac01c5f10032511e6d59ac46046d3e070a6161ed74f23ec24414.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5835678327c06fb3961637b3741b6088b6fc6726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
