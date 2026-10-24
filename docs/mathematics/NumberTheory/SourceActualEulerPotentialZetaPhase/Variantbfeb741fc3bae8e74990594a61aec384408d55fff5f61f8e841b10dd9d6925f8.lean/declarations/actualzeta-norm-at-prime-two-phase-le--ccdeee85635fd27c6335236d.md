# actualZeta_norm_at_prime_two_phase_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03ef3f54-d738-9df9-6ddc-ef1e3092e538",
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
  "slug": "actualzeta-norm-at-prime-two-phase-le--ccdeee85635fd27c6335236d",
  "source": {
    "blob": "c85af3229c08dc18c0d5dec0e345ac71e7e61cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 100,
    "path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantbfeb741fc3bae8e74990594a61aec384408d55fff5f61f8e841b10dd9d6925f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccdeee85635fd27c6335236d857741d7786b07b6fe6fa92d417ecd94b4a4e36a",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantbfeb741fc3bae8e74990594a61aec384408d55fff5f61f8e841b10dd9d6925f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03ef3f54-d738-9df9-6ddc-ef1e3092e538`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeta_norm_at_prime_two_phase_le :
    ‖riemannZeta ((4:ℂ)+((Real.pi/Real.log 2:ℝ):ℂ)*I)‖ ≤ Real.exp (-1/48) := by
  have hs : 1 < ((4:ℂ)+((Real.pi/Real.log 2:ℝ):ℂ)*I).re := by
    simp only [Complex.add_re, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
      Complex.I_re, Complex.I_im, zero_mul, mul_zero, sub_zero, add_zero]
    norm_num
  rw [← actualFullPrimeLogPotential_exp_eq_zeta _ hs, Complex.norm_exp]
  exact Real.exp_le_exp.mpr actualFullPrimeLogPotential_re_negative

end
end FormalResearch.RiemannHypothesis.SourceActualEulerPotentialZetaPhase
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantbfeb741fc3bae8e74990594a61aec384408d55fff5f61f8e841b10dd9d6925f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantbfeb741fc3bae8e74990594a61aec384408d55fff5f61f8e841b10dd9d6925f8.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c85af3229c08dc18c0d5dec0e345ac71e7e61cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
