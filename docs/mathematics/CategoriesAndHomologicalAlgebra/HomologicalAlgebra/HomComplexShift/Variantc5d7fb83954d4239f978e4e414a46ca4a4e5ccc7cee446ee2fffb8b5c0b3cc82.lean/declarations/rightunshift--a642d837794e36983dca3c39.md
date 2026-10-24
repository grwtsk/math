# rightUnshift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69abf08917fcb9269253b1181b435008ff3ec38ae87e9e522c6bc0dbf8a89329",
  "kind": "def",
  "lexical_name": "rightUnshift",
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
  "slug": "rightunshift--a642d837794e36983dca3c39",
  "source": {
    "blob": "e270d8e116357ca726eb6f16c52d9c58d5eedc84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 517,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantc5d7fb83954d4239f978e4e414a46ca4a4e5ccc7cee446ee2fffb8b5c0b3cc82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a642d837794e36983dca3c39e0b9569720dbb6985484a2ffd5c82fa761c5e503",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantc5d7fb83954d4239f978e4e414a46ca4a4e5ccc7cee446ee2fffb8b5c0b3cc82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69abf08917fcb9269253b1181b435008ff3ec38ae87e9e522c6bc0dbf8a89329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightUnshift {n' a : ℤ} (γ : Cocycle K (L⟦a⟧) n') (n : ℤ) (hn : n' + a = n) :
    Cocycle K L n :=
  Cocycle.mk (γ.1.rightUnshift n hn) _ rfl (by
    rw [Cochain.δ_rightUnshift _ n hn (n + 1) (n + 1 - a) (by omega),
      δ_eq_zero, Cochain.rightUnshift_zero, smul_zero])

/-- The map `Cocycle K L n → Cocycle (K⟦a⟧) L n'` when `n + a = n'`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantc5d7fb83954d4239f978e4e414a46ca4a4e5ccc7cee446ee2fffb8b5c0b3cc82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantc5d7fb83954d4239f978e4e414a46ca4a4e5ccc7cee446ee2fffb8b5c0b3cc82.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e270d8e116357ca726eb6f16c52d9c58d5eedc84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
