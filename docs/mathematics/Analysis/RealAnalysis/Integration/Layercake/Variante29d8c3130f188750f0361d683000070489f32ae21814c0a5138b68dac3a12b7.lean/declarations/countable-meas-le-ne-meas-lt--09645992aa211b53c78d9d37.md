# countable_meas_le_ne_meas_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "781f51f2d01d3ebdbb858a6354e53a2dc724d68e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e29d8c3130f188750f0361d683000070489f32ae21814c0a5138b68dac3a12b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd0de574-8bd0-7a95-21ce-0da9add31e3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55af7657-ab36-ab76-a572-7c5d7c61e60a",
  "kind": "theorem",
  "lexical_name": "countable_meas_le_ne_meas_lt",
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
  "slug": "countable-meas-le-ne-meas-lt--09645992aa211b53c78d9d37",
  "source": {
    "blob": "781f51f2d01d3ebdbb858a6354e53a2dc724d68e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variante29d8c3130f188750f0361d683000070489f32ae21814c0a5138b68dac3a12b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09645992aa211b53c78d9d371b1716b57dac198863e5d7c16f1a9f4132bef7fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variante29d8c3130f188750f0361d683000070489f32ae21814c0a5138b68dac3a12b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55af7657-ab36-ab76-a572-7c5d7c61e60a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_meas_le_ne_meas_lt (g : α → R) :
    {t : R | μ {a : α | t ≤ g a} ≠ μ {a : α | t < g a}}.Countable := by
  -- the target set is contained in the set of points where the function `t ↦ μ {a : α | t ≤ g a}`
  -- jumps down on the right of `t`. This jump set is countable for any function.
  let F : R → ℝ≥0∞ := fun t ↦ μ {a : α | t ≤ g a}
  apply (countable_image_gt_image_Ioi F).mono
  intro t ht
  have : μ {a | t < g a} < μ {a | t ≤ g a} :=
    lt_of_le_of_ne (measure_mono (fun a ha ↦ le_of_lt ha)) (Ne.symm ht)
  exact ⟨μ {a | t < g a}, this, fun s hs ↦ measure_mono (fun a ha ↦ hs.trans_le ha)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variante29d8c3130f188750f0361d683000070489f32ae21814c0a5138b68dac3a12b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variante29d8c3130f188750f0361d683000070489f32ae21814c0a5138b68dac3a12b7.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `781f51f2d01d3ebdbb858a6354e53a2dc724d68e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
