# leftUnshift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b43e41d60ff976a38f29d8e3a2f1bf2a0821c7e6f21e9c55faf7c593ca88721",
  "kind": "def",
  "lexical_name": "leftUnshift",
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
  "slug": "leftunshift--2f38571903f2bebd0fd5b2f5",
  "source": {
    "blob": "fbd66e9f1a3e8f0746d9db9ad9e19eab1761afdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 523,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant8f8698aa8c43178325c414a985d7874fc28acdbc1fa433bf0d2f5c1df6033f9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f38571903f2bebd0fd5b2f53ce86100fda0cc95bc19eb9077d06b28310f6d22",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant8f8698aa8c43178325c414a985d7874fc28acdbc1fa433bf0d2f5c1df6033f9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b43e41d60ff976a38f29d8e3a2f1bf2a0821c7e6f21e9c55faf7c593ca88721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftUnshift {n' a : ℤ} (γ : Cocycle (K⟦a⟧) L n') (n : ℤ) (hn : n + a = n') :
    Cocycle K L n :=
  Cocycle.mk (γ.1.leftUnshift n hn) _ rfl (by
    rw [Cochain.δ_leftUnshift _ n hn (n + 1) (n + 1 + a) rfl,
      δ_eq_zero, Cochain.leftUnshift_zero, smul_zero])

/-- The map `Cocycle K L n → Cocycle (K⟦a⟧) (L⟦a⟧) n`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant8f8698aa8c43178325c414a985d7874fc28acdbc1fa433bf0d2f5c1df6033f9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant8f8698aa8c43178325c414a985d7874fc28acdbc1fa433bf0d2f5c1df6033f9e.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbd66e9f1a3e8f0746d9db9ad9e19eab1761afdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
