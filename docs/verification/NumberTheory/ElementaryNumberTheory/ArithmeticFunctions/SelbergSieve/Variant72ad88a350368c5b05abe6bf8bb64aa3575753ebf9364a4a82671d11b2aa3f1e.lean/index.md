# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SelbergSieve.Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdf08d2684dbe2489a9ec4e1962620dfd757db5c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdf08d2684dbe2489a9ec4e1962620dfd757db5c`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BoundingSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/boundingsieve--f2bf3335a304ce69ed54421f.md) | 67 | `declaration-track:f2bf3335a304ce69ed54421f998ca7f5aaf063bca432f2928eead16467f22177` |
| 2 | `class` | [SelbergSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/selbergsieve--c48da1770fbe6b0b26ce711f.md) | 91 | `declaration-track:c48da1770fbe6b0b26ce711f0a18bcc36644761deeca7a3e090bcc583afd679c` |
| 3 | `def` | [evalBoundingSieveWeights](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/evalboundingsieveweights--5abf8de5fa933abdd1c53e40.md) | 106 | `declaration-track:5abf8de5fa933abdd1c53e40e4840c3c764eeac7b54f3ebca2e52751617bc3e1` |
| 4 | `theorem` | [one_le_y](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/one-le-y--276bb5a6c699379977260ca4.md) | 133 | `result-track:276bb5a6c699379977260ca4eded05bee614ea310f1af10a36e566510c078e9c` |
| 5 | `theorem` | [prodPrimes_ne_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/prodprimes-ne-zero--cf08952449f5f0492e1cf2ff.md) | 143 | `result-track:cf08952449f5f0492e1cf2ffc50da1113226307a9a52cf647389b931ede06783` |
| 6 | `theorem` | [squarefree_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/squarefree-of-dvd-prodprimes--2a83a0e07a1a29d7b3915bf2.md) | 146 | `result-track:2a83a0e07a1a29d7b3915bf21744a40039b4207f82f279ba36f5a7007a24c073` |
| 7 | `theorem` | [squarefree_of_mem_divisors_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/squarefree-of-mem-divisors-prodprimes--5d1540d523475cc2eea13c4e.md) | 149 | `result-track:5d1540d523475cc2eea13c4e3a8ea92aa7d78288e54cdb10e4030f50d186409c` |
| 8 | `theorem` | [prod_primeFactors_nu](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/prod-primefactors-nu--d28ac4d3c3b1b8b1496b3e78.md) | 155 | `result-track:d28ac4d3c3b1b8b1496b3e78a01d35c583cf6384315e7f2df1b269fc986b50ee` |
| 9 | `theorem` | [nu_pos_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/nu-pos-of-dvd-prodprimes--6047a5b6c0ce15c64db3a389.md) | 159 | `result-track:6047a5b6c0ce15c64db3a389fbccdb9d2b6f63fb9f8c5944f4d95f4686f5083a` |
| 10 | `theorem` | [nu_ne_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/nu-ne-zero--c8cf9d7316f7d4e13660b604.md) | 169 | `result-track:c8cf9d7316f7d4e13660b604f5c775e1746ea000235047350667887e5da58aea` |
| 11 | `theorem` | [nu_lt_one_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/nu-lt-one-of-dvd-prodprimes--6239c13144b5144dc45060ab.md) | 173 | `result-track:6239c13144b5144dc45060ab8fba2006df86cb03374bcceccea3c279f0a2936f` |
| 12 | `def` | [multSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/multsum--7f5a1d1c1959a85875f3a536.md) | 191 | `declaration-track:7f5a1d1c1959a85875f3a53615ddcc0400bb5efc3b98122627251b131fde1fca` |
| 13 | `def` | [rem](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/rem--2f3244017e2af015417f5e6e.md) | 199 | `declaration-track:2f3244017e2af015417f5e6e036019062223cf2de552fba385b04f3160a0465d` |
| 14 | `def` | [siftedSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/siftedsum--224827c4dba729a5beb40a45.md) | 205 | `declaration-track:224827c4dba729a5beb40a4531235f5586424b8c5c0dc4b39b09928898e89daa` |
| 15 | `def` | [mainSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/mainsum--ef2b1ba3fc764a23eb06cc53.md) | 208 | `declaration-track:ef2b1ba3fc764a23eb06cc534f6293c4773f93ce66cbda12b92730f9c8e6a2cf` |
| 16 | `def` | [errSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/errsum--17d60f344b976c4b515120a2.md) | 211 | `declaration-track:17d60f344b976c4b515120a2803b344fb2da0e6d52ec1177d8fed382f36dd159` |
| 17 | `theorem` | [multSum_eq_main_err](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/multsum-eq-main-err--89add41063c77f395a1da90b.md) | 213 | `result-track:89add41063c77f395a1da90bea665936080087770f40c8c5ba77f24b0c947996` |
| 18 | `theorem` | [siftedsum_eq_sum_support_mul_ite](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/siftedsum-eq-sum-support-mul-ite--72211aa6abace85d14c9b492.md) | 217 | `result-track:72211aa6abace85d14c9b49216f088f3df073fd3ffee8e67d03a71421a3cef12` |
| 19 | `def` | [IsUpperMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/isuppermoebius--650f55c9b22d8cef0443902a.md) | 225 | `declaration-track:650f55c9b22d8cef0443902a8b04bbfbbf57483c016d963325887e9261fa93e5` |
| 20 | `theorem` | [siftedSum_le_sum_of_upperMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/siftedsum-le-sum-of-uppermoebius--e7eae6d4fc01df74d0065cb4.md) | 228 | `result-track:e7eae6d4fc01df74d0065cb4c22b9bb441c7debea3cbc0f83d690c9bf1038593` |
| 21 | `theorem` | [siftedSum_le_mainSum_errSum_of_upperMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant72ad88a350368c5b05abe6bf8bb64aa3575753ebf9364a4a82671d11b2aa3f1e.lean/declarations/siftedsum-le-mainsum-errsum-of-uppermoebius--e142f436a064a9766998c3aa.md) | 249 | `result-track:e142f436a064a9766998c3aada9e8a70fe6ecd4c0c6fb2a8c62caf2947a43840` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
