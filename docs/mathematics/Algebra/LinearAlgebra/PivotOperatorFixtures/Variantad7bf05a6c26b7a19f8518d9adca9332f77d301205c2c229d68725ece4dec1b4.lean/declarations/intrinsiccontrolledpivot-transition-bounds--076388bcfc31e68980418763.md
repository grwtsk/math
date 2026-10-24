# intrinsicControlledPivot_transition_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cdc694f-310e-6056-d42a-70bc11992312",
  "kind": "theorem",
  "lexical_name": "intrinsicControlledPivot_transition_bounds",
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
  "slug": "intrinsiccontrolledpivot-transition-bounds--076388bcfc31e68980418763",
  "source": {
    "blob": "54a5fa9a08a0db1c0db6a156f29e692742143ea3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotOperatorFixtures/Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:076388bcfc31e689804187634167e0c0c257929c082c9a38b6e7cc0f80461b41",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotOperatorFixtures/Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cdc694f-310e-6056-d42a-70bc11992312`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intrinsicControlledPivot_transition_bounds {k n : ℕ}
    (A : FullRankFrame k n) (hA : A.val * A.val.transpose = 1)
    (I J : Fin k ↪o Fin n) (hI : representedPlane A ∈ intrinsicControlledPivotDomain I)
    (hJ : representedPlane A ∈ intrinsicControlledPivotDomain J) :
    ‖pivotTransition A.val I J‖ ≤ 2 * Real.sqrt (n.choose k : ℝ) ∧
      ‖(pivotTransition A.val I J)⁻¹‖ ≤ 2 * Real.sqrt (n.choose k : ℝ) :=
  controlledCover_transition_bounds A.val hA I J
    ((orthonormal_representedPlane_mem_intrinsicControlledPivotDomain_iff A hA I).mp hI)
    ((orthonormal_representedPlane_mem_intrinsicControlledPivotDomain_iff A hA J).mp hJ)

/-- Each intrinsic plane has one controlled chart with the same bound on every orthonormal representative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotOperatorFixtures/Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotOperatorFixtures/Variantad7bf05a6c26b7a19f8518d9adca9332f77d301205c2c229d68725ece4dec1b4.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54a5fa9a08a0db1c0db6a156f29e692742143ea3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
