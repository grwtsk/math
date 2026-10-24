# Antitone.cauchySeq_series_mul_of_tendsto_zero_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3ce8658b810edf0d3b6f24e69a5b71a1e4ab488",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 724,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9476fdcc-4e03-0f6d-71e3-2d462376292b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01f97f38-ea4a-d5e0-f6aa-42e5cda2aa27",
  "kind": "theorem",
  "lexical_name": "Antitone.cauchySeq_series_mul_of_tendsto_zero_of_bounded",
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
  "slug": "antitone-cauchyseq-series-mul-of-tendsto-zero-of-bounded--89c56ca1e1ab47cfb638fc77",
  "source": {
    "blob": "a3ce8658b810edf0d3b6f24e69a5b71a1e4ab488",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 724,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89c56ca1e1ab47cfb638fc77ec1e9006dc2bcec2973497a05b70dbf5b67d8e2e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01f97f38-ea4a-d5e0-f6aa-42e5cda2aa27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 724–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Antitone.cauchySeq_series_mul_of_tendsto_zero_of_bounded (hfa : Antitone f)
    (hf0 : Tendsto f atTop (𝓝 0)) (hzb : ∀ n, ‖∑ i ∈ range n, z i‖ ≤ b) :
    CauchySeq fun n ↦ ∑ i ∈ range n, f i • z i := by
  have hfa' : Monotone fun n ↦ -f n := fun _ _ hab ↦ neg_le_neg <| hfa hab
  have hf0' : Tendsto (fun n ↦ -f n) atTop (𝓝 0) := by
    convert hf0.neg
    norm_num
  convert (hfa'.cauchySeq_series_mul_of_tendsto_zero_of_bounded hf0' hzb).neg
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant850a46bf563cc547f361e51ca342351ace98e0a84b92edcd9f65ba9930e10efc.lean#L724).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3ce8658b810edf0d3b6f24e69a5b71a1e4ab488` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
