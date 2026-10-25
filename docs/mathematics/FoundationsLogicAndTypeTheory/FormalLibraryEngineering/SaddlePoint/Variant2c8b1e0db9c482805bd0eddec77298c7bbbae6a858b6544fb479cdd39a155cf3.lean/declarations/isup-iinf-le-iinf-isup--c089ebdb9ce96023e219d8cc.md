# iSup₂_iInf₂_le_iInf₂_iSup₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5912c664-1711-4cf2-52cd-5713228c90c7",
  "kind": "theorem",
  "lexical_name": "iSup₂_iInf₂_le_iInf₂_iSup₂",
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
  "slug": "isup-iinf-le-iinf-isup--c089ebdb9ce96023e219d8cc",
  "source": {
    "blob": "7f402bdd7c657a4d0d03a00aee50408b2f59515b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SaddlePoint/Variant2c8b1e0db9c482805bd0eddec77298c7bbbae6a858b6544fb479cdd39a155cf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c089ebdb9ce96023e219d8cc5603cd4121c80d79b1667a2ba9f54a8069a2ee95",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SaddlePoint/Variant2c8b1e0db9c482805bd0eddec77298c7bbbae6a858b6544fb479cdd39a155cf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5912c664-1711-4cf2-52cd-5713228c90c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup₂_iInf₂_le_iInf₂_iSup₂ [CompleteLinearOrder β] :
    ⨆ y ∈ Y, ⨅ x ∈ X, f x y ≤ ⨅ x ∈ X, ⨆ y ∈ Y, f x y := by
  rw [iSup₂_le_iff]; intro y hy
  rw [le_iInf₂_iff]; intro x hx
  exact iInf₂_le_of_le x hx (le_iSup₂_of_le y hy (le_refl _))

-- [Hiriart-Urruty, (4.1.4)]
/-- The pair `(a, b)` is a saddle point of `f` on `X × Y`
if `f a y ≤ f x b` for all `x ∈ X` and all `y` in `Y`.

Note: we do not require that `a ∈ X` and `b ∈ Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SaddlePoint/Variant2c8b1e0db9c482805bd0eddec77298c7bbbae6a858b6544fb479cdd39a155cf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SaddlePoint/Variant2c8b1e0db9c482805bd0eddec77298c7bbbae6a858b6544fb479cdd39a155cf3.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f402bdd7c657a4d0d03a00aee50408b2f59515b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
