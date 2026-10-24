# universallyClosed_eq_universallySpecializing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e20d33189fdfb37ec05ce90a9cf1f7211b244ef2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bea1fe1e-0ef2-3b23-c096-8c0b234e90b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c486b3db-a0a6-c0dc-9d48-5c3ba6675534",
  "kind": "lemma",
  "lexical_name": "universallyClosed_eq_universallySpecializing",
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
  "slug": "universallyclosed-eq-universallyspecializing--e9e3f7fccebc077d2ccf84cd",
  "source": {
    "blob": "e20d33189fdfb37ec05ce90a9cf1f7211b244ef2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 168,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9e3f7fccebc077d2ccf84cd8b6927d4e8c2479badb006810504b4e07b41b935",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c486b3db-a0a6-c0dc-9d48-5c3ba6675534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma universallyClosed_eq_universallySpecializing :
    @UniversallyClosed = (topologically @SpecializingMap).universally ⊓ @QuasiCompact := by
  rw [← universally_eq_iff (P := @QuasiCompact).mpr inferInstance, ← universally_inf]
  apply le_antisymm
  · rw [← universally_eq_iff (P := @UniversallyClosed).mpr inferInstance]
    exact universally_mono fun X Y f H ↦ ⟨f.isClosedMap.specializingMap, inferInstance⟩
  · rw [universallyClosed_eq]
    exact universally_mono fun X Y f ⟨h₁, h₂⟩ ↦ (isClosedMap_iff_specializingMap _).mpr h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e20d33189fdfb37ec05ce90a9cf1f7211b244ef2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
