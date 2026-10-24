# arrowCongrEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f03a9c2d544db838e85b8b3cbf655ca894bcb4c5d06266e1109c1320448e5c72",
  "kind": "def",
  "lexical_name": "arrowCongrEquiv",
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
  "slug": "arrowcongrequiv--ffd7b23a226891f30bc6ac8d",
  "source": {
    "blob": "3a67ddc34e87aee2cab759eef74be013519386a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 652,
    "line": 646,
    "path": "GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant50004557c9cb3e60d3cb447556af81082043c98572cfc16370208659ba6542ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffd7b23a226891f30bc6ac8d57f7d42a64974d040e7a50cfcd1d5dfce0a0b680",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AffineEquiv/Variant50004557c9cb3e60d3cb447556af81082043c98572cfc16370208659ba6542ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f03a9c2d544db838e85b8b3cbf655ca894bcb4c5d06266e1109c1320448e5c72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def arrowCongrEquiv : (P₁ →ᵃ[k] P₃) ≃ (P₂ →ᵃ[k] P₄) where
  toFun f := e₂.toAffineMap.comp <| f.comp e₁.symm.toAffineMap
  invFun f := e₂.symm.toAffineMap.comp <| f.comp e₁.toAffineMap
  left_inv _ := by ext; simp
  right_inv _ := by ext; simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AffineEquiv/Variant50004557c9cb3e60d3cb447556af81082043c98572cfc16370208659ba6542ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant50004557c9cb3e60d3cb447556af81082043c98572cfc16370208659ba6542ed.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a67ddc34e87aee2cab759eef74be013519386a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
