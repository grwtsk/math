# actual_bridge_affine_dictionary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71c1dabc-749e-73cd-156c-52772d53014c",
  "kind": "theorem",
  "lexical_name": "actual_bridge_affine_dictionary",
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
  "slug": "actual-bridge-affine-dictionary--ca7b18b7d30c4e0029ea0e72",
  "source": {
    "blob": "f1f08633412bcd4bba5e37b6112725cc5f97d082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt06/Variantae1c310e1afddb4ad11fde52b12e3ef8548f03e76461eec4012261cfbbe259ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca7b18b7d30c4e0029ea0e720df0015c96535028fbe857dba4a4a7b1ebee9667",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt06/Variantae1c310e1afddb4ad11fde52b12e3ef8548f03e76461eec4012261cfbbe259ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71c1dabc-749e-73cd-156c-52772d53014c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bridge_affine_dictionary {A : ℝ} (hA : A ≠ 0) (u : ℝ) :
    criticalDiscrepancyBridge A u = criticalDiscrepancyPrimitive u - actualAffineSlope*u -
      (u/(2*A))*(criticalDiscrepancyPrimitive (2*A)-actualAffineSlope*(2*A)) := by
  unfold criticalDiscrepancyBridge
  field_simp [hA]
  ring

/-- First-order correction at a fixed physical coordinate follows from true L1 alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt06/Variantae1c310e1afddb4ad11fde52b12e3ef8548f03e76461eec4012261cfbbe259ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt06/Variantae1c310e1afddb4ad11fde52b12e3ef8548f03e76461eec4012261cfbbe259ba.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1f08633412bcd4bba5e37b6112725cc5f97d082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
