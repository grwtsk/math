# sourceGreenDoubleKernel_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9178001b-1e8c-0b2e-6e6e-39550e05c4b2",
  "kind": "theorem",
  "lexical_name": "sourceGreenDoubleKernel_integrable",
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
  "slug": "sourcegreendoublekernel-integrable--86a66e3067a54c3e91f89be8",
  "source": {
    "blob": "630c714d5649b5dd7133cb9996b2d37aaccd5333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 248,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86a66e3067a54c3e91f89be811310faa15205cd1ed64199002eb1ef78d89d4e8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9178001b-1e8c-0b2e-6e6e-39550e05c4b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceGreenDoubleKernel_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (sourceGreenDoubleKernel A) (volume.prod volume) :=
  (sourceGreenDoubleKernel_continuous hA).integrable_of_hasCompactSupport
    (sourceGreenDoubleKernel_hasCompactSupport hA)

/-- The literal signed source/convolution product is integrable before evaluation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant16f46340839242716cfad7da2aa0c26a5ff780279bf4e52a44bbbad68fdb7b34.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `630c714d5649b5dd7133cb9996b2d37aaccd5333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
