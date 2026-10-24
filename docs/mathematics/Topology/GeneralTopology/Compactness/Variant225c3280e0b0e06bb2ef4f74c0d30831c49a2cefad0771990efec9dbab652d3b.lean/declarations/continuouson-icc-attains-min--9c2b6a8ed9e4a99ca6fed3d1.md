# continuousOn_Icc_attains_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26bf04bf6eb7750ece495aed8ff91736deb6c6d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c715053f-913d-593f-15e7-a295c89b4241",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f84951ef-fb1d-9ff9-deaf-73851c45aa9c",
  "kind": "theorem",
  "lexical_name": "continuousOn_Icc_attains_min",
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
  "slug": "continuouson-icc-attains-min--9c2b6a8ed9e4a99ca6fed3d1",
  "source": {
    "blob": "26bf04bf6eb7750ece495aed8ff91736deb6c6d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/Compactness/Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c2b6a8ed9e4a99ca6fed3d156352d7586b00718be727a28c3a9c3b5e82c7b84",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compactness/Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f84951ef-fb1d-9ff9-deaf-73851c45aa9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_Icc_attains_min
    {f : ℝ → ℝ} {a b : ℝ}
    (hab : a ≤ b)
    (hf : ContinuousOn f (Set.Icc a b)) :
    ∃ x ∈ Set.Icc a b,
      ∀ y ∈ Set.Icc a b, f x ≤ f y := by
  obtain ⟨x, hx, hmin⟩ :=
    (real_Icc_isCompact a b).exists_isMinOn (Set.nonempty_Icc.mpr hab) hf
  exact ⟨x, hx, isMinOn_iff.mp hmin⟩

/-- Analytic context for the compactness claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compactness/Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compactness/Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26bf04bf6eb7750ece495aed8ff91736deb6c6d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
