# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3ff212eb545f120de91391cb0cfcae7e85d8d9f1c06352146c369b1202905eb",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e7be60ba367e6c126bab61dc",
  "source": {
    "blob": "497bb9cfc4ca42da714d5cdb13cdcfbbff5ce494",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 293,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantabe05b7c719cd8f0c7ea5b28035c8c6887eea26916dcb52bc4685c28c13579c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7be60ba367e6c126bab61dcdde2a406ee2260c42cb8521bdcd0f9adccf00401",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantabe05b7c719cd8f0c7ea5b28035c8c6887eea26916dcb52bc4685c28c13579c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3ff212eb545f120de91391cb0cfcae7e85d8d9f1c06352146c369b1202905eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [∀ (F : C₁ ⥤ D), L.HasLeftKanExtension F]
    [∀ (F : C₂ ⥤ D), R.HasPointwiseLeftKanExtension F] [w.GuitartExact] :
    IsIso (w.lanBaseChange (D := D)) := by
  rw [NatTrans.isIso_iff_isIso_app]
  infer_instance

section

variable [∀ (F : C₁ ⥤ D), T.HasRightKanExtension F] [∀ (F : C₃ ⥤ D), B.HasRightKanExtension F]

/-- The base change natural transformation for left Kan extensions associated to
a 2-square. -/
@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantabe05b7c719cd8f0c7ea5b28035c8c6887eea26916dcb52bc4685c28c13579c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantabe05b7c719cd8f0c7ea5b28035c8c6887eea26916dcb52bc4685c28c13579c7.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `497bb9cfc4ca42da714d5cdb13cdcfbbff5ce494` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
