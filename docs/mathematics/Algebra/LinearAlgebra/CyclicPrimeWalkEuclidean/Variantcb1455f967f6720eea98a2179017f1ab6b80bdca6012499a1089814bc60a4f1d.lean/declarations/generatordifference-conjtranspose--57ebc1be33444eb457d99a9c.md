# generatorDifference_conjTranspose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd24a34d-efcf-024f-4a32-78dcfc9bd64e",
  "kind": "theorem",
  "lexical_name": "generatorDifference_conjTranspose",
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
  "slug": "generatordifference-conjtranspose--57ebc1be33444eb457d99a9c",
  "source": {
    "blob": "41cc464f45d7ead31f06d19d0a0f361e069f5680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 271,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Variantcb1455f967f6720eea98a2179017f1ab6b80bdca6012499a1089814bc60a4f1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57ebc1be33444eb457d99a9c8600e3339b3c5c471c5f9a199574568dc5062485",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Variantcb1455f967f6720eea98a2179017f1ab6b80bdca6012499a1089814bc60a4f1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd24a34d-efcf-024f-4a32-78dcfc9bd64e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generatorDifference_conjTranspose :
    (residueOneReflection - residueFiveReflection)ᴴ =
      residueOneReflection - residueFiveReflection := by
  rw [generatorDifference_entries]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Matrix.conjTranspose_apply]

/-- Exact `L²` operator norm of the generator difference.  The proof uses
`DᴴD = D² = 3I`, the C⋆ identity, and the nonnegative square root. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Variantcb1455f967f6720eea98a2179017f1ab6b80bdca6012499a1089814bc60a4f1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Variantcb1455f967f6720eea98a2179017f1ab6b80bdca6012499a1089814bc60a4f1d.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41cc464f45d7ead31f06d19d0a0f361e069f5680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
