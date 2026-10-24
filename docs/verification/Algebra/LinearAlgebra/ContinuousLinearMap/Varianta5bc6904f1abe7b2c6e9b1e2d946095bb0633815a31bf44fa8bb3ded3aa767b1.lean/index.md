# Verification target: GRWTSK.Algebra.LinearAlgebra.ContinuousLinearMap.Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82416d2e646d83a4509dcd38da4884e070746c90",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82416d2e646d83a4509dcd38da4884e070746c90`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean.json)

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
| 1 | `def` | [LinearMap.mkContinuous](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/linearmap-mkcontinuous--fe8dffb78e39692b911ae1de.md) | 55 | `declaration-track:fe8dffb78e39692b911ae1de1529c12fc5c27b692dccae637f5a46a80a6c55ae` |
| 2 | `def` | [LinearMap.mkContinuousOfExistsBound](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/linearmap-mkcontinuousofexistsbound--37bdb6c5683363aa3c738fa9.md) | 61 | `declaration-track:37bdb6c5683363aa3c738fa92e575348d5c5a8555a635b77af8413e1a69db58e` |
| 3 | `theorem` | [continuous_of_linear_of_boundₛₗ](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/continuous-of-linear-of-bound--2548f8cdfc6c1a61a3702a3e.md) | 66 | `result-track:2548f8cdfc6c1a61a3702a3ec36189c547b0ff77c43a29dae886392859aaf0f5` |
| 4 | `theorem` | [continuous_of_linear_of_bound](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/continuous-of-linear-of-bound--57cae25de0a32028c65a540b.md) | 75 | `result-track:57cae25de0a32028c65a540b86904ae793f63af0d1d4a8eaf1feb4e61cd6d940` |
| 5 | `theorem` | [LinearMap.mkContinuous_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/linearmap-mkcontinuous-coe--2fb2084fe01349e587a87497.md) | 81 | `result-track:2fb2084fe01349e587a874978a8202a0c470858345af0c51d9e995978916fcdc` |
| 6 | `theorem` | [LinearMap.mkContinuous_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/linearmap-mkcontinuous-apply--a17f59c5d584778c52541ab4.md) | 86 | `result-track:a17f59c5d584778c52541ab45c0060c69a8b87292c0737dcb5f27c1a1787204d` |
| 7 | `theorem` | [LinearMap.mkContinuousOfExistsBound_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/linearmap-mkcontinuousofexistsbound-coe--b2770e9f22cfdd78af7c626f.md) | 91 | `result-track:b2770e9f22cfdd78af7c626fc55636d392d2b6043eae57ecf2d8dc4f8d23f8af` |
| 8 | `theorem` | [LinearMap.mkContinuousOfExistsBound_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/linearmap-mkcontinuousofexistsbound-apply--76c5549646f6d2f166354ba7.md) | 96 | `result-track:76c5549646f6d2f166354ba73b5412d05b257b6fc1225190c718145406f67ac9` |
| 9 | `theorem` | [antilipschitz_of_bound](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/antilipschitz-of-bound--f4c5e922ab19c54b67f77935.md) | 102 | `result-track:f4c5e922ab19c54b67f7793532f33c96f829bd7b3ded33fcd202ff4f10364f60` |
| 10 | `theorem` | [bound_of_antilipschitz](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/bound-of-antilipschitz--74561e3b4a83a99c661fb529.md) | 106 | `result-track:74561e3b4a83a99c661fb529282de39e5c6302d72254ade3bcbd8c294b314497` |
| 11 | `def` | [LinearEquiv.toContinuousLinearEquivOfBounds](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/linearequiv-tocontinuouslinearequivofbounds--3898f58e9b9fa46d41631b7b.md) | 118 | `declaration-track:3898f58e9b9fa46d41631b7b95715ee38978ba18970f1a53bff6b4cbe9a430f1` |
| 12 | `def` | [LinearMap.toContinuousLinearMap₁](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/linearmap-tocontinuouslinearmap--50afcd71cb4cf1f775ad224e.md) | 135 | `declaration-track:50afcd71cb4cf1f775ad224edcfbd26bb64213a7280062b319e452330d3ee582` |
| 13 | `theorem` | [LinearMap.toContinuousLinearMap₁_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/linearmap-tocontinuouslinearmap-coe--dc967370082baf15830695aa.md) | 141 | `result-track:dc967370082baf15830695aa0fadf33804d4814944f5e286b0a29ea552c62d1d` |
| 14 | `theorem` | [LinearMap.toContinuousLinearMap₁_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/linearmap-tocontinuouslinearmap-apply--c4327c0e5b0484d23f3b83bb.md) | 146 | `result-track:c4327c0e5b0484d23f3b83bb24673ffec5535f7f34386a4a0ec1a8e56a69857c` |
| 15 | `theorem` | [ContinuousLinearMap.isUniformEmbedding_of_bound](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/continuouslinearmap-isuniformembedding-of-bound--45d1ca48489b1bc981c66493.md) | 157 | `result-track:45d1ca48489b1bc981c6649352242bde03a82bb16e56f3278624a1f065d7df13` |
| 16 | `def` | [ContinuousLinearMap.ofHomothety](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/continuouslinearmap-ofhomothety--720ec6fddb191fcfe441d295.md) | 176 | `declaration-track:720ec6fddb191fcfe441d29556dad504f682a38a0d6910b20a854a73093094e9` |
| 17 | `theorem` | [ContinuousLinearEquiv.homothety_inverse](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/continuouslinearequiv-homothety-inverse--69dc7efb7daca90af5319232.md) | 182 | `result-track:69dc7efb7daca90af5319232d0e035e4908d7531b0d555176b276058bf6e681c` |
| 18 | `def` | [ContinuousLinearEquiv.ofHomothety](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Varianta5bc6904f1abe7b2c6e9b1e2d946095bb0633815a31bf44fa8bb3ded3aa767b1.lean/declarations/continuouslinearequiv-ofhomothety--03a2d54b27664a7ba92cd8e8.md) | 188 | `declaration-track:03a2d54b27664a7ba92cd8e8aa8bb389c3f5e4ea7e36e84fcdc3000ba35f44b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
