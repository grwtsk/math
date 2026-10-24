# imagAt_mul_of_conj_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7927b673-ca35-a65c-684e-c218be30d405",
  "kind": "theorem",
  "lexical_name": "imagAt_mul_of_conj_fixed",
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
  "slug": "imagat-mul-of-conj-fixed--3209bb3db9c8d63bace77cbf",
  "source": {
    "blob": "7b28a2ea77e43563b25646a5fcacfe4d937fefcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 238,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3209bb3db9c8d63bace77cbf2fd0e55b31e9dcb74e94faa63b17ce983ff333d1",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7927b673-ca35-a65c-684e-c218be30d405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imagAt_mul_of_conj_fixed
    {f x : E} (hf : galoisComplexConj E f = f)
    (σ : E ≃ₐ[ℚ] E) :
    imagAt E (f * x) σ =
      (complexEmbeddingAt E σ f).re * imagAt E x σ := by
  simp only [imagAt, map_mul, Complex.mul_im,
    embedding_im_zero_of_conj_fixed E hf σ, zero_mul, add_zero]

/-- Real sign condition required of a conjugation-fixed rescaling factor
relative to one anti-invariant seed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b28a2ea77e43563b25646a5fcacfe4d937fefcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
