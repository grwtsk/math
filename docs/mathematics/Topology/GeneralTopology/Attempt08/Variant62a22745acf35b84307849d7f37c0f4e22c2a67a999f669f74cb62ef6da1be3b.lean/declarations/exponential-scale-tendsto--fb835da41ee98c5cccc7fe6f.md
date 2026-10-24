# exponential_scale_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86d3d1b14f46064f60e018d060c35b21379b156e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a884e91-00cb-14d5-430f-7feb23540f98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2a08fb3-263f-0780-dce2-3efb2f315f94",
  "kind": "theorem",
  "lexical_name": "exponential_scale_tendsto",
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
  "slug": "exponential-scale-tendsto--fb835da41ee98c5cccc7fe6f",
  "source": {
    "blob": "86d3d1b14f46064f60e018d060c35b21379b156e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 145,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb835da41ee98c5cccc7fe6f908d8db5a643b75967c74daa9b69bf8cb10c808d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2a08fb3-263f-0780-dce2-3efb2f315f94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_scale_tendsto (z : ℝ) (hz : 0 < z) :
    Tendsto (fun A : ℝ => Real.exp (2*A*z)/A^9) atTop atTop := by
  have ht := (Real.tendsto_exp_div_pow_atTop 9).comp
    (tendsto_id.const_mul_atTop (show 0 < 2*z by positivity))
  have hm := ht.const_mul_atTop (show 0 < (2*z)^9 by positivity)
  convert hm using 1
  ext A
  simp only [Function.comp_apply,id_eq]
  rw [mul_pow]
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86d3d1b14f46064f60e018d060c35b21379b156e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
