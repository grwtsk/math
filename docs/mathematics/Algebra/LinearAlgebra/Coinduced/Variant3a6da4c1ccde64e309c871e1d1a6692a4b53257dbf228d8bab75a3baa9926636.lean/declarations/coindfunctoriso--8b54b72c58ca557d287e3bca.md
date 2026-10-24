# coindFunctorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91bed4a891a161cf6c406b88b8773bb56c46b54361e3f87e3054247820f6ec05",
  "kind": "def",
  "lexical_name": "coindFunctorIso",
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
  "slug": "coindfunctoriso--8b54b72c58ca557d287e3bca",
  "source": {
    "blob": "75aec53916f41d3e5edd337d36d1fb5a7edd6504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 245,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coinduced/Variant3a6da4c1ccde64e309c871e1d1a6692a4b53257dbf228d8bab75a3baa9926636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b54b72c58ca557d287e3bca5e3a633d6a2446597a36c11aea5749d928a9fe39",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coinduced/Variant3a6da4c1ccde64e309c871e1d1a6692a4b53257dbf228d8bab75a3baa9926636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91bed4a891a161cf6c406b88b8773bb56c46b54361e3f87e3054247820f6ec05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coindFunctorIso : coindFunctor k φ ≅ coindFunctor' k φ :=
  NatIso.ofComponents (coindIso φ) fun _ => by
    ext
    exact coind'_ext _ fun _ ↦ by simp [coindIso, coindMap']

end CoindIso

noncomputable section Adjunction

set_option backward.isDefEq.respectTransparency.types false in
/-- The morphism induced by the adjunction between `res φ` and `coind φ` sending a morphism
  `f : res φ B ⟶ A` to the morphism `B ⟶ coind φ A` given by the underlying linear map sending
  `b : B.V` to the function sending `h : H` to `f ((B.ρ h) b)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coinduced/Variant3a6da4c1ccde64e309c871e1d1a6692a4b53257dbf228d8bab75a3baa9926636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coinduced/Variant3a6da4c1ccde64e309c871e1d1a6692a4b53257dbf228d8bab75a3baa9926636.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75aec53916f41d3e5edd337d36d1fb5a7edd6504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
