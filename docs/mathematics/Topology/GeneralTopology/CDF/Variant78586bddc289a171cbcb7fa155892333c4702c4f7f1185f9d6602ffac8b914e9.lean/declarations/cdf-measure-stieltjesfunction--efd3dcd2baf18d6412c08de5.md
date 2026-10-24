# cdf_measure_stieltjesFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fc5a37bbc533122490b00bc8650dc6ead713eaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e354b5d7-616d-d315-fa7c-7230ffef3de4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f98e7f4f-a845-094b-c0b4-5f74a7655ac7",
  "kind": "lemma",
  "lexical_name": "cdf_measure_stieltjesFunction",
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
  "slug": "cdf-measure-stieltjesfunction--efd3dcd2baf18d6412c08de5",
  "source": {
    "blob": "8fc5a37bbc533122490b00bc8650dc6ead713eaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efd3dcd2baf18d6412c08de564cecc78a1aff1f9e8d7b94bec4d190a68bded6f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f98e7f4f-a845-094b-c0b4-5f74a7655ac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cdf_measure_stieltjesFunction (f : StieltjesFunction ℝ) (hf0 : Tendsto f atBot (𝓝 0))
    (hf1 : Tendsto f atTop (𝓝 1)) :
    cdf f.measure = f := by
  refine (cdf f.measure).eq_of_measure_of_tendsto_atBot f ?_ (tendsto_cdf_atBot _) hf0
  have h_prob : IsProbabilityMeasure f.measure :=
    ⟨by rw [f.measure_univ hf0 hf1, sub_zero, ENNReal.ofReal_one]⟩
  exact measure_cdf f.measure

open unitInterval in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CDF/Variant78586bddc289a171cbcb7fa155892333c4702c4f7f1185f9d6602ffac8b914e9.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fc5a37bbc533122490b00bc8650dc6ead713eaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
