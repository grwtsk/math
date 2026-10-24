# Verification target: GRWTSK.Algebra.ReesAlgebra.Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e46b5a6861b9f582e8f964cfa94db357adea7b54",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean/index.md) · [Full source](../../../../mathematics/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e46b5a6861b9f582e8f964cfa94db357adea7b54`.

Source path: `GRWTSK/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FiniteType` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reesAlgebra](../../../../mathematics/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean/declarations/reesalgebra--824ac24db5c2cb154d6f30de.md) | 46 | `declaration-track:824ac24db5c2cb154d6f30deb09b8feabe0c00a00cef1e96060c8a6c8662bc21` |
| 2 | `theorem` | [mem_reesAlgebra_iff](../../../../mathematics/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean/declarations/mem-reesalgebra-iff--fcc04c21f82654cc50d9ae43.md) | 72 | `result-track:fcc04c21f82654cc50d9ae43dc4b4cf832547433d1d89854385e9825a209a4ff` |
| 3 | `theorem` | [mem_reesAlgebra_iff_support](../../../../mathematics/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean/declarations/mem-reesalgebra-iff-support--43f65753fb8cebae42432fdc.md) | 76 | `result-track:43f65753fb8cebae42432fdc0d25624294ea4ff95a4ea29cb932c559de273ab7` |
| 4 | `theorem` | [reesAlgebra.monomial_mem](../../../../mathematics/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean/declarations/reesalgebra-monomial-mem--26a184dbd62838360e466ae7.md) | 84 | `result-track:26a184dbd62838360e466ae72dbef6d900415c60379e697dfcde321dca35a354` |
| 5 | `theorem` | [monomial_mem_adjoin_monomial](../../../../mathematics/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean/declarations/monomial-mem-adjoin-monomial--cd55b4881e19c6dc154fd85f.md) | 90 | `result-track:cd55b4881e19c6dc154fd85fe36babf3a9de32151fe63d35a07325d606011670` |
| 6 | `theorem` | [adjoin_monomial_eq_reesAlgebra](../../../../mathematics/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean/declarations/adjoin-monomial-eq-reesalgebra--ea23a6e22977670a8e453f7a.md) | 106 | `result-track:ea23a6e22977670a8e453f7acdc052a23dc828e2af86b88cd79002ab5902134b` |
| 7 | `theorem` | [reesAlgebra.fg](../../../../mathematics/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean/declarations/reesalgebra-fg--274c0656a6067c4d894ba880.md) | 121 | `result-track:274c0656a6067c4d894ba880428cf77498ffdf95542be1dc4c8df1340591f0d3` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean/declarations/instance--40a42eabac5cf04958fe68dc.md) | 134 | `declaration-track:40a42eabac5cf04958fe68dc1c83fdcb8f641f2aa6f8e1cb709b1d80378c149b` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean/declarations/instance--c6f69303cca05589001b6edc.md) | 137 | `declaration-track:c6f69303cca05589001b6edc571eb1f31fa5ced68bcf4b67b263fa6ef6db2d49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
