# literal_quartic_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe4dc4cd-d742-a33a-0bd8-af8227c3613a",
  "kind": "theorem",
  "lexical_name": "literal_quartic_nonzero",
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
  "slug": "literal-quartic-nonzero--28790be6e5574e34e93b0ad8",
  "source": {
    "blob": "554aa636f873f5df95bb833f3a641747deb17f84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 127,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28790be6e5574e34e93b0ad83ae9f5b4a838d766c4b3d6371b20fb708f27adf5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe4dc4cd-d742-a33a-0bd8-af8227c3613a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_quartic_nonzero {w : ℂ} (hw : 0 < w.re) :
    quarticBumpLaplace w ≠ 0 := by
  intro hz
  have h := weighted_energy_identity w hz
  have hj := weightedMass_pos w
  have hi := weightedEnergy_nonneg w
  have hre := congrArg Complex.re h
  have him := congrArg Complex.im h
  simp only [pow_two,Complex.mul_re,Complex.mul_im,Complex.ofReal_re,Complex.ofReal_im,
    Complex.neg_re,Complex.neg_im,mul_zero,zero_mul,sub_zero,zero_add,add_zero] at hre him
  have hwi : w.im = 0 := by nlinarith
  rw [hwi] at hre
  have hp : 0 < w.re^2*weightedMass w := mul_pos (sq_pos_of_pos hw) hj
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant716bab44cf3dc0bd69317b9a5be532d4e3f85012f8e2b6012a8d24174286debc.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `554aa636f873f5df95bb833f3a641747deb17f84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
