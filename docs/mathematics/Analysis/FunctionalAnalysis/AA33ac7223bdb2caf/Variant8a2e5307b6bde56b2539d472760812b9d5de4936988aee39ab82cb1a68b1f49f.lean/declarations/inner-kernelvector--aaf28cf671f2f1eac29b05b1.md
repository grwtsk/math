# inner_kernelVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6016d0b9-e9de-e435-3963-48c2cd4261f2",
  "kind": "theorem",
  "lexical_name": "inner_kernelVector",
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
  "slug": "inner-kernelvector--aaf28cf671f2f1eac29b05b1",
  "source": {
    "blob": "9f8ed9b5c099d9cfe0365aa3d29a6c870fb01237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 29,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/AA33ac7223bdb2caf/Variant8a2e5307b6bde56b2539d472760812b9d5de4936988aee39ab82cb1a68b1f49f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaf28cf671f2f1eac29b05b18677d6c2bb79bc455c0370e5a3a66515cb5c1f64",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/AA33ac7223bdb2caf/Variant8a2e5307b6bde56b2539d472760812b9d5de4936988aee39ab82cb1a68b1f49f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6016d0b9-e9de-e435-3963-48c2cd4261f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_kernelVector (i j : Index) :
    inner ℂ (kernelVector kernel i) (kernelVector kernel j) =
      kernel i j := by
  simp only [kernelVector]
  rw [inner_completePreKernel,
    preKernelInner_basisVector]

end Mathematics.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/AA33ac7223bdb2caf/Variant8a2e5307b6bde56b2539d472760812b9d5de4936988aee39ab82cb1a68b1f49f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/AA33ac7223bdb2caf/Variant8a2e5307b6bde56b2539d472760812b9d5de4936988aee39ab82cb1a68b1f49f.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8ed9b5c099d9cfe0365aa3d29a6c870fb01237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
