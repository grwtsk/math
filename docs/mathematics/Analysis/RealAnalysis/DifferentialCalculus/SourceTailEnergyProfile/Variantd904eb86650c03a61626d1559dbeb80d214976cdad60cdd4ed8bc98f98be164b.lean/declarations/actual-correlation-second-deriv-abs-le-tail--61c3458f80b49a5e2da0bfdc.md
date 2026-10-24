# actual_correlation_second_deriv_abs_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bd2ecc5-89d3-a8dd-b110-971d451b81e4",
  "kind": "theorem",
  "lexical_name": "actual_correlation_second_deriv_abs_le_tail",
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
  "slug": "actual-correlation-second-deriv-abs-le-tail--61c3458f80b49a5e2da0bfdc",
  "source": {
    "blob": "ab357dbfa2de9ef376415b4131ee3a1a87cb4fde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 89,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfile/Variantd904eb86650c03a61626d1559dbeb80d214976cdad60cdd4ed8bc98f98be164b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61c3458f80b49a5e2da0bfdcbe1f5c9463d21023fe75457001b6e0a18a229f9a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfile/Variantd904eb86650c03a61626d1559dbeb80d214976cdad60cdd4ed8bc98f98be164b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bd2ecc5-89d3-a8dd-b110-971d451b81e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_second_deriv_abs_le_tail {R A : ℝ} (hR : 1 ≤ R)
    (hRA : R ≤ A) (t : ℝ) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤
      tailEnergyCoefficient R / A ^ 2 := by
  have hRp : 0 < R := by linarith
  exact (sourceCorrelation_second_deriv_abs_le_energy (hRp.trans_le hRA) t).trans
    (actual_derivative_energy_le_tail hRp hRA)

/-- The exactly evaluated coefficient at the existing source consumer radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfile/Variantd904eb86650c03a61626d1559dbeb80d214976cdad60cdd4ed8bc98f98be164b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfile/Variantd904eb86650c03a61626d1559dbeb80d214976cdad60cdd4ed8bc98f98be164b.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab357dbfa2de9ef376415b4131ee3a1a87cb4fde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
