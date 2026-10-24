# blockMap_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:945b3efd-cf98-dfee-54f5-683da9dd7b8a",
  "kind": "theorem",
  "lexical_name": "blockMap_lift",
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
  "slug": "blockmap-lift--e80f1627bdb273a872d81e82",
  "source": {
    "blob": "72a01fb15a7aa88b8438df2fc023b2b34e5f0ed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 112,
    "path": "GRWTSK/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e80f1627bdb273a872d81e82ea974a65c55c426504ec45f6bb133e4b11b8b2e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:945b3efd-cf98-dfee-54f5-683da9dd7b8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockMap_lift (A : Matrix ι ι R) (U : Matrix ι κ R) (C : Matrix κ ι R)
    (B : Matrix κ κ R) [Invertible B] (x : ι → R) :
    blockMap A U C B (lift C B x) = ((schur A U C B).mulVec x, 0) := by
  apply Prod.ext
  · simp only [blockMap_apply, lift_apply, mulVec_neg]
    rw [schur, sub_mulVec, ← mulVec_mulVec, ← mulVec_mulVec]
    exact (sub_eq_add_neg _ _).symm
  · simp only [blockMap_apply, lift_apply, mulVec_neg, mulVec_mulVec,
      ← Matrix.mul_assoc, mul_invOf_self, Matrix.one_mul, add_neg_cancel]

/-- Exact full/reduced equation equivalence, without a sign assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72a01fb15a7aa88b8438df2fc023b2b34e5f0ed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
