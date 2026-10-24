# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LocallyUniformLimit.Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55bb0e2b6e0c499e8bfbcaa8c1681c39b69f6f8a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55bb0e2b6e0c499e8bfbcaa8c1681c39b69f6f8a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Series` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/macro-rules--b9457bba9581be4e9c592fb7.md) | 30 | `declaration-track:b9457bba9581be4e9c592fb79cfd4f5e8cdfd56f594dfbe3032041f17731315a` |
| 2 | `def` | [cderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/cderiv--4fecd47657baaaec7eb9ae41.md) | 42 | `declaration-track:4fecd47657baaaec7eb9ae411b868aa0edacb796464b25256d192d4fb02a869a` |
| 3 | `theorem` | [cderiv_eq_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/cderiv-eq-deriv--345bdff93aa713ef8848152a.md) | 46 | `result-track:345bdff93aa713ef8848152a67ee46ae1c89c9d02ddcf929e7affecb9f38b725` |
| 4 | `theorem` | [norm_cderiv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/norm-cderiv-le--510887e9ae0f05510fa93ab1.md) | 51 | `result-track:510887e9ae0f05510fa93ab15a73d499e3e3d3ca417d32bf0822d7fed4abe7d2` |
| 5 | `theorem` | [cderiv_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/cderiv-sub--6cb75c699eacab50f1f36a50.md) | 68 | `result-track:6cb75c699eacab50f1f36a50209e151bc7c2a01d795903c83f3d7048665d41b9` |
| 6 | `theorem` | [norm_cderiv_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/norm-cderiv-lt--7622637d127f7edbfa19749e.md) | 80 | `result-track:7622637d127f7edbfa19749e6bc929944d27a288b14a64a616d7c8276f17f5a1` |
| 7 | `theorem` | [norm_cderiv_sub_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/norm-cderiv-sub-lt--8534d4a37d56cc40bfa8cff5.md) | 90 | `result-track:8534d4a37d56cc40bfa8cff596c180543027334a4ca7c82c17b1a9b9284b5405` |
| 8 | `theorem` | [_root_.TendstoUniformlyOn.cderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/root-tendstouniformlyon-cderiv--8a8578b800fb4a7e8d085936.md) | 96 | `result-track:8a8578b800fb4a7e8d085936b69a00d44f1ed0a9a0276be01977bb725281abca` |
| 9 | `theorem` | [tendstoUniformlyOn_deriv_of_cthickening_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/tendstouniformlyon-deriv-of-cthickening-subset--48ede5c92c56ea7b3aa8ad21.md) | 118 | `result-track:48ede5c92c56ea7b3aa8ad2149c96e31513cd517542f30fdf776e9e03ae2dc57` |
| 10 | `theorem` | [exists_cthickening_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/exists-cthickening-tendstouniformlyon--ea213e37bd024462d07e5847.md) | 133 | `result-track:ea213e37bd024462d07e584765fd8e6f913eba4a529b794e9948d15d41d0e2d8` |
| 11 | `theorem` | [_root_.TendstoLocallyUniformlyOn.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/root-tendstolocallyuniformlyon-differentiableon--643b246e097ab586c800d987.md) | 143 | `result-track:643b246e097ab586c800d98797edac91cf9840227ed35cd176d003a2cdb5e484` |
| 12 | `theorem` | [_root_.TendstoLocallyUniformlyOn.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/root-tendstolocallyuniformlyon-deriv--a90dfb922951fc36eeca41c9.md) | 162 | `result-track:a90dfb922951fc36eeca41c9a343b5dc62ef55cc44edc5aa304715773d95802d` |
| 13 | `theorem` | [differentiableOn_tsum_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/differentiableon-tsum-of-summable-norm--411de213d3947684f3803675.md) | 180 | `result-track:411de213d3947684f3803675ef80d2e14a0a7d9a67271c260f8403102cb1a970` |
| 14 | `theorem` | [hasSum_deriv_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.lean/declarations/hassum-deriv-of-summable-norm--ce72e2be5cff9805b68c6785.md) | 193 | `result-track:ce72e2be5cff9805b68c678543aa578dba117ba8c02196361eb729336e4595aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
