# leftUnshift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d1f3f34b669d88c37fe224c92630c75dbc39ca75af953ea97eae87ac1f382c7",
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
  "slug": "leftunshift--51b77a467fd033f4e018f148",
  "source": {
    "blob": "b8e212634b5f53e0741408ea2c3ee9cdd7d94893",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 515,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51b77a467fd033f4e018f148a1302290c4d79a10fd5d17062dd67cdc8c6f1a3b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d1f3f34b669d88c37fe224c92630c75dbc39ca75af953ea97eae87ac1f382c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–522.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantd0bf2953a8a0f717d8b06157572ba41bfe44c0f24515236d48fd27421ab3c97f.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8e212634b5f53e0741408ea2c3ee9cdd7d94893` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
