# discr_eq_det_embeddingsMatrixReindex_pow_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a028d09f4b60d9fbd7f1b65b2e295176e72920bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80353762-9d89-3f29-bbf7-885048402cdd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d156b9e-46b8-d02a-a1f3-46b3806db851",
  "kind": "theorem",
  "lexical_name": "discr_eq_det_embeddingsMatrixReindex_pow_two",
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
  "slug": "discr-eq-det-embeddingsmatrixreindex-pow-two--ca7903b08117fc2cab93e615",
  "source": {
    "blob": "a028d09f4b60d9fbd7f1b65b2e295176e72920bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca7903b08117fc2cab93e615d58a832a85a2ecaf7e0ab0d4529f8354ec0101f2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d156b9e-46b8-d02a-a1f3-46b3806db851`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_eq_det_embeddingsMatrixReindex_pow_two
    [Algebra.IsSeparable K L] (e : ι ≃ (L →ₐ[K] E)) :
    algebraMap K E (discr K b) = (embeddingsMatrixReindex K E b e).det ^ 2 := by
  rw [discr_def, RingHom.map_det, RingHom.mapMatrix_apply,
    traceMatrix_eq_embeddingsMatrixReindex_mul_trans, det_mul, det_transpose, pow_two]

/-- The discriminant of a power basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantf7b4e1e13895b97232dae819038b468ab44a90f1476b20bd942745bd81e2b318.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a028d09f4b60d9fbd7f1b65b2e295176e72920bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
