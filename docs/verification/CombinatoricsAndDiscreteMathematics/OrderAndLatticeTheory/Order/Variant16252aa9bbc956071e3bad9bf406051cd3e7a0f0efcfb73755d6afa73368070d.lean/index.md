# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2445cd890633ca453f62f23684bd19ce3f36ce5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2445cd890633ca453f62f23684bd19ce3f36ce5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sym.Sym2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean/declarations/sup--eeae2aec80e1f3ddec52f85d.md) | 21 | `declaration-track:eeae2aec80e1f3ddec52f85dd67afe7d16e6cba18207c14fd1925ca88fb6387b` |
| 2 | `theorem` | [sup_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean/declarations/sup-mk--b83645486619521184b4b964.md) | 23 | `result-track:b83645486619521184b4b96423c0d31127fde934f06c1f3a3ba7cbbe7f010b16` |
| 3 | `def` | [inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean/declarations/inf--017a5957342fd31504c2735c.md) | 26 | `declaration-track:017a5957342fd31504c2735cca7b4c7270d47d05b6940e2b563ec09000d9d08a` |
| 4 | `theorem` | [inf_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean/declarations/inf-mk--0f27ca20a82932cedba970c0.md) | 28 | `result-track:0f27ca20a82932cedba970c00ae7962a4337873d205027c10d03d1aedf988193` |
| 5 | `theorem` | [inf_le_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean/declarations/inf-le-sup--e6b2b295b161057490d6f1f7.md) | 30 | `result-track:e6b2b295b161057490d6f1f79367193b4d452d2ebe962452010da21dd20bcdde` |
| 6 | `def` | [sortEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean/declarations/sortequiv--ec04e414363d3cb2ddc22835.md) | 35 | `declaration-track:ec04e414363d3cb2ddc22835eb97d6e44f34b12c67cd195cf76532ee1fffd8cc` |
| 7 | `theorem` | [inf_eq_inf_and_sup_eq_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean/declarations/inf-eq-inf-and-sup-eq-sup--39801e9331d8b31068f49ff3.md) | 47 | `result-track:39801e9331d8b31068f49ff3d376f9bd488361f12ea62ec63999ae87d42080d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
