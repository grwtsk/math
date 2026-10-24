# adjacentPermutationHops_satisfy_s3_relations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b52b0480-bb27-d477-5b9f-384ef4987ab5",
  "kind": "theorem",
  "lexical_name": "adjacentPermutationHops_satisfy_s3_relations",
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
  "slug": "adjacentpermutationhops-satisfy-s3-relations--af2b450ae7e46eccb3b2c40f",
  "source": {
    "blob": "2441aa420267a3a8f616dbb8bf00c4a78e9fdff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 384,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af2b450ae7e46eccb3b2c40f3b47fe8d74e8a943a4478eb52af6bf3dc3cf8f07",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b52b0480-bb27-d477-5b9f-384ef4987ab5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjacentPermutationHops_satisfy_s3_relations :
    let left := permutationRepresentation adjacentSwap01
    let right := permutationRepresentation adjacentSwap12
    left * right * left = right * left * right ∧
      left * left = 1 ∧ right * right = 1 := by
  dsimp
  constructor
  · exact congrArg permutationRepresentation adjacentSwap_braid
  · constructor
    · exact congrArg permutationRepresentation adjacentSwap01_sq
    · exact congrArg permutationRepresentation adjacentSwap12_sq

/-! ## Generic payload-preserving lift

The linear fiber remains the authoritative geometric coordinate.  An
unstructured payload can be carried alongside it without being interpreted as
a vector, a phase, or a geometric invariant.  Consequently the lift is an
ordinary `Equiv`, not a `LinearEquiv` on the product.
-/

/-- Lift a fiber automorphism while leaving an arbitrary payload unchanged. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2441aa420267a3a8f616dbb8bf00c4a78e9fdff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
