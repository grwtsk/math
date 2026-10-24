# Verification target: GRWTSK.Algebra.LinearAlgebra.StdBasis.Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9a4c320c4b1ed34111084a7ddc0ca0632961766",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9a4c320c4b1ed34111084a7ddc0ca0632961766`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [linearIndependent_single](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/linearindependent-single--5efe5e097d2197513121d928.md) | 47 | `result-track:5efe5e097d2197513121d928d990864dc9b07ea853e2e1ac8e589e85cb1bf37e` |
| 2 | `theorem` | [linearIndependent_single_one](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/linearindependent-single-one--c89db2c8afea5f55f166a8df.md) | 52 | `result-track:c89db2c8afea5f55f166a8dfe31ab76577ea362bb09f7c2230dbb4aeeeb73c51` |
| 3 | `lemma` | [linearIndependent_single_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/linearindependent-single-of-ne-zero--c123617d22c629c1081b464e.md) | 58 | `result-track:c123617d22c629c1081b464ef8bd77e431b46b478c26f3c37b7ac76670d1a8f7` |
| 4 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/basis--3f272e1496e0aa4a1fd97427.md) | 77 | `declaration-track:3f272e1496e0aa4a1fd97427ef26986d12279e99732bc89022f4349ce825cc2f` |
| 5 | `theorem` | [basis_repr_single](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/basis-repr-single--3e00ffbbb78e8bb63c1d91fd.md) | 85 | `result-track:3e00ffbbb78e8bb63c1d91fd878f1092a29c0287881eacda900b1b6137ba9de0` |
| 6 | `theorem` | [basis_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/basis-apply--8fc698829704dfdbdd785e03.md) | 105 | `result-track:8fc698829704dfdbdd785e032ea5dbc16c7f49a77cfd3c3ce10b7363e2a519da` |
| 7 | `theorem` | [basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/basis-repr--de8238549faad5a423ac5357.md) | 110 | `result-track:de8238549faad5a423ac53571c13617a81d1e79765bd235822e5c2db9367150b` |
| 8 | `def` | [basisFun](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/basisfun--811dbdd78eed665a0297ec13.md) | 122 | `declaration-track:811dbdd78eed665a0297ec1328346f04eb3dffa5d26a19903345a425d263734a` |
| 9 | `theorem` | [basisFun_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/basisfun-apply--a4df87d6c3c5a047d61f5d68.md) | 126 | `result-track:a4df87d6c3c5a047d61f5d684c4a6ceae8e734b7957c7b645c0c103fcfcb4630` |
| 10 | `theorem` | [basisFun_repr](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/basisfun-repr--b55fa856e0893a17d9ad0c13.md) | 131 | `result-track:b55fa856e0893a17d9ad0c13f5fc63d2e2741d9b55a4db59990bdc369278a9d2` |
| 11 | `theorem` | [basisFun_equivFun](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/basisfun-equivfun--8ff6b9be2e821618fa42514a.md) | 134 | `result-track:8ff6b9be2e821618fa42514a5ce3047d225e88f7fac9d5b358432d62518981c9` |
| 12 | `def` | [spanSubset](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/spansubset--8501a6c18db677bcac792617.md) | 142 | `declaration-track:8501a6c18db677bcac79261747f8e15591f36c5b90a0f7c255672b1cf90276eb` |
| 13 | `lemma` | [mem_spanSubset_iff](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/mem-spansubset-iff--5dfd051cb00aac45addccd14.md) | 147 | `result-track:5dfd051cb00aac45addccd145dd5b7170fffea65280b5c5fbe49d3be0fc87e52` |
| 14 | `lemma` | [AlgHom.eq_piEvalAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/alghom-eq-pievalalghom--212ee3a3cca9590a397b0150.md) | 159 | `result-track:212ee3a3cca9590a397b01506af3e3be05b77b9915f9eb8112be0f882440d095` |
| 15 | `def` | [piEquiv](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/piequiv--8fe87d10f07ee187d1f1f4b4.md) | 186 | `declaration-track:8fe87d10f07ee187d1f1f4b4a15df30930e29dc6cc80121616f3518469853134` |
| 16 | `lemma` | [piEquiv_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/piequiv-apply-apply--e7772a9f75322408988e5657.md) | 188 | `result-track:e7772a9f75322408988e565704290cdba34679089f2aecdbbbcd0a26985978d8` |
| 17 | `lemma` | [range_piEquiv](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/range-piequiv--d37fbe7e3e5633ea9c66b086.md) | 194 | `result-track:d37fbe7e3e5633ea9c66b086818ded7404ac8a17a4d3ff14630f7eaefdbc40f1` |
| 18 | `lemma` | [surjective_piEquiv_apply_iff](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/surjective-piequiv-apply-iff--c0edf330bfe8f77a8384df90.md) | 198 | `result-track:c0edf330bfe8f77a8384df902c290377ffa11dc5b8b140847b69df4d6651a9f5` |
| 19 | `instance` | [_root_.Module.Free.pi](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/root-module-free-pi--fcdf8ef50c61f60c1097ea37.md) | 209 | `declaration-track:fcdf8ef50c61f60c1097ea373419976d645c38b49158e636e3e02131bbfcb8ad` |
| 20 | `instance` | [_root_.Module.Free.function](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/declarations/root-module-free-function--782c20501311f326a67fe494.md) | 217 | `declaration-track:782c20501311f326a67fe4947a6946d9946ef7daf477dca04de3e74fe593d39b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
