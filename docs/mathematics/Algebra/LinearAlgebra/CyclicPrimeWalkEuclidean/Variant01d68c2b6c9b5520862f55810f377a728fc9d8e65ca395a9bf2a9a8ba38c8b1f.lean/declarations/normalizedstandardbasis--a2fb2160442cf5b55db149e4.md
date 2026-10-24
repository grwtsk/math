# normalizedStandardBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a993ea3b04b9ace265f170659b50ae5e5216fb7901ef94b3f87ea4286901ff90",
  "kind": "def",
  "lexical_name": "normalizedStandardBasis",
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
  "slug": "normalizedstandardbasis--a2fb2160442cf5b55db149e4",
  "source": {
    "blob": "c71b778053817eea36b70901ef87578bbcacddcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Variant01d68c2b6c9b5520862f55810f377a728fc9d8e65ca395a9bf2a9a8ba38c8b1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2fb2160442cf5b55db149e4f5e26169920db5629b2975671a8b56fd8a90af8f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Variant01d68c2b6c9b5520862f55810f377a728fc9d8e65ca395a9bf2a9a8ba38c8b1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a993ea3b04b9ace265f170659b50ae5e5216fb7901ef94b3f87ea4286901ff90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizedStandardBasis : Fin 2 → euclideanZeroSumSubspace
  | 0 => ⟨normalizedBasisZeroVector, normalizedBasisZero_mem⟩
  | 1 => ⟨normalizedBasisOneVector, normalizedBasisOne_mem⟩

/-- The displayed pair is genuinely orthonormal for the inherited `L²`
inner product on the Euclidean zero-sum plane. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Variant01d68c2b6c9b5520862f55810f377a728fc9d8e65ca395a9bf2a9a8ba38c8b1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Variant01d68c2b6c9b5520862f55810f377a728fc9d8e65ca395a9bf2a9a8ba38c8b1f.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c71b778053817eea36b70901ef87578bbcacddcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
