# complexBarycenter_centered_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d4f18260897909407af939a7ce6e58c41b7a199",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0aa49913-6caf-dc3a-7e29-e8bd3a79c5c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:262e0fb1-110d-de7c-32cc-a54ad53e9ff5",
  "kind": "theorem",
  "lexical_name": "complexBarycenter_centered_eq_zero",
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
  "slug": "complexbarycenter-centered-eq-zero--7ed031953b8743d82457ee83",
  "source": {
    "blob": "7d4f18260897909407af939a7ce6e58c41b7a199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 334,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ed031953b8743d82457ee831e84be38d0f86a31e2492aaa3c351ed775064a14",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:262e0fb1-110d-de7c-32cc-a54ad53e9ff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexBarycenter_centered_eq_zero {count : Nat}
    (embedding : WeightedComplexEmbedding count) :
    complexBarycenter (centeredEmbedding embedding) = 0 := by
  have weightSum : ∑ index, (embedding.weight index : ℂ) = 1 := by
    exact_mod_cast embedding.normalized
  simp only [complexBarycenter, centeredEmbedding, mul_sub,
    Finset.sum_sub_distrib]
  rw [← Finset.sum_mul, weightSum]
  simp

/-- TB normalization: complex centering is idempotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4f18260897909407af939a7ce6e58c41b7a199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
