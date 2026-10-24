# toEnvelGroup.univ_uniq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96d6e9b9f713f8c25c760bc914f4163ea7e250d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 691,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d277739-912d-143b-586a-ce74a91beb41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1156a49e-405a-95d1-f1a4-6394f48d9f88",
  "kind": "theorem",
  "lexical_name": "toEnvelGroup.univ_uniq",
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
  "slug": "toenvelgroup-univ-uniq--87de452b2ed22b0ab3e06574",
  "source": {
    "blob": "96d6e9b9f713f8c25c760bc914f4163ea7e250d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 700,
    "line": 691,
    "path": "GRWTSK/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87de452b2ed22b0ab3e0657481ebf4ef6916468f68de02e2ddd23301e27a04fe",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1156a49e-405a-95d1-f1a4-6394f48d9f88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 691–700.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toEnvelGroup.univ_uniq (R : Type*) [Rack R] (G : Type*) [Group G]
    (f : R →◃ Quandle.Conj G) (g : EnvelGroup R →* G)
    (h : f = (Quandle.Conj.map g).comp (toEnvelGroup R)) : g = toEnvelGroup.map f :=
  h.symm ▸ (toEnvelGroup.map.apply_symm_apply g).symm

/-- The induced group homomorphism from the enveloping group into bijections of the rack,
using `Rack.toConj`. Satisfies the property `envelAction_prop`.

This gives the rack `R` the structure of an augmented rack over `EnvelGroup R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean#L691).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d6e9b9f713f8c25c760bc914f4163ea7e250d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
