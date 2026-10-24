# SignControlledXi.complexifiedTracePairing_weil_realConj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26a15dc6-2799-ceae-5a37-e6c255d99eb7",
  "kind": "theorem",
  "lexical_name": "SignControlledXi.complexifiedTracePairing_weil_realConj",
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
  "slug": "signcontrolledxi-complexifiedtracepairing-weil-realconj--834b91f365a66e24c4b0ef8c",
  "source": {
    "blob": "7b28a2ea77e43563b25646a5fcacfe4d937fefcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 465,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:834b91f365a66e24c4b0ef8c65a299a042b15daa36502c0e9f04e5cfed249be9",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26a15dc6-2799-ceae-5a37-e6c255d99eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SignControlledXi.complexifiedTracePairing_weil_realConj
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) :
    X.complexifiedTracePairing
        (CMCoordinateHodge.weilOperator v z)
        (CMCoordinateHodge.realConj (centralInvolution E) z) =
      X.coordinateWeilForm z := by
  unfold SignControlledXi.complexifiedTracePairing
    SignControlledXi.coordinateWeilForm
  apply Finset.sum_congr rfl
  intro σ _
  rw [Complex.normSq_eq_conj_mul_self]
  simp [CMCoordinateHodge.weilOperator, CMCoordinateHodge.realConj,
    weilFactor, CentralInvolution.conj_involutive]
  ring

/-- The coordinate energy is therefore exactly the base-changed trace
polarization evaluated with the local Hodge Weil operator and real structure.
Together with \`complexifiedTracePairing_fieldCoordinates\`, this closes the
coordinate-energy/complexified-trace-pairing identification boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b28a2ea77e43563b25646a5fcacfe4d937fefcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
