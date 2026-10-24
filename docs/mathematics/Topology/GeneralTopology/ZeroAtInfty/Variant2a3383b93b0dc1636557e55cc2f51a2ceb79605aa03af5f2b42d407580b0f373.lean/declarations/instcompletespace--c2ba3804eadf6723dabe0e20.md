# instCompleteSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67e23b76884267b05ece115e3ac1f72b7f2f6b4d17934e55178fce131a7180af",
  "kind": "instance",
  "lexical_name": "instCompleteSpace",
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
  "slug": "instcompletespace--c2ba3804eadf6723dabe0e20",
  "source": {
    "blob": "4cf65c11e95f0d175085259c970c46c8851939e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 436,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant2a3383b93b0dc1636557e55cc2f51a2ceb79605aa03af5f2b42d407580b0f373.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2ba3804eadf6723dabe0e20f46bf67fd0b87d84e340ef7e9f3ef4076373d9b6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Variant2a3383b93b0dc1636557e55cc2f51a2ceb79605aa03af5f2b42d407580b0f373.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67e23b76884267b05ece115e3ac1f72b7f2f6b4d17934e55178fce131a7180af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCompleteSpace [CompleteSpace β] : CompleteSpace C₀(α, β) :=
  (completeSpace_iff_isComplete_range isometry_toBCF.isUniformInducing).mpr
    isClosed_range_toBCF.isComplete

end Metric

section Norm

/-! ### Normed space

The norm structure on `C₀(α, β)` is the one induced by the inclusion `toBCF : C₀(α, β) → (α →ᵇ b)`,
viewed as an additive monoid homomorphism. Then `C₀(α, β)` is naturally a normed space over a normed
field `𝕜` whenever `β` is as well.
-/


section NormedSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Variant2a3383b93b0dc1636557e55cc2f51a2ceb79605aa03af5f2b42d407580b0f373.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant2a3383b93b0dc1636557e55cc2f51a2ceb79605aa03af5f2b42d407580b0f373.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cf65c11e95f0d175085259c970c46c8851939e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
