# PseudoMetricSpace.ofSeminormedSpaceCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:199f0f4d42c6437a81ded5d972786569caa2f7249925409217b610cae98eaeaa",
  "kind": "abbrev",
  "lexical_name": "PseudoMetricSpace.ofSeminormedSpaceCore",
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
  "slug": "pseudometricspace-ofseminormedspacecore--8efa2a4eba9576eafb1b94fa",
  "source": {
    "blob": "0c70350a94ff80dd45966f2a9e6abdd5d0a629e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 578,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant07fe5050cc0ca220ce465b2c394471632dd4ef1beab08f3333a8f6a4c707c148.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8efa2a4eba9576eafb1b94faa62186f87626c2a4b827cf57121b63d6702007bd",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant07fe5050cc0ca220ce465b2c394471632dd4ef1beab08f3333a8f6a4c707c148.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:199f0f4d42c6437a81ded5d972786569caa2f7249925409217b610cae98eaeaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev PseudoMetricSpace.ofSeminormedSpaceCore {𝕜 E : Type*} [NormedField 𝕜] [AddCommGroup E]
    [Norm E] [Module 𝕜 E] (core : SeminormedSpace.Core 𝕜 E) :
    PseudoMetricSpace E where
  dist x y := ‖-x + y‖
  dist_self x := by
    show ‖-x + x‖ = 0
    simp only [add_comm, ← sub_eq_add_neg, sub_self]
    have : (0 : E) = (0 : 𝕜) • (0 : E) := by simp
    rw [this, core.norm_smul]
    simp
  dist_comm x y := by
    show ‖-x + y‖ = ‖-y + x‖
    have : -y + x = (-1 : 𝕜) • (-x + y) := by simp; abel
    rw [this, core.norm_smul]
    simp
  dist_triangle x y z := by
    show ‖-x + z‖ ≤ ‖-x + y‖ + ‖-y + z‖
    have : -x + z = (-x + y) + (-y + z) := by abel
    rw [this]
    exact core.norm_triangle _ _
  edist_dist x y := by exact (ENNReal.ofReal_eq_coe_nnreal _).symm

/-- Produces a `PseudoEMetricSpace E` instance from a `SeminormedSpace.Core`. Note that
if this is used to define an instance on a type, it also provides a new uniformity and
topology on the type. See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant07fe5050cc0ca220ce465b2c394471632dd4ef1beab08f3333a8f6a4c707c148.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant07fe5050cc0ca220ce465b2c394471632dd4ef1beab08f3333a8f6a4c707c148.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c70350a94ff80dd45966f2a9e6abdd5d0a629e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
