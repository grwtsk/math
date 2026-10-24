# UniformFamilyLimitCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62fda5d9efe6551eebce2428f20722fac2ccf33ed4f5cefa157cfea66616d0c1",
  "kind": "structure",
  "lexical_name": "UniformFamilyLimitCertificate",
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
  "slug": "uniformfamilylimitcertificate--ecdaaba5a7e498cc994f0acb",
  "source": {
    "blob": "06a02feb25e2b1b7caa08f1bb15a10b9c96afbe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/Family/Variantf6ec45487bc745bae55c7c3ce18dd5938add55bce678f2d1bf6968bb84c262b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecdaaba5a7e498cc994f0acb6729752ddc5e10baaf45d5eb5731055b2a869805",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Family/Variantf6ec45487bc745bae55c7c3ce18dd5938add55bce678f2d1bf6968bb84c262b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62fda5d9efe6551eebce2428f20722fac2ccf33ed4f5cefa157cfea66616d0c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UniformFamilyLimitCertificate
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (boundary :
      UniformConnesRandomBitfieldFamily
        Scale TestFunction) where
  asymptoticFilter : Filter Scale
  limitingTrace : TestFunction → ℂ
  invariantTraceConverges :
    ∀ test,
      Tendsto
        (fun scale =>
          (boundary.fiber scale).trace.traceTerm
            () test)
        asymptoticFilter
        (𝓝 (limitingTrace test))
  empiricalSpectralMeasuresConverge : Prop
  empiricalSpectralMeasuresConvergeProof :
    empiricalSpectralMeasuresConverge
  uniformIntegrability : Prop
  uniformIntegrabilityProof :
    uniformIntegrability

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Family/Variantf6ec45487bc745bae55c7c3ce18dd5938add55bce678f2d1bf6968bb84c262b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Family/Variantf6ec45487bc745bae55c7c3ce18dd5938add55bce678f2d1bf6968bb84c262b0.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06a02feb25e2b1b7caa08f1bb15a10b9c96afbe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
