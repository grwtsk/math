# actualZeta_norm_at_prime_two_phase_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:103410e0-4fa4-e901-72d4-35ddd5488147",
  "kind": "theorem",
  "lexical_name": "actualZeta_norm_at_prime_two_phase_le",
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
  "slug": "actualzeta-norm-at-prime-two-phase-le--294c429c5282157f648f597e",
  "source": {
    "blob": "851c59579ee8a534d74f5d6dfaf30c5e87ae6dbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 95,
    "path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:294c429c5282157f648f597e696656291ced5fc1febfde5550fd3619a2c91698",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:103410e0-4fa4-e901-72d4-35ddd5488147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeta_norm_at_prime_two_phase_le :
    ‖riemannZeta ((4:ℂ)+((Real.pi/Real.log 2:ℝ):ℂ)*I)‖ ≤ Real.exp (-1/48) := by
  have hs : 1 < ((4:ℂ)+((Real.pi/Real.log 2:ℝ):ℂ)*I).re := by norm_num
  rw [← actualFullPrimeLogPotential_exp_eq_zeta _ hs, Complex.norm_exp]
  exact Real.exp_le_exp.mpr actualFullPrimeLogPotential_re_negative

end
end FormalResearch.RiemannHypothesis.SourceActualEulerPotentialZetaPhase
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Varianted60960555e77381ae196ebbbc2d30190291aac94d3c09f77f6ff7b89779627c.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `851c59579ee8a534d74f5d6dfaf30c5e87ae6dbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
