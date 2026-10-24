# Verification target: GRWTSK.Algebra.LinearAlgebra.IntegralClosure.Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dafcd035a18243fbde809cbb881a37dc98ce6b7f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dafcd035a18243fbde809cbb881a37dc98ce6b7f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean.json)

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
| 1 | `def` | [TensorProduct.toIntegralClosure](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/declarations/tensorproduct-tointegralclosure--3b791586243ca012c1b59cde.md) | 47 | `declaration-track:3b791586243ca012c1b59cde7dc418e4a84259da272fffe6af43c61f13099609` |
| 2 | `lemma` | [TensorProduct.toIntegralClosure_injective_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/declarations/tensorproduct-tointegralclosure-injective-of-flat--1a46532381099fb9d403a866.md) | 58 | `result-track:1a46532381099fb9d403a866fe41efc35979017d15d7f8ce7b2e3132a29f0aa9` |
| 3 | `lemma` | [TensorProduct.toIntegralClosure_bijective_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/declarations/tensorproduct-tointegralclosure-bijective-of-tower--e5a3f5db8f7bdb1fd20c457d.md) | 66 | `result-track:e5a3f5db8f7bdb1fd20c457d89108c0c30d44251e251e8236f0523bf6fe24412` |
| 4 | `lemma` | [TensorProduct.toIntegralClosure_bijective_of_isLocalizationAway](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/declarations/tensorproduct-tointegralclosure-bijective-of-islocalizationaway--86e10c335b3d2f5497951b14.md) | 81 | `result-track:86e10c335b3d2f5497951b14e4b278553614413c3af365ce4391a8d4279ba126` |
| 5 | `lemma` | [TensorProduct.toIntegralClosure_mvPolynomial_bijective](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/declarations/tensorproduct-tointegralclosure-mvpolynomial-bijective--b8f58417b816d6f868544905.md) | 134 | `result-track:b8f58417b816d6f86854490595b8e6ec111f71e95c38795efcf1ea098537a75b` |
| 6 | `lemma` | [TensorProduct.toIntegralClosure_bijective_of_isLocalization](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/declarations/tensorproduct-tointegralclosure-bijective-of-islocalization--bb3b0fa7fcfd5b7b8784f8f4.md) | 167 | `result-track:bb3b0fa7fcfd5b7b8784f8f47e749c3a3d195b95e502e1566607e467712a7d44` |
| 7 | `lemma` | [exists_derivative_mul_eq_and_isIntegral_coeff](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/declarations/exists-derivative-mul-eq-and-isintegral-coeff--9748330fe45056f8edba0a80.md) | 203 | `result-track:9748330fe45056f8edba0a80e102d76a9b06aa9280cc5c613cde2016aa7e5539` |
| 8 | `theorem` | [mem_adjoin_map_integralClosure_of_isStandardEtale](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/declarations/mem-adjoin-map-integralclosure-of-isstandardetale--6f2b3ececf51c0b5be304197.md) | 288 | `result-track:6f2b3ececf51c0b5be30419786b68e05ef3b7b430e5657f1bc47da8893e4ed05` |
| 9 | `theorem` | [TensorProduct.toIntegralClosure_bijective_of_isStandardEtale](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/declarations/tensorproduct-tointegralclosure-bijective-of-isstandardetale--008bbb7a1204bbdff20d536e.md) | 375 | `result-track:008bbb7a1204bbdff20d536e4ac0420181527ea541dffd49210a35a80ccf5ec8` |
| 10 | `theorem` | [TensorProduct.toIntegralClosure_bijective_of_smooth](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/declarations/tensorproduct-tointegralclosure-bijective-of-smooth--13ed63cc34a83cbbcc2b7d05.md) | 386 | `result-track:13ed63cc34a83cbbcc2b7d051ab45b18c9de9fe45fa8389fd7b8170f14325c58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
