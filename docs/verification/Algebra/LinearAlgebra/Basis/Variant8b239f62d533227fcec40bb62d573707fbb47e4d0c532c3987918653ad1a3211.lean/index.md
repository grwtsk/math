# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "948212500b169353f8cb0d106dccf00be8def421",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `948212500b169353f8cb0d106dccf00be8def421`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean.json)

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
| 1 | `def` | [equivMvPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean/declarations/equivmvpolynomial--720b092e397fd72d8ad0e678.md) | 48 | `declaration-track:720b092e397fd72d8ad0e6781051cd50d5c836b4999f18ca3f53aec50c78691f` |
| 2 | `lemma` | [equivMvPolynomial_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean/declarations/equivmvpolynomial-apply--18f9fe698095fdb5f4f99458.md) | 57 | `result-track:18f9fe698095fdb5f4f9945892e3dd85c9d1c9fa467edae9b8d8032190d49520` |
| 3 | `lemma` | [equivMvPolynomial_symm_X](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean/declarations/equivmvpolynomial-symm-x--384ab39af00165af4e6154ce.md) | 62 | `result-track:384ab39af00165af4e6154cea0a3f425d7466dc393a5e95ff823a3eed666499e` |
| 4 | `theorem` | [IsSymmetricAlgebra.mvPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean/declarations/issymmetricalgebra-mvpolynomial--5fbd3ff2871d50abbc6dfff0.md) | 66 | `result-track:5fbd3ff2871d50abbc6dfff0ca3893e27e8541d8c1cbaaba997d94460f93710c` |
| 5 | `def` | [_root_.Module.Basis.symmetricAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean/declarations/root-module-basis-symmetricalgebra--c30f51769d0ba91babcac5bd.md) | 72 | `declaration-track:c30f51769d0ba91babcac5bd6bf7b9a6421b078345cf420045a2dbb04ea64222` |
| 6 | `instance` | [instModuleFree](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean/declarations/instmodulefree--de010913a6d2128e041b437b.md) | 77 | `declaration-track:de010913a6d2128e041b437bac3680ae03a847557a26f14d4689f0e1c12c122c` |
| 7 | `instance` | [instNoZeroDivisors](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean/declarations/instnozerodivisors--160a3148a0ac9d094574504e.md) | 83 | `declaration-track:160a3148a0ac9d094574504e888ac0850c04fb97e80d8e6afad77d2e4c18aa91` |
| 8 | `instance` | [instIsDomain](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean/declarations/instisdomain--f08236538e3457094e208af7.md) | 94 | `declaration-track:f08236538e3457094e208af703ffaa7cd5c4bb0f051153845e99d41e6930792f` |
| 9 | `lemma` | [rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean/declarations/rank-eq--f195431fb9c053d27eb3c7b1.md) | 100 | `result-track:f195431fb9c053d27eb3c7b12b29a953ebf49845f71f64e1a1dc88a4e2f752a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
