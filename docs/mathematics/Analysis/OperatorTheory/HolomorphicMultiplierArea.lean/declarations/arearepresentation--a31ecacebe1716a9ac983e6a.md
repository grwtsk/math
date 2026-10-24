# areaRepresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de79b0fa8fea0802a4977e5e4a026ec159af2db38fc9853e09ce1b29b6b71169",
  "kind": "def",
  "lexical_name": "areaRepresentation",
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
  "slug": "arearepresentation--a31ecacebe1716a9ac983e6a",
  "source": {
    "blob": "4f6b98dd105a5d8265111243d4d66188ef5fbd72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 255,
    "path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierArea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a31ecacebe1716a9ac983e6addfe8e0224275c3dee3f9eab078294a32eaafa79",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de79b0fa8fea0802a4977e5e4a026ec159af2db38fc9853e09ce1b29b6b71169`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def areaRepresentation (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) :
    BoundedSymbol D.X →ₗᵢ[ℂ]
      (SectionCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen →L[ℂ]
        SectionCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen) where
  toLinearMap := (completedAlgHom (MetricWeights.identity D) (areaMeasure D.X) hOpen).toLinearMap
  norm_map' := area_representation_norm hOpen hArea

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicMultiplierArea.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f6b98dd105a5d8265111243d4d66188ef5fbd72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
