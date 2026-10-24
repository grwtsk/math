# Zag.of_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aff4271f-5e37-d5fc-577d-2463d483f9d6",
  "kind": "theorem",
  "lexical_name": "Zag.of_inv",
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
  "slug": "zag-of-inv--bc3b42efeabba0a9b964fa1d",
  "source": {
    "blob": "1d0b6356e13ba451d6dcffde5372eb24266f587d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 292,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc3b42efeabba0a9b964fa1d1044f3c64d83868fb498f8031eaf8553a2ce8759",
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

Occurrence: `result:aff4271f-5e37-d5fc-577d-2463d483f9d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Zag.of_inv {j₁ j₂ : J} (f : j₂ ⟶ j₁) : Zag j₁ j₂ := Or.inr ⟨f⟩

/-- `j₁` and `j₂` are related by `Zigzag` if there is a chain of
morphisms from `j₁` to `j₂`, with backward morphisms allowed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d0b6356e13ba451d6dcffde5372eb24266f587d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
