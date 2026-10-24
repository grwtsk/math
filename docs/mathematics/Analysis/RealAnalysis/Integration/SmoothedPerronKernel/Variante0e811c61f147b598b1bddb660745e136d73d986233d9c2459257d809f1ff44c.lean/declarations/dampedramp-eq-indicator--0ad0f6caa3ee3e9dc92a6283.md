# dampedRamp_eq_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "466f88a40275564abf7b79356ff47b938e9b6ac9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0154df3-4b36-54b8-1753-0fdea0c3eed5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05bd3cb9-36df-81d7-edd8-3518607c0bf6",
  "kind": "theorem",
  "lexical_name": "dampedRamp_eq_indicator",
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
  "slug": "dampedramp-eq-indicator--0ad0f6caa3ee3e9dc92a6283",
  "source": {
    "blob": "466f88a40275564abf7b79356ff47b938e9b6ac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ad0f6caa3ee3e9dc92a62838211190beadb4bd2dcefca8db9847751b261bdbf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05bd3cb9-36df-81d7-edd8-3518607c0bf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedRamp_eq_indicator (c : ℝ) :
    dampedRamp c = (Ioi (0 : ℝ)).indicator (kernelIntegrand 1 (c : ℂ)) := by
  funext t
  by_cases ht : 0 < t
  · simp [dampedRamp, kernelIntegrand, ht, max_eq_left ht.le]
  · simp [dampedRamp, ht, max_eq_right (le_of_not_gt ht)]

/-- The Fourier input is integrable before invoking Fourier inversion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `466f88a40275564abf7b79356ff47b938e9b6ac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
