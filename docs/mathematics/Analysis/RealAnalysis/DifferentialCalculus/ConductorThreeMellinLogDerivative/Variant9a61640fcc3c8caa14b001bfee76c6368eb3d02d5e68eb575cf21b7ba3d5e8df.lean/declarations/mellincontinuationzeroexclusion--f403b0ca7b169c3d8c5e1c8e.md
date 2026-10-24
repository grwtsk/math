# MellinContinuationZeroExclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82416c22f9b076ddd648d36b5054e456dfe9028b06a0a6bfd64f541aca8b4dd5",
  "kind": "def",
  "lexical_name": "MellinContinuationZeroExclusion",
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
  "slug": "mellincontinuationzeroexclusion--f403b0ca7b169c3d8c5e1c8e",
  "source": {
    "blob": "e8d104f3bd67a7edd3411547f15a054cb1fb1f83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f403b0ca7b169c3d8c5e1c8e86c29c35d422060cb654ece9a4a6c10766da3905",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82416c22f9b076ddd648d36b5054e456dfe9028b06a0a6bfd64f541aca8b4dd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MellinContinuationZeroExclusion : Prop :=
  TwistedPsiHalfPlusEpsilon →
    (DifferentiableOn ℂ conductorThreeMellinLogDerivative
      {s : ℂ | 1 / 2 < s.re} ∧
     ∀ s : ℂ, 1 < s.re →
      conductorThreeMellinLogDerivative s =
        -deriv (conductorThreeCharacter.LFunction) s /
          conductorThreeCharacter.LFunction s) →
    GRHForConductorThreeCharacter

/-- Checked composition of the two explicit reverse obligations. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Variant9a61640fcc3c8caa14b001bfee76c6368eb3d02d5e68eb575cf21b7ba3d5e8df.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8d104f3bd67a7edd3411547f15a054cb1fb1f83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
