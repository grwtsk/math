# Verification target: GRWTSK.Analysis.FunctionalAnalysis.NNNorm.Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bdc7b93c258dc6a9d57efa76ca10c999e8b5413",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bdc7b93c258dc6a9d57efa76ca10c999e8b5413`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nnnorm_def](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/nnnorm-def--2b58c059d27ec1de5d915da0.md) | 57 | `result-track:2b58c059d27ec1de5d915da0126b733e03a0d3c690b6e19e41cb61b6aaca6aea` |
| 2 | `theorem` | [opNNNorm_le_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/opnnnorm-le-bound--486a46d8e5ee35b1532b7b9e.md) | 64 | `result-track:486a46d8e5ee35b1532b7b9e75b37ece2130103df93377e99fd34b888de4586e` |
| 3 | `theorem` | [opNNNorm_le_bound'](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/opnnnorm-le-bound--d363507de478e2fb1df4d5d8.md) | 69 | `result-track:d363507de478e2fb1df4d5d87756ce53a5d867f45563eea71608c0b57d1da898` |
| 4 | `theorem` | [opNNNorm_le_of_unit_nnnorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/opnnnorm-le-of-unit-nnnorm--8e74a96691307d09ea5936e8.md) | 76 | `result-track:8e74a96691307d09ea5936e81b9bc19bc5efe858ac62125820d840521def8974` |
| 5 | `theorem` | [opNNNorm_le_of_lipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/opnnnorm-le-of-lipschitz--fae2749c88e6ddeb300f5b54.md) | 80 | `result-track:fae2749c88e6ddeb300f5b540d6680f69b5825fef53741064073c47a04e49fd6` |
| 6 | `theorem` | [opNNNorm_eq_of_bounds](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/opnnnorm-eq-of-bounds--2159260d1951a298caf213e9.md) | 85 | `result-track:2159260d1951a298caf213e964ff868a0bd2b1270cc3e73f882dc44887cd966c` |
| 7 | `theorem` | [opNNNorm_le_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/opnnnorm-le-iff--4a25cdadcb45a7f52d98abd4.md) | 90 | `result-track:4a25cdadcb45a7f52d98abd4e3f8f44dc6725145c2ce096961655fce75152c66` |
| 8 | `theorem` | [isLeast_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/isleast-opnnnorm--131077ac613db64455fa115b.md) | 94 | `result-track:131077ac613db64455fa115bfd02c102a2fcaf398d4638d79d54debb505baa4a` |
| 9 | `theorem` | [opNNNorm_comp_le](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/opnnnorm-comp-le--e11b88e4aaa3f8bb752dfacd.md) | 97 | `result-track:e11b88e4aaa3f8bb752dfacd250577903a3eda3e1b05dcb191c5e8a2192e50f9` |
| 10 | `lemma` | [opENorm_comp_le](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/openorm-comp-le--615dfc322d5a7d2af0191064.md) | 100 | `result-track:615dfc322d5a7d2af0191064a7647ca82a79bb99a9b906f777c956c7ee37bcc9` |
| 11 | `theorem` | [le_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/le-opnnnorm--1d132d4a27a0da4c5f07067f.md) | 103 | `result-track:1d132d4a27a0da4c5f07067fa4d1ee7cf8180a95a06ec5458e32881b26fe3a9a` |
| 12 | `lemma` | [le_opENorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/le-openorm--c96d9371f72c5e2b8f5e3103.md) | 106 | `result-track:c96d9371f72c5e2b8f5e3103f5a16a56fe40d57dd8d416d19e4ca09e83e1a060` |
| 13 | `theorem` | [nndist_le_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/nndist-le-opnnnorm--179ff40c5931b2d7a20bd59a.md) | 108 | `result-track:179ff40c5931b2d7a20bd59a02b61522b945635aa529ebd6d41c8af5d72b5242` |
| 14 | `theorem` | [lipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/lipschitz--ea3d3b6c0ec40616c676e9be.md) | 113 | `result-track:ea3d3b6c0ec40616c676e9bec1b8dcd39217fb3bbda526861eae09a1fab5ab61` |
| 15 | `theorem` | [lipschitz_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/lipschitz-apply--a4e0134e485c42c72fbb02b0.md) | 117 | `result-track:a4e0134e485c42c72fbb02b0a307a1f93b9be10548b7a6f4638af3ebffea72a1` |
| 16 | `theorem` | [exists_mul_lt_apply_of_lt_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/exists-mul-lt-apply-of-lt-opnnnorm--d8fbe6f026f75121ad464586.md) | 126 | `result-track:d8fbe6f026f75121ad46458697193745f5cec0e8980ea02e8515726835e25ff9` |
| 17 | `theorem` | [exists_mul_lt_of_lt_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/exists-mul-lt-of-lt-opnorm--76ac533815e84f364c1c909e.md) | 132 | `result-track:76ac533815e84f364c1c909e88c9fbea99143b02a7d634c1575a707e33f793e3` |
| 18 | `theorem` | [exists_lt_apply_of_lt_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/exists-lt-apply-of-lt-opnnnorm--5e6aa13251422ce24a42a209.md) | 137 | `result-track:5e6aa13251422ce24a42a2092b1b7842cf190d4e6837551fe036969568fecca7` |
| 19 | `theorem` | [exists_lt_apply_of_lt_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/exists-lt-apply-of-lt-opnorm--2708b41069e845c37119c6c3.md) | 153 | `result-track:2708b41069e845c37119c6c33aeeaf77cd1796535693a8854ed93d1f28b75c07` |
| 20 | `theorem` | [sSup_unit_ball_eq_nnnorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/ssup-unit-ball-eq-nnnorm--c287011f869b0c0bac2159db.md) | 162 | `result-track:c287011f869b0c0bac2159dbef416f5770233bf00b0b2dcfdb8b65c8b25b8023` |
| 21 | `theorem` | [sSup_unit_ball_eq_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/ssup-unit-ball-eq-norm--4fb283b734e595aff45f79dc.md) | 173 | `result-track:4fb283b734e595aff45f79dc87f8581b5ff3c19e3e0335928d42067811d6c765` |
| 22 | `theorem` | [sSup_unitClosedBall_eq_nnnorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/ssup-unitclosedball-eq-nnnorm--7e625a82a639e7c1412f79aa.md) | 179 | `result-track:7e625a82a639e7c1412f79aa8ee7fa13562c9cf0a6b256464d4ac4f0722b075a` |
| 23 | `theorem` | [sSup_unitClosedBall_eq_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/ssup-unitclosedball-eq-norm--2e37fc84e0aec1185c113ad3.md) | 194 | `result-track:2e37fc84e0aec1185c113ad371e8e54b14458092db50dda0e1c4f09c0b532f09` |
| 24 | `theorem` | [lipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/declarations/lipschitz--260bf047453efb2d0bc39c6c.md) | 215 | `result-track:260bf047453efb2d0bc39c6c81c835d0a2aa8a95e9d55342b252aa23b119d855` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
