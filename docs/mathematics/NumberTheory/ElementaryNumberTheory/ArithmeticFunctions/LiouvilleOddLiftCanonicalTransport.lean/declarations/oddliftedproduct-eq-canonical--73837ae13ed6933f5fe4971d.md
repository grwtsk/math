# oddLiftedProduct_eq_canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:033712f8-a735-9603-9d12-23abaedf6f7e",
  "kind": "theorem",
  "lexical_name": "oddLiftedProduct_eq_canonical",
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
  "slug": "oddliftedproduct-eq-canonical--73837ae13ed6933f5fe4971d",
  "source": {
    "blob": "5a6adcdcdcd52e2d7b7d89c47d22fca54e714b43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 118,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73837ae13ed6933f5fe4971d7d1b2f978370aadabc5506ae3dde0b82d46106cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:033712f8-a735-9603-9d12-23abaedf6f7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oddLiftedProduct_eq_canonical (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) (n : ℕ) :
    oddLiftedProductTerm H S n =
      ∏ j ∈ oddLiftSubset H S,
        ((ArithmeticFunction.liouville (n + j.val + 1) : ℤ) : ℚ) := by
  classical
  unfold oddLiftedProductTerm oddLiftSubset
  rw [Equiv.finsetCongr_apply, Finset.prod_map]
  apply Finset.prod_congr rfl
  intro h _
  have hindex :
      n + 2 * h.val + 2 =
        n + (oddLiftSubtypeEquiv H h).val + 1 := by
    rw [oddLiftSubtypeEquiv_val]
    omega
  exact congrArg
    (fun t : ℕ => ((ArithmeticFunction.liouville t : ℤ) : ℚ))
    hindex

/-- The lifted 2M-root mean is exactly the CANONICAL arithmetic
Liouville mean on the genuine image shift set, with the same
normalization 2M and no collision or endpoint correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftCanonicalTransport.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a6adcdcdcd52e2d7b7d89c47d22fca54e714b43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
