# iSup₂_iInf₂_le_iInf₂_iSup₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb7deec00459f1e96a7bcc964721992ce1253bd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f6196b3057a7b64d431f0fc05b492447411d803f09207bc81f7d45c69c9240f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9503ab3-4ba4-c2b7-4745-5dc5866ce87f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1965f845-b5cc-929d-56bc-30fc412f4baa",
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
  "slug": "isup-iinf-le-iinf-isup--e41d774edc05126d3a62ddac",
  "source": {
    "blob": "cb7deec00459f1e96a7bcc964721992ce1253bd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SaddlePoint/Variant3f6196b3057a7b64d431f0fc05b492447411d803f09207bc81f7d45c69c9240f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e41d774edc05126d3a62ddaca078b9c7a39bd3921457e56e9237acff1b05d653",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SaddlePoint/Variant3f6196b3057a7b64d431f0fc05b492447411d803f09207bc81f7d45c69c9240f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1965f845-b5cc-929d-56bc-30fc412f4baa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–46.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SaddlePoint/Variant3f6196b3057a7b64d431f0fc05b492447411d803f09207bc81f7d45c69c9240f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SaddlePoint/Variant3f6196b3057a7b64d431f0fc05b492447411d803f09207bc81f7d45c69c9240f.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb7deec00459f1e96a7bcc964721992ce1253bd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
