# Verification target: GRWTSK.Algebra.LinearAlgebra.Sequence.Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "caaf46b9204bc0f57b012c37a5d38ec26d13d3de",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `caaf46b9204bc0f57b012c37a5d38ec26d13d3de`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Monic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Sequence](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/declarations/sequence--0d53538067050e2dcadbe5c7.md) | 48 | `declaration-track:0d53538067050e2dcadbe5c713e49a92908b8586d3b9a56811f87d5534592a58` |
| 2 | `instance` | [coeFun](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/declarations/coefun--049c9d18fdd588610cd439ec.md) | 61 | `declaration-track:049c9d18fdd588610cd439ec4fa9ebcd97d769fdb85146dcb5ce165fd1ed197c` |
| 3 | `lemma` | [degree_eq](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/declarations/degree-eq--1194a68039efca1cc6ef7c25.md) | 69 | `result-track:1194a68039efca1cc6ef7c2554b8af42135a7a26549c1e100185c54aaadbe76c` |
| 4 | `lemma` | [natDegree_eq](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/declarations/natdegree-eq--323170112e9827d895204e31.md) | 73 | `result-track:323170112e9827d895204e31d3996a09eaf9c266d229cba65ec2a389037be51b` |
| 5 | `lemma` | [ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/declarations/ne-zero--410aa11830a544aeeb95b785.md) | 77 | `result-track:410aa11830a544aeeb95b7851fe528a928f4368bd968fcde84583cfc3b1576c3` |
| 6 | `lemma` | [degree_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/declarations/degree-strictmono--39c62a351c647ffb89d56d35.md) | 80 | `result-track:39c62a351c647ffb89d56d35bca73d3626d1802af5ce9eefcc35941e0dba2f0f` |
| 7 | `lemma` | [natDegree_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/declarations/natdegree-strictmono--3e9bf2e48807981eaa102bf7.md) | 83 | `result-track:3e9bf2e48807981eaa102bf7c1ffb79be089220ec323c43d5d2709e0e5d05725` |
| 8 | `lemma` | [span](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/declarations/span--3a1f8b204fa0c17d9392b2e8.md) | 92 | `result-track:3a1f8b204fa0c17d9392b2e8fdf9ee3c817db2ed88b98084229f57bfba5f1dd1` |
| 9 | `lemma` | [linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/declarations/linearindependent--efe7e5f222c7e6f46359e07e.md) | 163 | `result-track:efe7e5f222c7e6f46359e07e96f68f1234680eeff8e8861aea9db60a9a54d193` |
| 10 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/declarations/basis--c51b5f8ad5dc175185b5b0a4.md) | 183 | `declaration-track:c51b5f8ad5dc175185b5b0a48d8709b4448f5ad1718fe1b2b3a691bb999ab4cc` |
| 11 | `lemma` | [basis_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/declarations/basis-eq-self--65049fd4cc1fd46eaee267ae.md) | 188 | `result-track:65049fd4cc1fd46eaee267ae8538cf8848bb188813705a3aaac5a7080498cc78` |
| 12 | `lemma` | [basis_degree_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/declarations/basis-degree-strictmono--9618c3b0d7f6eb4a6a921ee8.md) | 191 | `result-track:9618c3b0d7f6eb4a6a921ee8fb851df24f17663584eb218c9ebe2d829058aea2` |
| 13 | `lemma` | [basis_natDegree_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variant6f183ab4537b9ecf505182c9f58ae45009c144327da9ed64e82a4e65f15acd5c.lean/declarations/basis-natdegree-strictmono--b4d9cafd5a883d575cf85485.md) | 194 | `result-track:b4d9cafd5a883d575cf85485b89eb824b9e54bc43e3e12248712e25cbbe073d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
