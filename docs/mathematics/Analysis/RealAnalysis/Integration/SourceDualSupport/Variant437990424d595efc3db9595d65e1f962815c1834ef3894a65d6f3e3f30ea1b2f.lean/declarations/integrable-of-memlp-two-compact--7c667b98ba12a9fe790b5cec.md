# integrable_of_memLp_two_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aeece3f4342bd1cb672b0914c1642d9d219461b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/437990424d595efc3db9595d65e1f962815c1834ef3894a65d6f3e3f30ea1b2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:579559fd-4621-cafc-f330-1848c34bbb46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b4a0376-a47a-3fbd-2028-aa9ac5920ff2",
  "kind": "theorem",
  "lexical_name": "integrable_of_memLp_two_compact",
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
  "slug": "integrable-of-memlp-two-compact--7c667b98ba12a9fe790b5cec",
  "source": {
    "blob": "aeece3f4342bd1cb672b0914c1642d9d219461b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceDualSupport/Variant437990424d595efc3db9595d65e1f962815c1834ef3894a65d6f3e3f30ea1b2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c667b98ba12a9fe790b5ceca868fb7075e7e025cbe1510fa7c49150a8142f87",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceDualSupport/Variant437990424d595efc3db9595d65e1f962815c1834ef3894a65d6f3e3f30ea1b2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b4a0376-a47a-3fbd-2028-aa9ac5920ff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_of_memLp_two_compact {g : ℝ → ℂ} (hg : MemLp g 2 volume)
    (hc : HasCompactSupport g) : Integrable g :=
  (integrableOn_iff_integrable_of_support_subset (subset_tsupport g)).mp
    ((hg.locallyIntegrable (by norm_num)).integrableOn_isCompact hc)

/-- No compactly supported measurable representative of the actual dual class exists. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceDualSupport/Variant437990424d595efc3db9595d65e1f962815c1834ef3894a65d6f3e3f30ea1b2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceDualSupport/Variant437990424d595efc3db9595d65e1f962815c1834ef3894a65d6f3e3f30ea1b2f.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeece3f4342bd1cb672b0914c1642d9d219461b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
