# literal_quartic_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa1c82ed-3852-442a-ad13-9480f29f8ad6",
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
  "slug": "literal-quartic-nonzero--c6c37a6da9bd8d3169c1d08e",
  "source": {
    "blob": "a660f0653e2e73b04e1b6d9157c4749536d1918e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Variant73e10a9c5634d9c957a264fb5433f9570bf45c899ba0e123b98a34e7fa703602.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6c37a6da9bd8d3169c1d08e67cc332a8cadb204d7c284cff1826d8f9286c1c2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Variant73e10a9c5634d9c957a264fb5433f9570bf45c899ba0e123b98a34e7fa703602.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa1c82ed-3852-442a-ad13-9480f29f8ad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–152.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Variant73e10a9c5634d9c957a264fb5433f9570bf45c899ba0e123b98a34e7fa703602.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Variant73e10a9c5634d9c957a264fb5433f9570bf45c899ba0e123b98a34e7fa703602.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a660f0653e2e73b04e1b6d9157c4749536d1918e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
