# stoneanToCompHausEffectivePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db1e473c7367b4af42d81c0f995e3433297f1d885bb93aeba2acbd281d4797bd",
  "kind": "def",
  "lexical_name": "stoneanToCompHausEffectivePresentation",
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
  "slug": "stoneantocomphauseffectivepresentation--57bc1acd6d15302d30a91325",
  "source": {
    "blob": "fdcb2c0097bbfb22849aa542e048a14b4f8be3d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 67,
    "path": "GRWTSK/Topology/EffectiveEpi/Varianta32bc1773cf74aaec8ff52d289a4d56ba9eb37a6f16e0a7050fc5d68cf5eb4b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57bc1acd6d15302d30a91325e2ab6bc9fa3036e1c66044570446337ea3bc6a8a",
  "verification": {
    "reference": "docs/verification/Topology/EffectiveEpi/Varianta32bc1773cf74aaec8ff52d289a4d56ba9eb37a6f16e0a7050fc5d68cf5eb4b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db1e473c7367b4af42d81c0f995e3433297f1d885bb93aeba2acbd281d4797bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def stoneanToCompHausEffectivePresentation (X : CompHaus) :
    Stonean.toCompHaus.EffectivePresentation X where
  p := X.presentation
  f := CompHaus.presentation.π X
  effectiveEpi := ((CompHaus.effectiveEpi_tfae _).out 1 2).mpr (inferInstance : Epi _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/EffectiveEpi/Varianta32bc1773cf74aaec8ff52d289a4d56ba9eb37a6f16e0a7050fc5d68cf5eb4b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/EffectiveEpi/Varianta32bc1773cf74aaec8ff52d289a4d56ba9eb37a6f16e0a7050fc5d68cf5eb4b2.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdcb2c0097bbfb22849aa542e048a14b4f8be3d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
