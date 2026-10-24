# val_sum_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32df0034933fcd744a1f5a82f971da098f694c1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 358,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea71c61be774fd579bad7f9faa3477a8cbc637daa36832c0813d733fe02703ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63069dd6-1b72-31b5-c64e-042a98d169a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4151ab8-a976-e868-d675-3b6930a3f32e",
  "kind": "lemma",
  "lexical_name": "val_sum_apply",
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
  "slug": "val-sum-apply--dff7e2863120fe414211b350",
  "source": {
    "blob": "32df0034933fcd744a1f5a82f971da098f694c1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 358,
    "path": "GRWTSK/Algebra/Basic/Variantea71c61be774fd579bad7f9faa3477a8cbc637daa36832c0813d733fe02703ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dff7e2863120fe414211b3506059566d9e5b5e9e57a14a147730f009b687ca79",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantea71c61be774fd579bad7f9faa3477a8cbc637daa36832c0813d733fe02703ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4151ab8-a976-e868-d675-3b6930a3f32e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma val_sum_apply {ι : Type*} (s : Finset ι) (f : ι → AdicCompletion I M) (n : ℕ) :
    (∑ i ∈ s, f i).val n = ∑ i ∈ s, (f i).val n := by simp

variable (I M)

/-- The canonical linear map to the completion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantea71c61be774fd579bad7f9faa3477a8cbc637daa36832c0813d733fe02703ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantea71c61be774fd579bad7f9faa3477a8cbc637daa36832c0813d733fe02703ba.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32df0034933fcd744a1f5a82f971da098f694c1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
