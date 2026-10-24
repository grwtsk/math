# continuousAt_cpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdd10ff27c78ae0cf56be8a1a70368b8baa4f4ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f88a0063-ab93-fe88-c270-150c8ccd9a51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6fd5c9b-8823-7d4d-e2f1-328e342e7248",
  "kind": "theorem",
  "lexical_name": "continuousAt_cpow",
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
  "slug": "continuousat-cpow--9f01a2ce913cdde24ed48897",
  "source": {
    "blob": "bdd10ff27c78ae0cf56be8a1a70368b8baa4f4ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f01a2ce913cdde24ed488975cd8d3d06da7268955ffd134d3b8e3dd6ab30efe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6fd5c9b-8823-7d4d-e2f1-328e342e7248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_cpow {p : ℂ × ℂ} (hp_fst : 0 < p.fst.re ∨ p.fst.im ≠ 0) :
    ContinuousAt (fun x : ℂ × ℂ => x.1 ^ x.2) p := by
  have hp_fst_ne_zero : p.fst ≠ 0 := by
    intro h
    cases' hp_fst with hp_fst hp_fst <;>
      · rw [h] at hp_fst
        simp at hp_fst
  rw [continuousAt_congr (cpow_eq_nhds' hp_fst_ne_zero)]
  refine' continuous_exp.continuousAt.comp _
  exact
    ContinuousAt.mul
      (ContinuousAt.comp (continuousAt_clog hp_fst) continuous_fst.continuousAt)
      continuous_snd.continuousAt
#align continuous_at_cpow continuousAt_cpow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd10ff27c78ae0cf56be8a1a70368b8baa4f4ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
