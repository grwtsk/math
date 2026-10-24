# literal_quartic_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:952e6faf-43ca-4b37-2ec7-b51f315a3a02",
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
  "slug": "literal-quartic-nonzero--20629cf18997a880538a5af4",
  "source": {
    "blob": "a6e88ce4be096ce68e900b1117d471744866154b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20629cf18997a880538a5af43fa0f6c505c2e5c1f8df006ec90916a921e23179",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:952e6faf-43ca-4b37-2ec7-b51f315a3a02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–152.

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
    Complex.neg_re,Complex.neg_im,mul_zero,sub_zero,zero_add] at hre him
  have hwi : w.im = 0 := by
    have hm : (2*w.re*weightedMass w)*w.im = 0 := by linear_combination him
    have hp : 0 < 2*w.re*weightedMass w := by positivity
    exact (mul_eq_zero.mp hm).resolve_left hp.ne'
  rw [hwi] at hre
  have hp : 0 < w.re^2*weightedMass w := mul_pos (sq_pos_of_pos hw) hj
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant8e4bbea8de677004f329fbfd01dffd39aaf322c423bf8985e54eed55fc8e7a0e.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6e88ce4be096ce68e900b1117d471744866154b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
