# N₂Γ₂_compatible_with_N₁Γ₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5429d61a-7131-a424-00e1-4956014629cf",
  "kind": "theorem",
  "lexical_name": "N₂Γ₂_compatible_with_N₁Γ₀",
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
  "slug": "n-compatible-with-n--635a6323735f76c258c27db4",
  "source": {
    "blob": "b064cd58c10259d88d5c2caefb12698c2e657ba7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 196,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant6bb4ac1cc77c9d8272dd450a1e2ee94dda2d1e55f5df48992105b148f8095267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:635a6323735f76c258c27db4702086d98e58695022e2b3a77c93fa3512253ecb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant6bb4ac1cc77c9d8272dd450a1e2ee94dda2d1e55f5df48992105b148f8095267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5429d61a-7131-a424-00e1-4956014629cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem N₂Γ₂_compatible_with_N₁Γ₀ (K : ChainComplex C ℕ) :
    N₂Γ₂.hom.app ((toKaroubi _).obj K) = N₂Γ₂ToKaroubiIso.hom.app K ≫ N₁Γ₀.hom.app K :=
  congr_app whiskerLeft_toKaroubi_N₂Γ₂_hom K

end DoldKan

end AlgebraicTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant6bb4ac1cc77c9d8272dd450a1e2ee94dda2d1e55f5df48992105b148f8095267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant6bb4ac1cc77c9d8272dd450a1e2ee94dda2d1e55f5df48992105b148f8095267.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b064cd58c10259d88d5c2caefb12698c2e657ba7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
