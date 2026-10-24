# continuousAt_cpow_of_re_pos

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
      "line": 368,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd3717dd-daa6-7986-9c50-52668f8c977b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b314a17-27fd-e144-5f0c-b96f2d5823e0",
  "kind": "theorem",
  "lexical_name": "continuousAt_cpow_of_re_pos",
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
  "slug": "continuousat-cpow-of-re-pos--7a4a61ca5a6d82bad387697b",
  "source": {
    "blob": "bdd10ff27c78ae0cf56be8a1a70368b8baa4f4ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 368,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a4a61ca5a6d82bad387697b573b2aabfdb5ba3d1cf0c27a6df2f8b7593973ad",
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

Occurrence: `result:1b314a17-27fd-e144-5f0c-b96f2d5823e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_cpow_of_re_pos {p : ℂ × ℂ} (h₁ : 0 ≤ p.1.re ∨ p.1.im ≠ 0) (h₂ : 0 < p.2.re) :
    ContinuousAt (fun x : ℂ × ℂ => x.1 ^ x.2) p := by
  cases' p with z w
  rw [← not_lt_zero_iff, lt_iff_le_and_ne, not_and_or, Ne.def, Classical.not_not,
    not_le_zero_iff] at h₁
  rcases h₁ with (h₁ | (rfl : z = 0))
  exacts [continuousAt_cpow h₁, continuousAt_cpow_zero_of_re_pos h₂]
#align complex.continuous_at_cpow_of_re_pos Complex.continuousAt_cpow_of_re_pos

/-- See also `continuousAt_cpow_const` for a version that assumes `z ≠ 0` but makes no
assumptions about `w`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd10ff27c78ae0cf56be8a1a70368b8baa4f4ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
