# actualResidual_le_retained_and_boundaries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79f9197a-5253-e8a4-0475-96f531b31dfc",
  "kind": "theorem",
  "lexical_name": "actualResidual_le_retained_and_boundaries",
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
  "slug": "actualresidual-le-retained-and-boundaries--ad702467a35ec1118792c660",
  "source": {
    "blob": "3cb205ae0af3e459cc14fe37da63c71aa5791170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variant0c1141eeacc436d47df630409a81a5418339dbbc95afa2e5fc587fb3246dc1d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad702467a35ec1118792c66060c7acb17da2b7c397117bb6ba323062fbe6454e",
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

Occurrence: `result:79f9197a-5253-e8a4-0475-96f531b31dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_le_retained_and_boundaries {A C_F : ℝ} (hA : 91 ≤ A)
    (hledger : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ actualCriticalRetainedRemainder A + 3 + C_F +
      actualCriticalLowerColumnConstant / A ^ 2 + actualCriticalUpperColumnConstant / A ^ 4 := by
  have hb := (abs_le.mp (actualCompensatedWork_sub_retained_abs_le hA)).2
  have hw : compensatedJointWork A ≤ actualCriticalRetainedRemainder A +
      actualCriticalLowerColumnConstant / A ^ 2 + actualCriticalUpperColumnConstant / A ^ 4 := by
    linarith
  have hr := residual_upper_of_compensatedJointWork_upper A
    (actualCriticalRetainedRemainder A + actualCriticalLowerColumnConstant / A ^ 2 +
      actualCriticalUpperColumnConstant / A ^ 4) C_F (by linarith) hw hledger
  linarith

/-- The original independent ledger error gives this comparison unconditionally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variant0c1141eeacc436d47df630409a81a5418339dbbc95afa2e5fc587fb3246dc1d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variant0c1141eeacc436d47df630409a81a5418339dbbc95afa2e5fc587fb3246dc1d3.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cb205ae0af3e459cc14fe37da63c71aa5791170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
