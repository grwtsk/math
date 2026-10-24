# eq_set_map_one_map_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27c77e64a8bf5cbbd7128a75e47cf648f45a8754",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec36a9b0-fe4e-4910-fce2-ffdba379893d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ad4c387-7341-0f74-35e7-9060dd7fb721",
  "kind": "theorem",
  "lexical_name": "eq_set_map_one_map_mul",
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
  "slug": "eq-set-map-one-map-mul--3b4436a194607d8ba2c626b9",
  "source": {
    "blob": "27c77e64a8bf5cbbd7128a75e47cf648f45a8754",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/CharacterSpace/Variantdd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b4436a194607d8ba2c626b9c06fe32fdaeec583b0c1a3ecde3f2ff775d8414e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CharacterSpace/Variantdd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ad4c387-7341-0f74-35e7-9060dd7fb721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_set_map_one_map_mul [Nontrivial 𝕜] :
    characterSpace 𝕜 A = {φ : WeakDual 𝕜 A | φ 1 = 1 ∧ ∀ x y : A, φ (x * y) = φ x * φ y} := by
  ext φ
  refine ⟨?_, ?_⟩
  · rintro hφ
    lift φ to characterSpace 𝕜 A using hφ
    exact ⟨map_one φ, map_mul φ⟩
  · rintro ⟨hφ₁, hφ₂⟩
    refine ⟨?_, hφ₂⟩
    rintro rfl
    exact zero_ne_one hφ₁

/-- under suitable mild assumptions on `𝕜`, the character space is a closed set in
`WeakDual 𝕜 A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CharacterSpace/Variantdd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CharacterSpace/Variantdd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27c77e64a8bf5cbbd7128a75e47cf648f45a8754` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
