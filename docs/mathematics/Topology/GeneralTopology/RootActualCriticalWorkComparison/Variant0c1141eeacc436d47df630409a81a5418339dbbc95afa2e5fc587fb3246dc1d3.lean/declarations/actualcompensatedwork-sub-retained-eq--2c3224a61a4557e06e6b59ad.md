# actualCompensatedWork_sub_retained_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a201602f-b942-7386-52e7-d3ef7c1bb2c4",
  "kind": "theorem",
  "lexical_name": "actualCompensatedWork_sub_retained_eq",
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
  "slug": "actualcompensatedwork-sub-retained-eq--2c3224a61a4557e06e6b59ad",
  "source": {
    "blob": "3cb205ae0af3e459cc14fe37da63c71aa5791170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variant0c1141eeacc436d47df630409a81a5418339dbbc95afa2e5fc587fb3246dc1d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c3224a61a4557e06e6b59adf7e11bac71dc1f5ecb9ba60f7eaa5a56b05437a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variant0c1141eeacc436d47df630409a81a5418339dbbc95afa2e5fc587fb3246dc1d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a201602f-b942-7386-52e7-d3ef7c1bb2c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCompensatedWork_sub_retained_eq {A : ℝ} (hA : 1 ≤ A) :
    compensatedJointWork A - actualCriticalRetainedRemainder A =
      actualCriticalAdjustedLowerColumnTrace A + actualCriticalUpperColumnTrace A := by
  unfold compensatedJointWork actualCriticalRetainedRemainder
  rw [jointMangoldtErrorWork_eq_critical_adjusted_adjoint hA]
  ring

/-- This quantitative comparison keeps all original compensation, with no signed budget premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variant0c1141eeacc436d47df630409a81a5418339dbbc95afa2e5fc587fb3246dc1d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variant0c1141eeacc436d47df630409a81a5418339dbbc95afa2e5fc587fb3246dc1d3.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cb205ae0af3e459cc14fe37da63c71aa5791170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
