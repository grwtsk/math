# constVSub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db4b0dd989c509ae4f7f09fdf821d5085ed45a2c0f65ee3e7c06e4d83f9d1c1a",
  "kind": "def",
  "lexical_name": "constVSub",
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
  "slug": "constvsub--b19cc5ea34a3cfce17623bb9",
  "source": {
    "blob": "71b5fbd6b72dd95db69b1dc91a88c1dc3d424cf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 381,
    "path": "GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant0c95ed705f51fb5799b1b78af5154e89bcbd3f7008f91e5122e1f50a287904dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b19cc5ea34a3cfce17623bb98d23ccf8193ee397fa0cb1213b970b604cc287bd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AffineEquiv/Variant0c95ed705f51fb5799b1b78af5154e89bcbd3f7008f91e5122e1f50a287904dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db4b0dd989c509ae4f7f09fdf821d5085ed45a2c0f65ee3e7c06e4d83f9d1c1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constVSub (p : P₁) : P₁ ≃ᵃ[k] V₁ where
  toEquiv := Equiv.constVSub p
  linear := LinearEquiv.neg k
  map_vadd' p' v := by simp [vsub_vadd_eq_vsub_sub, neg_add_eq_sub]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AffineEquiv/Variant0c95ed705f51fb5799b1b78af5154e89bcbd3f7008f91e5122e1f50a287904dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant0c95ed705f51fb5799b1b78af5154e89bcbd3f7008f91e5122e1f50a287904dc.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71b5fbd6b72dd95db69b1dc91a88c1dc3d424cf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
