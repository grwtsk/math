# productCutoffMatrix_eq_sum_productFiberIncrements

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe15386d-1a12-733c-fe3a-37b1f032169e",
  "kind": "theorem",
  "lexical_name": "productCutoffMatrix_eq_sum_productFiberIncrements",
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
  "slug": "productcutoffmatrix-eq-sum-productfiberincrements--4eb08869f0ae286a0f8ef3c0",
  "source": {
    "blob": "e3617b9e9d539e1bfdf620907a2f5d07e98fab32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eb08869f0ae286a0f8ef3c0973685819c25d4d0facf8d9e4143b4b3aa95c327",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe15386d-1a12-733c-fe3a-37b1f032169e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productCutoffMatrix_eq_sum_productFiberIncrements
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) (x : ℕ) :
    productCutoffMatrix leftIndex rightIndex x =
      ∑ n ∈ Finset.range (x + 1),
        productFiberIncrementMatrix leftIndex rightIndex n := by
  induction x with
  | zero =>
      ext left right
      simp [productCutoffMatrix, productFiberIncrementMatrix]
  | succ x ih =>
      rw [productCutoffMatrix_succ, ih]
      rw [show x + 1 + 1 = Nat.succ (x + 1) by omega]
      simp only [Finset.sum_range_succ]

/-- The arithmetic bilinear cutoff pairing inherits the same exact prefix
decomposition. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3617b9e9d539e1bfdf620907a2f5d07e98fab32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
