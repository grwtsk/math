# indicator_le_thickenedIndicatorAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4820d1b3b9a9c571b9a01efeb02aad32f60e0978",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5021284a-269d-5706-a6a4-bd64d8e46326",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd1bbbc0-6ace-a458-4739-7ab992ba6015",
  "kind": "theorem",
  "lexical_name": "indicator_le_thickenedIndicatorAux",
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
  "slug": "indicator-le-thickenedindicatoraux--0d1e548cfdfa5c0d8f11904b",
  "source": {
    "blob": "4820d1b3b9a9c571b9a01efeb02aad32f60e0978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d1e548cfdfa5c0d8f11904b629d80ad1294c919756c3955202ebb06272971ef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd1bbbc0-6ace-a458-4739-7ab992ba6015`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indicator_le_thickenedIndicatorAux (δ : ℝ) (E : Set α) :
    (E.indicator fun _ => (1 : ℝ≥0∞)) ≤ thickenedIndicatorAux δ E := by
  intro a
  by_cases a ∈ E
  · simp only [h, indicator_of_mem, thickenedIndicatorAux_one δ E h, le_refl]
  · simp only [h, indicator_of_not_mem, not_false_iff, zero_le]
#align indicator_le_thickened_indicator_aux indicator_le_thickenedIndicatorAux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4820d1b3b9a9c571b9a01efeb02aad32f60e0978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
