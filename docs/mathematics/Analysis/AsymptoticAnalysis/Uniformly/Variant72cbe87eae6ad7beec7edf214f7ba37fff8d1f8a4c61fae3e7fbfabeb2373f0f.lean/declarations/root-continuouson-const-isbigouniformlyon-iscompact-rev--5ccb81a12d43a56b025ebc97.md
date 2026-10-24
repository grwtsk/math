# _root_.ContinuousOn.const_isBigOUniformlyOn_isCompact_rev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58a60c7a2cae9d92d9bd3b5c3c09d7f8482f3403",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0bdd2f48-1965-6e23-9945-a6131c47fb15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f45ef0c-a1bb-b026-cc3e-ded4940d90b5",
  "kind": "theorem",
  "lexical_name": "_root_.ContinuousOn.const_isBigOUniformlyOn_isCompact_rev",
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
  "slug": "root-continuouson-const-isbigouniformlyon-iscompact-rev--5ccb81a12d43a56b025ebc97",
  "source": {
    "blob": "58a60c7a2cae9d92d9bd3b5c3c09d7f8482f3403",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 148,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ccb81a12d43a56b025ebc97da8f4a54f0eb2cd7f30a46b56f1cbc1edfb9693a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f45ef0c-a1bb-b026-cc3e-ded4940d90b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.ContinuousOn.const_isBigOUniformlyOn_isCompact_rev
    (hf : ContinuousOn C s) (hs : IsCompact s) (hC : ∀ i ∈ s, C i ≠ 0) (l : Filter α) :
    (fun _ => c) =O[𝓟 s ×ˢ l] (fun (i, _x) ↦ C i) :=
  (hf.const_isBigOWithUniformlyOn_isCompact_rev hs hC l).isBigO

/-- A family of constant functions `f (i, x) = C i` is uniformly Θ(1) w.r.t. `s`,
if `s` is compact and `C` is continuous with no zeros on `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Uniformly/Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a60c7a2cae9d92d9bd3b5c3c09d7f8482f3403` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
