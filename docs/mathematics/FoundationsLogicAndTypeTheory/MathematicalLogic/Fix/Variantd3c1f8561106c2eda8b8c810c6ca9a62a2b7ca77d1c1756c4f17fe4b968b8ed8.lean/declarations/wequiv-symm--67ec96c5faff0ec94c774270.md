# wEquiv.symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3c8724a-3047-a037-aad7-4cd1780bb430",
  "kind": "theorem",
  "lexical_name": "wEquiv.symm",
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
  "slug": "wequiv-symm--67ec96c5faff0ec94c774270",
  "source": {
    "blob": "d59979fbeed69094a0240dd29f6404336a9e990e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67ec96c5faff0ec94c774270e7c573bfab1bb1113bd2766400bdb075f71f6fdd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3c8724a-3047-a037-aad7-4cd1780bb430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wEquiv.symm {α : TypeVec n} (x y : q.P.W α) : WEquiv x y → WEquiv y x := by
  intro h; induction h with
  | ind a f' f₀ f₁ _h ih => exact WEquiv.ind _ _ _ _ ih
  | abs a₀ f'₀ f₀ a₁ f'₁ f₁ h => exact WEquiv.abs _ _ _ _ _ _ h.symm
  | trans x y z _e₁ _e₂ ih₁ ih₂ => exact MvQPF.WEquiv.trans _ _ _ ih₂ ih₁

/-- maps every element of the W type to a canonical representative -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d59979fbeed69094a0240dd29f6404336a9e990e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
