# dotProduct_vecMul_hadamard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b295bc0-d281-1a4b-dab1-ea9bd3561116",
  "kind": "theorem",
  "lexical_name": "dotProduct_vecMul_hadamard",
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
  "slug": "dotproduct-vecmul-hadamard--7b0bc968c977bb932a302632",
  "source": {
    "blob": "c870679cf91ca1ef0f8474a05f29675802513df0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 157,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b0bc968c977bb932a30263275fa4f6bba700e085f1ab42825429d606728ac96",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b295bc0-d281-1a4b-dab1-ea9bd3561116`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dotProduct_vecMul_hadamard [DecidableEq m] [DecidableEq n] (v : m → α) (w : n → α) :
    v ᵥ* (A ⊙ B) ⬝ᵥ w = trace (diagonal v * A * (B * diagonal w)ᵀ) := by
  rw [← sum_hadamard_eq, Finset.sum_comm]
  simp [dotProduct, vecMul, Finset.sum_mul, mul_assoc]

end trace

end BasicProperties

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c870679cf91ca1ef0f8474a05f29675802513df0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
