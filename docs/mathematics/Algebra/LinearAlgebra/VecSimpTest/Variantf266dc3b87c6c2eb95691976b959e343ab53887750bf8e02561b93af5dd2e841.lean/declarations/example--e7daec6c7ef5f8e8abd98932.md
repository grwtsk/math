# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f82ee4242c2e478ff654fa188a52e34cb51152129145293a734c104111969d14",
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
  "slug": "example--e7daec6c7ef5f8e8abd98932",
  "source": {
    "blob": "2e776c9f74de66096e6a8b3e1cd6f0ec70a3cb93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 163,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecSimpTest/Variantf266dc3b87c6c2eb95691976b959e343ab53887750bf8e02561b93af5dd2e841.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7daec6c7ef5f8e8abd9893219dd7b75d244c6074f60b3c8d4ab22f9582bd268",
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

Occurrence: `declaration:f82ee4242c2e478ff654fa188a52e34cb51152129145293a734c104111969d14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : |(Matrix.vecCons (1/2 : ℝ)
    (fun i => Matrix.vecCons (-1/4) (fun _ => (3/8)) i) : Fin 3 → ℝ) 2| = 3/8 := by vec_simp!

/-! ### finsum_expand! integration

After finsum_expand! expands a Fin sum, we often have |vecCons ...| expressions.
finsum_expand! now uses vec_index_simp_with_dite internally to handle these.
-/

-- finsum_expand! alone should fully reduce
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecSimpTest/Variantf266dc3b87c6c2eb95691976b959e343ab53887750bf8e02561b93af5dd2e841.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecSimpTest/Variantf266dc3b87c6c2eb95691976b959e343ab53887750bf8e02561b93af5dd2e841.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e776c9f74de66096e6a8b3e1cd6f0ec70a3cb93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
