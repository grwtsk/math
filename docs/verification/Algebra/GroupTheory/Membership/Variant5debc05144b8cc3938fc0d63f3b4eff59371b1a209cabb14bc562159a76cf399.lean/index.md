# Verification target: GRWTSK.Algebra.GroupTheory.Membership.Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0191ff1f3097450c9924d3def3d40d4881ed12e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0191ff1f3097450c9924d3def3d40d4881ed12e`.

Source path: `GRWTSK/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subsemigroup.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_iSup_of_directed](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/declarations/mem-isup-of-directed--6311726b0b9e095c48b048f0.md) | 53 | `result-track:6311726b0b9e095c48b048f072257b1b7f6aa784cfbd33dc133a2857b39b242c` |
| 2 | `theorem` | [coe_iSup_of_directed](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/declarations/coe-isup-of-directed--5a62a12da54bad6d8aacabca.md) | 66 | `result-track:5a62a12da54bad6d8aacabcad6b9e0288658069e06970aeb3002c08de3f2a4b8` |
| 3 | `theorem` | [mem_sSup_of_directed_on](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/declarations/mem-ssup-of-directed-on--166b98c58f238398af7da57b.md) | 73 | `result-track:166b98c58f238398af7da57bda66e2ddf9ec7b282ebc7f61247c2df604fd6b91` |
| 4 | `theorem` | [coe_sSup_of_directed_on](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/declarations/coe-ssup-of-directed-on--a36af3782d4c6b144e7e5fbb.md) | 81 | `result-track:a36af3782d4c6b144e7e5fbb2f9b850a9697013d9c60ec2b93e7794427a3a0b6` |
| 5 | `theorem` | [mem_sup_left](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/declarations/mem-sup-left--affb1ee61917322a82cdafc3.md) | 88 | `result-track:affb1ee61917322a82cdafc38d5f78bbb571c19795e4acff0d9ffd257c4a6a02` |
| 6 | `theorem` | [mem_sup_right](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/declarations/mem-sup-right--d3512bc1cf089bb6a8cd0149.md) | 95 | `result-track:d3512bc1cf089bb6a8cd0149891927dbef43f95b8db7d9332fad9124cda7e156` |
| 7 | `theorem` | [mul_mem_sup](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/declarations/mul-mem-sup--0b10ded1bbf61d76ef2ac87b.md) | 102 | `result-track:0b10ded1bbf61d76ef2ac87b26cc1e2536d93ce30184fcb416233a49ac7cfcd4` |
| 8 | `theorem` | [mem_iSup_of_mem](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/declarations/mem-isup-of-mem--b48ac7ae9057d0901d15dd5d.md) | 108 | `result-track:b48ac7ae9057d0901d15dd5dc5632b7c5bbff2f0ebe2817af48d2fc2b7777620` |
| 9 | `theorem` | [mem_sSup_of_mem](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/declarations/mem-ssup-of-mem--bd8c0d58422b0614d7d49cac.md) | 115 | `result-track:bd8c0d58422b0614d7d49cac210c1c904c6b30940a8f194df7f06ce9fd2a7bab` |
| 10 | `theorem` | [iSup_induction](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/declarations/isup-induction--410e67b17c0dacab98514d23.md) | 129 | `result-track:410e67b17c0dacab98514d23b858f92f3c0447c1c382d24e1975f081efbd6331` |
| 11 | `theorem` | [iSup_induction'](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant5debc05144b8cc3938fc0d63f3b4eff59371b1a209cabb14bc562159a76cf399.lean/declarations/isup-induction--3ada2eb62617361d036ded42.md) | 141 | `result-track:3ada2eb62617361d036ded42cb3208eec6625d45533a58bd2fc389bf97c1cb0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
