# expand_comp_bind₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf648fa9-dead-bcdb-c5b5-474cad999b26",
  "kind": "theorem",
  "lexical_name": "expand_comp_bind₁",
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
  "slug": "expand-comp-bind--6674e2e9fd4ac9cab892e66c",
  "source": {
    "blob": "7279ac8ead3deb7f26053a4a2450460836db43ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 61,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6674e2e9fd4ac9cab892e66c88a9d72e07513cc7dcd59ecdbc483b4abf67afa8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf648fa9-dead-bcdb-c5b5-474cad999b26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expand_comp_bind₁ (p : ℕ) (f : σ → MvPolynomial τ R) :
    (expand p).comp (bind₁ f) = bind₁ fun i ↦ expand p (f i) := by
  apply algHom_ext
  intro i
  simp only [AlgHom.comp_apply, bind₁_X_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7279ac8ead3deb7f26053a4a2450460836db43ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
