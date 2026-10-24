# forgetEnrichmentOppositeEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb9d8efca829f14f499c7082d002b17ca76606d65832681aa69e90e7e4fc203a",
  "kind": "def",
  "lexical_name": "forgetEnrichmentOppositeEquivalence",
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
  "slug": "forgetenrichmentoppositeequivalence--a73b1b80fe3894d4491a6db0",
  "source": {
    "blob": "2010dd44138981b5ecd784c544e6cece8f98d223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 115,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a73b1b80fe3894d4491a6db0a7eecce9cc8456c3b4e3b5fe957c562bcfbc72e5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb9d8efca829f14f499c7082d002b17ca76606d65832681aa69e90e7e4fc203a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forgetEnrichmentOppositeEquivalence : ForgetEnrichment V Cᵒᵖ ≌ (ForgetEnrichment V C)ᵒᵖ where
  functor := forgetEnrichmentOppositeEquivalence.functor V C
  inverse := forgetEnrichmentOppositeEquivalence.inverse V C
  unitIso := NatIso.ofComponents (fun _ ↦ Iso.refl _)
  counitIso := NatIso.ofComponents (fun _ ↦ Iso.refl _)

/-- If `D` is an enriched ordinary category then `Dᵒᵖ` is an enriched ordinary category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta349cbb5553ae52b06383af845391f0d48c131d3a42635503ef02be7c2baa2ed.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2010dd44138981b5ecd784c544e6cece8f98d223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
