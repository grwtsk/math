# Verification target: GRWTSK.Algebra.LinearAlgebra.EngelSubalgebra.Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50f45ddb310abcd31fb37e437949eef1f23022a1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50f45ddb310abcd31fb37e437949eef1f23022a1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Engel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Normalizer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Subalgebra` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean/declarations/engel--21b5e6b88363af52bda0b338.md) | 48 | `declaration-track:21b5e6b88363af52bda0b3381e447aed0fc2ae1fc89051d6354cf9c3334a0ea9` |
| 2 | `lemma` | [mem_engel_iff](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean/declarations/mem-engel-iff--06cfcef7313a912b3bbba33b.md) | 62 | `result-track:06cfcef7313a912b3bbba33b8aca171c87cf65f1e790334d93ddb12523201971` |
| 3 | `lemma` | [self_mem_engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean/declarations/self-mem-engel--688e779f37bcbd1236f913aa.md) | 66 | `result-track:688e779f37bcbd1236f913aa9f0c4afda5983b9992dc2157d883de725e690b49` |
| 4 | `lemma` | [engel_zero](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean/declarations/engel-zero--5e824dd53b82dd13e122d22e.md) | 71 | `result-track:5e824dd53b82dd13e122d22ee512bd91c5aa954ec2c50d67a6ea98ff51dad6a6` |
| 5 | `lemma` | [normalizer_engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean/declarations/normalizer-engel--898f0fe118114d0248059e22.md) | 83 | `result-track:898f0fe118114d0248059e22744e960a43a741dfdfcf57e557c69163c91dc016` |
| 6 | `lemma` | [normalizer_eq_self_of_engel_le](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean/declarations/normalizer-eq-self-of-engel-le--ecd32989ab5701b0dc5ae0e9.md) | 102 | `result-track:ecd32989ab5701b0dc5ae0e987b319428fce6aca4c4ec6cacf8448a2aac89c2e` |
| 7 | `lemma` | [isNilpotent_of_forall_le_engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta3bc7e4fbf207f2b0ff66fdb097a218c16ed0051f379b2427f27d7862cd5c6b8.lean/declarations/isnilpotent-of-forall-le-engel--e981ab0651ff79bf4b792204.md) | 144 | `result-track:e981ab0651ff79bf4b79220479367bd065776f64b240abfa1ae69533a6d5da4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
