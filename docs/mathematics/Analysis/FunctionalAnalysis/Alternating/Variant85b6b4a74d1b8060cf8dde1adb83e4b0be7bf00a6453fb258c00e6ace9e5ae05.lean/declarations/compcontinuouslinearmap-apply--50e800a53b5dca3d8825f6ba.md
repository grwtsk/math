# compContinuousLinearMap_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf93f65e-743f-1411-b452-5e909536edda",
  "kind": "theorem",
  "lexical_name": "compContinuousLinearMap_apply",
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
  "slug": "compcontinuouslinearmap-apply--50e800a53b5dca3d8825f6ba",
  "source": {
    "blob": "77d4de42f4654aad83630b9bd7bd1a70a4844782",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 316,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Alternating/Variant85b6b4a74d1b8060cf8dde1adb83e4b0be7bf00a6453fb258c00e6ace9e5ae05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50e800a53b5dca3d8825f6bafaee869e6e9c625b46a0f97a3b3b8940037c287a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Alternating/Variant85b6b4a74d1b8060cf8dde1adb83e4b0be7bf00a6453fb258c00e6ace9e5ae05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf93f65e-743f-1411-b452-5e909536edda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compContinuousLinearMap_apply (g : M [Λ^ι]→L[R] N) (f : M' →L[R] M) (m : ι → M') :
    g.compContinuousLinearMap f m = g (f ∘ m) :=
  rfl

/-- Composing a continuous alternating map with a continuous linear map gives again a
continuous alternating map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Alternating/Variant85b6b4a74d1b8060cf8dde1adb83e4b0be7bf00a6453fb258c00e6ace9e5ae05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Alternating/Variant85b6b4a74d1b8060cf8dde1adb83e4b0be7bf00a6453fb258c00e6ace9e5ae05.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77d4de42f4654aad83630b9bd7bd1a70a4844782` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
