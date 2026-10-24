# edist_nearestPt_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d38865f554b7eb8d9da798cfb08050bd4353fb8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c6a6f1d-fed3-375d-ef7a-893f557e7bdc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88247d4a-9556-03ab-6852-fe1692dc62e9",
  "kind": "theorem",
  "lexical_name": "edist_nearestPt_le",
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
  "slug": "edist-nearestpt-le--7cdb38c9f4f34bf9547da88b",
  "source": {
    "blob": "9d38865f554b7eb8d9da798cfb08050bd4353fb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 101,
    "path": "GRWTSK/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cdb38c9f4f34bf9547da88b782a98a04ad4067b4365ae64a69b8c1b70451ec7",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88247d4a-9556-03ab-6852-fe1692dc62e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edist_nearestPt_le (e : ℕ → α) (x : α) {k N : ℕ} (hk : k ≤ N) :
    edist (nearestPt e N x) x ≤ edist (e k) x := by
  induction' N with N ihN generalizing k
  · simp [nonpos_iff_eq_zero.1 hk, le_refl]
  · simp only [nearestPt, nearestPtInd_succ, map_apply]
    split_ifs with h
    · rcases hk.eq_or_lt with (rfl | hk)
      exacts [le_rfl, (h k (Nat.lt_succ_iff.1 hk)).le]
    · push_neg at h
      rcases h with ⟨l, hlN, hxl⟩
      rcases hk.eq_or_lt with (rfl | hk)
      exacts [(ihN hlN).trans hxl, ihN (Nat.lt_succ_iff.1 hk)]
#align measure_theory.simple_func.edist_nearest_pt_le MeasureTheory.SimpleFunc.edist_nearestPt_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d38865f554b7eb8d9da798cfb08050bd4353fb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
