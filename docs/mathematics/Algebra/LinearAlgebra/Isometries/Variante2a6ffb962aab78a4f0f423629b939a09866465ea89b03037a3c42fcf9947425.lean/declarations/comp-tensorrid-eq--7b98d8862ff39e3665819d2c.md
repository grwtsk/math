# comp_tensorRId_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac6b62d0f006fdb40fd46b1db02354bada3e4696",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce248079-8c65-792b-82fa-7dc214a2d2d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74602300-0071-cd44-f83f-6e7b0daef1c7",
  "kind": "theorem",
  "lexical_name": "comp_tensorRId_eq",
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
  "slug": "comp-tensorrid-eq--7b98d8862ff39e3665819d2c",
  "source": {
    "blob": "ac6b62d0f006fdb40fd46b1db02354bada3e4696",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 155,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b98d8862ff39e3665819d2ce932c5cb512cb45adf3e6cb4a50466a72e00ff36",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74602300-0071-cd44-f83f-6e7b0daef1c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_tensorRId_eq (Q₁ : QuadraticForm R M₁) :
    Q₁.comp (TensorProduct.rid R M₁) = Q₁.tmul (sq (R := R)) := by
  refine (QuadraticMap.associated_rightInverse R).injective ?_
  ext m₁ m₁'
  dsimp [-associated_apply]
  simp only [associated_tmul, QuadraticMap.associated_comp]
  simp [-associated_apply, one_mul]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac6b62d0f006fdb40fd46b1db02354bada3e4696` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
