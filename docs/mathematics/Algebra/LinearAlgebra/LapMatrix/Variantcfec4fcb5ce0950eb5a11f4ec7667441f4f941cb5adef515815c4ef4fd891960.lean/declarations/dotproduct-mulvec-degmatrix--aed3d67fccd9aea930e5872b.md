# dotProduct_mulVec_degMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62654684abd09d46786536f0172042cb517cb891",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f39fc504-0f13-ea62-a628-4f64cca08661",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5535d970-36e1-5e69-c86a-76ee7f7c31db",
  "kind": "theorem",
  "lexical_name": "dotProduct_mulVec_degMatrix",
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
  "slug": "dotproduct-mulvec-degmatrix--aed3d67fccd9aea930e5872b",
  "source": {
    "blob": "62654684abd09d46786536f0172042cb517cb891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aed3d67fccd9aea930e5872babda4a1afe82318d4aa08d3f5bf89198b91a2f3c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5535d970-36e1-5e69-c86a-76ee7f7c31db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dotProduct_mulVec_degMatrix [CommSemiring R] (x : V → R) :
    x ⬝ᵥ (G.degMatrix R *ᵥ x) = ∑ i : V, G.degree i * x i * x i := by
  simp only [dotProduct, degMatrix, mulVec_diagonal, ← mul_assoc, mul_comm]

variable (R)

/-- Let $L$ be the graph Laplacian and let $x \in \mathbb{R}$, then
$$x^{\top} L x = \sum_{i \sim j} (x_{i}-x_{j})^{2}$$,
where $\sim$ denotes the adjacency relation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62654684abd09d46786536f0172042cb517cb891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
