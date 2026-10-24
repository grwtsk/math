# gaugeRescale_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64784ae3b43688b0a149aeb865cd49946003f87f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f407a52-4f70-351d-aab6-1c8f8bbbb785",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d654ac5f-00ff-1ce9-6559-42f69dff8dcf",
  "kind": "theorem",
  "lexical_name": "gaugeRescale_smul",
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
  "slug": "gaugerescale-smul--ce1036684e13451efa8845b7",
  "source": {
    "blob": "64784ae3b43688b0a149aeb865cd49946003f87f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce1036684e13451efa8845b7e6dec45259b7e8d0d6c29a0a3b9be1bffb564b95",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d654ac5f-00ff-1ce9-6559-42f69dff8dcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaugeRescale_smul (s t : Set E) {c : ℝ} (hc : 0 ≤ c) (x : E) :
    gaugeRescale s t (c • x) = c • gaugeRescale s t x := by
  simp only [gaugeRescale, gauge_smul_of_nonneg hc, smul_smul, smul_eq_mul]
  rw [mul_div_mul_comm, mul_right_comm, div_self_mul_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64784ae3b43688b0a149aeb865cd49946003f87f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
