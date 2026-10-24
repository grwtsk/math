# lowerSemicontinuousAt_iff_le_liminf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8a1938f867d22ceac0c4eee6a95b759f91b45b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d429323a-2d67-62c3-7c66-1b6fc5f2d177",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40850f17-b29d-d5ac-e879-9bfae3e7f071",
  "kind": "theorem",
  "lexical_name": "lowerSemicontinuousAt_iff_le_liminf",
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
  "slug": "lowersemicontinuousat-iff-le-liminf--160c738e73970e7e2e546685",
  "source": {
    "blob": "f8a1938f867d22ceac0c4eee6a95b759f91b45b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 293,
    "path": "GRWTSK/Topology/GeneralTopology/Semicontinuous/Variante76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:160c738e73970e7e2e546685c1bd64258509b6363f15cddb6ef1a746099025b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Semicontinuous/Variante76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40850f17-b29d-d5ac-e879-9bfae3e7f071`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerSemicontinuousAt_iff_le_liminf {f : α → γ} :
    LowerSemicontinuousAt f x ↔ f x ≤ liminf f (𝓝 x) := by
  rw [← lowerSemicontinuousWithinAt_univ_iff, lowerSemicontinuousWithinAt_iff_le_liminf,
    ← nhdsWithin_univ]

alias ⟨LowerSemicontinuousAt.le_liminf, _⟩ := lowerSemicontinuousAt_iff_le_liminf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Semicontinuous/Variante76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Semicontinuous/Variante76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a1938f867d22ceac0c4eee6a95b759f91b45b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
