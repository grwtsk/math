# zigzag_isPreconnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:accada99-ce76-302d-f62c-ea161a72fe7e",
  "kind": "theorem",
  "lexical_name": "zigzag_isPreconnected",
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
  "slug": "zigzag-ispreconnected--dad4df9c2e30803d7809a932",
  "source": {
    "blob": "1d0b6356e13ba451d6dcffde5372eb24266f587d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 390,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dad4df9c2e30803d7809a932a09a5af48f3565ec27baf1d5c3b36c408a669640",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:accada99-ce76-302d-f62c-ea161a72fe7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zigzag_isPreconnected (h : ∀ j₁ j₂ : J, Zigzag j₁ j₂) : IsPreconnected J := by
  apply IsPreconnected.of_constant_of_preserves_morphisms
  intro α F hF j j'
  specialize h j j'
  induction h with
  | refl => rfl
  | tail _ hj ih =>
    rw [ih]
    rcases hj with (⟨⟨hj⟩⟩|⟨⟨hj⟩⟩)
    exacts [hF hj, (hF hj).symm]

/-- If any two objects in a nonempty category are related by `Zigzag`, the category is connected.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d0b6356e13ba451d6dcffde5372eb24266f587d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
