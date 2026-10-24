# analyticWithinAt_iff_exists_analyticAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2eb0051745641c17b3e86f2298d5a5fd7eff0ac2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:225d13f0-f842-a641-16fd-dde6a73c3b33",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa58bcc0-7f5d-3d4b-b62f-3a6fd0dfe5ee",
  "kind": "lemma",
  "lexical_name": "analyticWithinAt_iff_exists_analyticAt",
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
  "slug": "analyticwithinat-iff-exists-analyticat--7f9ad482d7fd32c2f6daf193",
  "source": {
    "blob": "2eb0051745641c17b3e86f2298d5a5fd7eff0ac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 166,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f9ad482d7fd32c2f6daf1934e5b5d8ae869b68f42d554704101f95086378f01",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa58bcc0-7f5d-3d4b-b62f-3a6fd0dfe5ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma analyticWithinAt_iff_exists_analyticAt [CompleteSpace F] {f : E → F} {s : Set E} {x : E} :
    AnalyticWithinAt 𝕜 f s x ↔
      ∃ g, f =ᶠ[𝓝[insert x s] x] g ∧ AnalyticAt 𝕜 g x := by
  simp only [AnalyticWithinAt, AnalyticAt, hasFPowerSeriesWithinAt_iff_exists_hasFPowerSeriesAt]
  tauto

/-- `f` is analytic within `s` at `x` iff some local extension of `f` is analytic at `x`. In this
version, we make sure that the extension coincides with `f` on all of `insert x s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eb0051745641c17b3e86f2298d5a5fd7eff0ac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
