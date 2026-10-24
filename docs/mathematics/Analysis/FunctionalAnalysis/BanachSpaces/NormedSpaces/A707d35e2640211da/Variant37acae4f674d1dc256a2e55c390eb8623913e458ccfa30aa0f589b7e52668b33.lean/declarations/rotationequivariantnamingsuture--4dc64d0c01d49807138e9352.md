# RotationEquivariantNamingSuture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee35e1eb31b82d12d838272b1aa293890563d5ec6630369296d3a04dbacf9e2c",
  "kind": "structure",
  "lexical_name": "RotationEquivariantNamingSuture",
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
  "slug": "rotationequivariantnamingsuture--4dc64d0c01d49807138e9352",
  "source": {
    "blob": "dcb9217be72bf3a81edd641f93238f46171ba27d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 19,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/A707d35e2640211da/Variant37acae4f674d1dc256a2e55c390eb8623913e458ccfa30aa0f589b7e52668b33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4dc64d0c01d49807138e93521d9b694d678417ac6b4b5fd2055a1bf5a07bb709",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/A707d35e2640211da/Variant37acae4f674d1dc256a2e55c390eb8623913e458ccfa30aa0f589b7e52668b33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee35e1eb31b82d12d838272b1aa293890563d5ec6630369296d3a04dbacf9e2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RotationEquivariantNamingSuture (n : Nat) (B : Type*)
    [NeZero n] [NormedAddCommGroup B] [NormedSpace ℝ B] [CompleteSpace B] where
  base : NamingSuture
  rotation : AdmissibleBanachRotation n B
  oracleSignal : CubicalFaceSignal n B
  modelSignal : CubicalFaceSignal n B
  allFacesAgree :
    allDegreeSutured rotation oracleSignal modelSignal
  degreeWeight : Nat → ℝ
  degreeWeightPositive : ∀ k, 0 < degreeWeight k
  eventChange : TwistedOneCochain n B
  eventClosed : TwistedOneCocycle eventChange
  eventExact : TwistedOneCoboundary eventChange
  cycleHolonomy : ZMod n
  cycleHolonomyInStabilizer :
    FaceSignalTurnStabilizes cycleHolonomy modelSignal

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/A707d35e2640211da/Variant37acae4f674d1dc256a2e55c390eb8623913e458ccfa30aa0f589b7e52668b33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/A707d35e2640211da/Variant37acae4f674d1dc256a2e55c390eb8623913e458ccfa30aa0f589b7e52668b33.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcb9217be72bf3a81edd641f93238f46171ba27d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
