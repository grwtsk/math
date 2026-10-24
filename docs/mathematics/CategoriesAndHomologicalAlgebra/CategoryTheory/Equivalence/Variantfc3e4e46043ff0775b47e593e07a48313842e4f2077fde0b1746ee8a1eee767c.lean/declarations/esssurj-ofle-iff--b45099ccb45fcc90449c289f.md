# essSurj_ιOfLE_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2713619-49f6-22b7-07b5-36d509e5f351",
  "kind": "lemma",
  "lexical_name": "essSurj_ιOfLE_iff",
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
  "slug": "esssurj-ofle-iff--b45099ccb45fcc90449c289f",
  "source": {
    "blob": "3b21e986111928faefcdb7fd1e0243d5c98f9454",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 37,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfc3e4e46043ff0775b47e593e07a48313842e4f2077fde0b1746ee8a1eee767c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b45099ccb45fcc90449c289f90b934e1fc49f64eadcbabb7bad0c18b3c4d559a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfc3e4e46043ff0775b47e593e07a48313842e4f2077fde0b1746ee8a1eee767c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2713619-49f6-22b7-07b5-36d509e5f351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma essSurj_ιOfLE_iff : (ιOfLE h).EssSurj ↔ Q ≤ P.isoClosure := by
  refine ⟨fun _ X hX ↦ ?_, fun hPQ ↦ ⟨fun ⟨Y, hY⟩ ↦ ?_⟩⟩
  · exact ⟨_, ((ιOfLE h).objPreimage ⟨X, hX⟩).2,
      ⟨Q.ι.mapIso ((ιOfLE h).objObjPreimageIso ⟨X, hX⟩).symm⟩⟩
  · obtain ⟨X, hX, ⟨e⟩⟩ := hPQ _ hY
    exact ⟨⟨X, hX⟩, ⟨Q.ι.preimageIso e.symm⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfc3e4e46043ff0775b47e593e07a48313842e4f2077fde0b1746ee8a1eee767c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfc3e4e46043ff0775b47e593e07a48313842e4f2077fde0b1746ee8a1eee767c.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b21e986111928faefcdb7fd1e0243d5c98f9454` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
