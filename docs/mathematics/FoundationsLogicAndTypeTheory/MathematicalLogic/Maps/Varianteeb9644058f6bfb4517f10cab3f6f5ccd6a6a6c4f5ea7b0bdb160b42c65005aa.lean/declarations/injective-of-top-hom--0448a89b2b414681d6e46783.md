# injective_of_top_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d71857e-ea54-8bf1-8ef4-9ae976436327",
  "kind": "theorem",
  "lexical_name": "injective_of_top_hom",
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
  "slug": "injective-of-top-hom--0448a89b2b414681d6e46783",
  "source": {
    "blob": "4baec2a18339d91705b44912d441dd82c003522a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 403,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Varianteeb9644058f6bfb4517f10cab3f6f5ccd6a6a6c4f5ea7b0bdb160b42c65005aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0448a89b2b414681d6e46783124450b448c02e5a3ec8f643caa1b9521f531221",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Varianteeb9644058f6bfb4517f10cab3f6f5ccd6a6a6c4f5ea7b0bdb160b42c65005aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d71857e-ea54-8bf1-8ef4-9ae976436327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_of_top_hom (f : (⊤ : SimpleGraph V) →g G') : Function.Injective f := by
  intro v w h
  contrapose! h
  exact G'.ne_of_adj (map_adj _ ((top_adj _ _).mpr h))

/-- A function `f` that is injective on adjacent vertices in a graph `G`
(equivalently `f` is a valid `W`-coloring of `G`, or `G ≤ comap ⊤ f`)
is a homomorphism from `G` to the mapped graph. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Varianteeb9644058f6bfb4517f10cab3f6f5ccd6a6a6c4f5ea7b0bdb160b42c65005aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Varianteeb9644058f6bfb4517f10cab3f6f5ccd6a6a6c4f5ea7b0bdb160b42c65005aa.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4baec2a18339d91705b44912d441dd82c003522a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
