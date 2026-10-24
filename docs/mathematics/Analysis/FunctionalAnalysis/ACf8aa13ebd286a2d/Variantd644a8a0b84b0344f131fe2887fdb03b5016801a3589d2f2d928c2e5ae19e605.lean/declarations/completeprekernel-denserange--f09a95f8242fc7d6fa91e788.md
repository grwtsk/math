# completePreKernel_denseRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c54cd365-24fa-5c78-6635-bdf2cedd9b0d",
  "kind": "theorem",
  "lexical_name": "completePreKernel_denseRange",
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
  "slug": "completeprekernel-denserange--f09a95f8242fc7d6fa91e788",
  "source": {
    "blob": "9cba7e4d48780ffc6065dbdc6730ac3f9cb8c59e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 26,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ACf8aa13ebd286a2d/Variantd644a8a0b84b0344f131fe2887fdb03b5016801a3589d2f2d928c2e5ae19e605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f09a95f8242fc7d6fa91e788ae534a0ed9514c16b9c49c04bb8dd1dd40b056db",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ACf8aa13ebd286a2d/Variantd644a8a0b84b0344f131fe2887fdb03b5016801a3589d2f2d928c2e5ae19e605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c54cd365-24fa-5c78-6635-bdf2cedd9b0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completePreKernel_denseRange :
    DenseRange (completePreKernel kernel) :=
  UniformSpace.Completion.denseRange_coe

end Mathematics.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ACf8aa13ebd286a2d/Variantd644a8a0b84b0344f131fe2887fdb03b5016801a3589d2f2d928c2e5ae19e605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ACf8aa13ebd286a2d/Variantd644a8a0b84b0344f131fe2887fdb03b5016801a3589d2f2d928c2e5ae19e605.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cba7e4d48780ffc6065dbdc6730ac3f9cb8c59e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
