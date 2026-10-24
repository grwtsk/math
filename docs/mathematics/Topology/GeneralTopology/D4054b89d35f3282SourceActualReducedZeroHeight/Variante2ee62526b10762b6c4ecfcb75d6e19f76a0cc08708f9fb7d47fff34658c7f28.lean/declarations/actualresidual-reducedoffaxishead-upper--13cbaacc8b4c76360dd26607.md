# actualResidual_reducedOffAxisHead_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97877245-07f8-f897-a6cc-b97fc3fd270d",
  "kind": "theorem",
  "lexical_name": "actualResidual_reducedOffAxisHead_upper",
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
  "slug": "actualresidual-reducedoffaxishead-upper--13cbaacc8b4c76360dd26607",
  "source": {
    "blob": "530395eea4d193ecdcc607961096572aec8c02f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variante2ee62526b10762b6c4ecfcb75d6e19f76a0cc08708f9fb7d47fff34658c7f28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13cbaacc8b4c76360dd26607fd40e5f31d8de0fc85f76e53575b55b8ec94eed1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variante2ee62526b10762b6c4ecfcb75d6e19f76a0cc08708f9fb7d47fff34658c7f28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97877245-07f8-f897-a6cc-b97fc3fd270d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_reducedOffAxisHead_upper :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, 200 ≤ A →
      mertensResidual A ≤ (archimedeanMultiplier 0 -
        (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) / 2 +
          (18 * (162826 / 7623 : ℝ)) / (2 * A^2) +
            actualReducedZeroEnvelope A0 A / 2 := by
  obtain ⟨A0,hA0,hbound⟩ := actualResidual_reducedHead_signed_error_bound
  refine ⟨A0,hA0,fun A hA => ?_⟩
  have hh := (abs_le.mp (hbound A hA)).2
  have hp := actualOffAxisZeroHeightHead_re_le_full A (actualReducedZeroHeight A)
    (by linarith)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualReducedZeroHeight
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variante2ee62526b10762b6c4ecfcb75d6e19f76a0cc08708f9fb7d47fff34658c7f28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variante2ee62526b10762b6c4ecfcb75d6e19f76a0cc08708f9fb7d47fff34658c7f28.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `530395eea4d193ecdcc607961096572aec8c02f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
