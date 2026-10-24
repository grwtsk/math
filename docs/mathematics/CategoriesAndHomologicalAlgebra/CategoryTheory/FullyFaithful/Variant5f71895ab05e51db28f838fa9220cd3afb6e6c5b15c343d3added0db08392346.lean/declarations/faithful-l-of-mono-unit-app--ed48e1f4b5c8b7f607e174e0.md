# faithful_L_of_mono_unit_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "567ff9766655bc1977b53f915fa2a5c1aa34c978",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:093fd9fa-b51a-0f11-6293-044f9acdfe0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a057935c-fb64-6606-c19c-c0b7026dfee6",
  "kind": "lemma",
  "lexical_name": "faithful_L_of_mono_unit_app",
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
  "slug": "faithful-l-of-mono-unit-app--ed48e1f4b5c8b7f607e174e0",
  "source": {
    "blob": "567ff9766655bc1977b53f915fa2a5c1aa34c978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed48e1f4b5c8b7f607e174e0d690b90fd64c1a2cb1466aaa018e56df2a38a673",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a057935c-fb64-6606-c19c-c0b7026dfee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma faithful_L_of_mono_unit_app [∀ X, Mono (h.unit.app X)] : L.Faithful where
  map_injective {X Y f g} hfg := by
    apply Mono.right_cancellation (f := h.unit.app Y)
    apply (h.homEquiv X (L.obj Y)).symm.injective
    simpa using hfg

/-- If each component of the unit is a split epimorphism, then the left adjoint is full. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `567ff9766655bc1977b53f915fa2a5c1aa34c978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
