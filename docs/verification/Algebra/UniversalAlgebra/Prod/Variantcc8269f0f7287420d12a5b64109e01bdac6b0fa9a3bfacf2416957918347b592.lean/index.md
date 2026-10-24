# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prod.Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acb85c4853ac8802c7ddafaf9eacf1bedc9f362b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acb85c4853ac8802c7ddafaf9eacf1bedc9f362b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean/declarations/instance--6ba541b74eeb8152ad3877f2.md) | 33 | `declaration-track:6ba541b74eeb8152ad3877f22669b544dd3a1be2cc89e0d062dfa4c9dee2b853` |
| 2 | `theorem` | [fst_star](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean/declarations/fst-star--3324967bfd8d5f68b52e8fc1.md) | 36 | `result-track:3324967bfd8d5f68b52e8fc1a4bc8ddc9b884987f2c19de6ee843618d772abb5` |
| 3 | `theorem` | [snd_star](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean/declarations/snd-star--7603e5120cc43e960c7d7a4b.md) | 41 | `result-track:7603e5120cc43e960c7d7a4b8c63024c1ace2479f731c4eea2c6e02eef244e02` |
| 4 | `theorem` | [star_def](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean/declarations/star-def--243ae861c054fe00657b4a18.md) | 45 | `result-track:243ae861c054fe00657b4a180918f62a8de4d8c9c4974ae4b64df0b9b81a9414` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean/declarations/instance--295198eb5d551093d2040e16.md) | 49 | `declaration-track:295198eb5d551093d2040e16e553201ebc1d3f8f5bd2823824d417e208c4b098` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean/declarations/instance--f46c3969dbd9d40abaae3ebb.md) | 52 | `declaration-track:f46c3969dbd9d40abaae3ebb6c939c759f4fc4fda8f2e786a2daf822df8d5392` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean/declarations/instance--049efdb14a6659b64da91d30.md) | 55 | `declaration-track:049efdb14a6659b64da91d30fe91d4c51616ab590ebe7ee73f3f2a53ceebcfbe` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean/declarations/instance--d7b24d88f806d29319c0dc05.md) | 58 | `declaration-track:d7b24d88f806d29319c0dc051b546fc5f3478fe064f7a3e301a8bed0cb20a470` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean/declarations/instance--b0fe915fdbff4439783fe734.md) | 61 | `declaration-track:b0fe915fdbff4439783fe734eb7aa2d4b48bad25b0a26ef05a27d704bb739259` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean/declarations/instance--7aa213d88baba9c081992daa.md) | 66 | `declaration-track:7aa213d88baba9c081992daa2f20403f49a83c720c854c530e42fcc7ce01d6ae` |
| 11 | `theorem` | [Units.embed_product_star](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantcc8269f0f7287420d12a5b64109e01bdac6b0fa9a3bfacf2416957918347b592.lean/declarations/units-embed-product-star--b82666b28751e766d33f04de.md) | 73 | `result-track:b82666b28751e766d33f04de02c07912926f4dfeb6594c141a9e69531f3a8d61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
