# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aba9c5c0464e99e94df9fc0a7e8ab99bce562116a0551ace2cc008e9eae49a20",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--c5843babced78b8e8482aae2",
  "source": {
    "blob": "2e776c9f74de66096e6a8b3e1cd6f0ec70a3cb93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 189,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecSimpTest/Variantf266dc3b87c6c2eb95691976b959e343ab53887750bf8e02561b93af5dd2e841.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5843babced78b8e8482aae28f8bfb4e514ebbf204d1a55ad7b24629d117fccc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VecSimpTest/Variantf266dc3b87c6c2eb95691976b959e343ab53887750bf8e02561b93af5dd2e841.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aba9c5c0464e99e94df9fc0a7e8ab99bce562116a0551ace2cc008e9eae49a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : 1/2 + (1/4 * (1/4) +
    |(Matrix.vecCons (1/2 : ℝ)
        (fun i => Matrix.vecCons (-1/4) (fun _ => (3/8)) i) : Fin 3 → ℝ) 2| * (1/16)) ≤ 1 := by
  finsum_expand!  -- fully reduces vecCons and abs

/-! ### Matrix definition pattern

Replicate the structure from Example_7_7: a 3x3 lower triangular matrix with
entries defined via separate defs, then accessed column-wise.
-/

open Matrix in
-- Lower triangular matrix (simplified from Example_7_7)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecSimpTest/Variantf266dc3b87c6c2eb95691976b959e343ab53887750bf8e02561b93af5dd2e841.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecSimpTest/Variantf266dc3b87c6c2eb95691976b959e343ab53887750bf8e02561b93af5dd2e841.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e776c9f74de66096e6a8b3e1cd6f0ec70a3cb93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
