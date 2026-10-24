# nonUnitalStarAlgHom_precomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5206461cdfa621f925f1740fb874b1a5b5d540c01735c6dea0b21691ba2fceb8",
  "kind": "def",
  "lexical_name": "nonUnitalStarAlgHom_precomp",
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
  "slug": "nonunitalstaralghom-precomp--d47d0626ed1fd8f60442d6b9",
  "source": {
    "blob": "245b94a27b25ea886c0522611dd3ed88cdfe04d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 449,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variantb2d2e156b50d5d53c818d71a5b713b7b6171c0dc5a4577ca0ca23e4eff198809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d47d0626ed1fd8f60442d6b9f0e7339631efad93f106851faa968fe9bede8676",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousMapZero/Variantb2d2e156b50d5d53c818d71a5b713b7b6171c0dc5a4577ca0ca23e4eff198809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5206461cdfa621f925f1740fb874b1a5b5d540c01735c6dea0b21691ba2fceb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nonUnitalStarAlgHom_precomp (f : C(X, Y)₀) : C(Y, R)₀ →⋆ₙₐ[R] C(X, R)₀ where
  toFun g := g.comp f
  map_zero' := rfl
  map_add' _ _ := rfl
  map_mul' _ _ := rfl
  map_star' _ := rfl
  map_smul' _ _ := rfl

variable (X) in
/-- The functor `C(X, ·)₀` from non-unital topological star algebras (with non-unital continuous
star homomorphisms) to non-unital star algebras. -/
@[simps apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousMapZero/Variantb2d2e156b50d5d53c818d71a5b713b7b6171c0dc5a4577ca0ca23e4eff198809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variantb2d2e156b50d5d53c818d71a5b713b7b6171c0dc5a4577ca0ca23e4eff198809.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `245b94a27b25ea886c0522611dd3ed88cdfe04d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
