# Verification target: GRWTSK.Algebra.FG.Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcdae6af34e2cdd08315bbbfab6cbfb81b50021c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/index.md) · [Full source](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcdae6af34e2cdd08315bbbfab6cbfb81b50021c`.

Source path: `GRWTSK/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fg_trans](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/fg-trans--96f0be44bd021122acad0bd5.md) | 44 | `result-track:96f0be44bd021122acad0bd5e6f1f2a7d72b07d960e1d2df7d17f809066ff10e` |
| 2 | `def` | [FG](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/fg--75a686dabbac4768273eec5d.md) | 95 | `declaration-track:75a686dabbac4768273eec5d89eaa4bc3e9fe4bfe63341e2becf7ff3d501e6c6` |
| 3 | `theorem` | [fg_adjoin_finset](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/fg-adjoin-finset--b425d2092b934d6a9962c49e.md) | 98 | `result-track:b425d2092b934d6a9962c49e89889187c4839b92852a0f6557919001b7c7867c` |
| 4 | `theorem` | [fg_def](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/fg-def--6aa014797d8f43ef87275522.md) | 101 | `result-track:6aa014797d8f43ef872755224abcdc32983788f5d33c73690fce559e91e2c5ba` |
| 5 | `theorem` | [fg_bot](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/fg-bot--fbb491243ada5385e8262387.md) | 104 | `result-track:fbb491243ada5385e8262387c8012d03d015f45ba81931e42d32f5938c4157ff` |
| 6 | `theorem` | [fg_of_fg_toSubmodule](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/fg-of-fg-tosubmodule--29d4e891474933e1f5880c56.md) | 107 | `result-track:29d4e891474933e1f5880c569bc8bd86183aaa4912384cf296246d44d7fa7c7c` |
| 7 | `theorem` | [fg_of_noetherian](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/fg-of-noetherian--b04c5262f18d10a447a650d0.md) | 116 | `result-track:b04c5262f18d10a447a650d0c1446e9e94ee8175ba10ac0341d8058674314a2f` |
| 8 | `theorem` | [fg_of_submodule_fg](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/fg-of-submodule-fg--a585b1c0fe77aa14cde44385.md) | 119 | `result-track:a585b1c0fe77aa14cde443857f2a5e4c549cd8b7c2871fa07eac097775035461` |
| 9 | `theorem` | [FG.prod](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/fg-prod--1d26fe2ac90641491ff01578.md) | 125 | `result-track:1d26fe2ac90641491ff015784642935ac0c0f6f07a5ebb1c69fbee27f2c01399` |
| 10 | `theorem` | [FG.map](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/fg-map--74999fa5c753c611501a1b93.md) | 137 | `result-track:74999fa5c753c611501a1b937081cc5c27de233f24d11ce44cbae1c995eb0db5` |
| 11 | `theorem` | [fg_of_fg_map](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/fg-of-fg-map--110ed10ea9be8429fa3c12c9.md) | 145 | `result-track:110ed10ea9be8429fa3c12c961222c4ee523e5ff130bae093bb1c49a8bf36e8f` |
| 12 | `theorem` | [fg_top](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/fg-top--566653d77b6d61a0976c81c0.md) | 154 | `result-track:566653d77b6d61a0976c81c0d1b62bee02f6d1ef37d60dc7a90214f1fa532377` |
| 13 | `theorem` | [induction_on_adjoin](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/induction-on-adjoin--d0949921853edc2543ad1f0d.md) | 162 | `result-track:d0949921853edc2543ad1f0d8b5c6ff324ab75722181e278492393b6a8f2e762` |
| 14 | `theorem` | [FG.sup](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/fg-sup--3cdda51776019528792170fc.md) | 173 | `result-track:3cdda51776019528792170fc885be296111bb83202647c8c54a3e3749dbe8337` |
| 15 | `instance` | [AlgHom.isNoetherianRing_range](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/alghom-isnoetherianring-range--8c12b240e3449ac711a26301.md) | 188 | `declaration-track:8c12b240e3449ac711a263013c536d31f699bfd3003794071375143814a08d04` |
| 16 | `theorem` | [isNoetherianRing_of_fg](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/isnoetherianring-of-fg--cfb7d2793491b35e9181ca22.md) | 199 | `result-track:cfb7d2793491b35e9181ca22cd573379cf6ca660ee6cdc03baaf7184aaf79a84` |
| 17 | `theorem` | [is_noetherian_subring_closure](../../../../mathematics/Algebra/FG/Variant3d30e088685f361f432d3ab143df30b40704426d41e7f64b4e66d6eac1c27ece.lean/declarations/is-noetherian-subring-closure--df0aa8258a9b3095e24106f4.md) | 204 | `result-track:df0aa8258a9b3095e24106f4fefe9ce0b66851a6937a0b9882814a609f3e85db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
