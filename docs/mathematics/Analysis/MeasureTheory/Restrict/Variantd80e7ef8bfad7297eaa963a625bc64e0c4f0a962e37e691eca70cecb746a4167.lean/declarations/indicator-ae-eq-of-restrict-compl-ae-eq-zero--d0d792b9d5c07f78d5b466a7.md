# indicator_ae_eq_of_restrict_compl_ae_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4300bd82e6ff27f6c553405ab9da0e88765b0a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 946,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d80e7ef8bfad7297eaa963a625bc64e0c4f0a962e37e691eca70cecb746a4167.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca593f68-2e1b-2978-a56c-84dcd0b2a4fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d7f97a3-5aac-9be0-ea05-ba45c305d0f3",
  "kind": "theorem",
  "lexical_name": "indicator_ae_eq_of_restrict_compl_ae_eq_zero",
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
  "slug": "indicator-ae-eq-of-restrict-compl-ae-eq-zero--d0d792b9d5c07f78d5b466a7",
  "source": {
    "blob": "c4300bd82e6ff27f6c553405ab9da0e88765b0a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 953,
    "line": 946,
    "path": "GRWTSK/Analysis/MeasureTheory/Restrict/Variantd80e7ef8bfad7297eaa963a625bc64e0c4f0a962e37e691eca70cecb746a4167.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0d792b9d5c07f78d5b466a74cbd209fe225cb98e7dfc43c2775a121803d71e7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Restrict/Variantd80e7ef8bfad7297eaa963a625bc64e0c4f0a962e37e691eca70cecb746a4167.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d7f97a3-5aac-9be0-ea05-ba45c305d0f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 946–953.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indicator_ae_eq_of_restrict_compl_ae_eq_zero (hs : MeasurableSet s)
    (hf : f =ᵐ[μ.restrict sᶜ] 0) : s.indicator f =ᵐ[μ] f := by
  rw [Filter.EventuallyEq, ae_restrict_iff' hs.compl] at hf
  filter_upwards [hf] with x hx
  by_cases hxs : x ∈ s
  · simp only [hxs, Set.indicator_of_mem]
  · simp only [hx hxs, Pi.zero_apply, Set.indicator_apply_eq_zero, eq_self_iff_true, imp_true_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Restrict/Variantd80e7ef8bfad7297eaa963a625bc64e0c4f0a962e37e691eca70cecb746a4167.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Restrict/Variantd80e7ef8bfad7297eaa963a625bc64e0c4f0a962e37e691eca70cecb746a4167.lean#L946).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4300bd82e6ff27f6c553405ab9da0e88765b0a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
