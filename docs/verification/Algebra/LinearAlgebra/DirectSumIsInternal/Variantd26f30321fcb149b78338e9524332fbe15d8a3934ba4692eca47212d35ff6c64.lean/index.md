# Verification target: GRWTSK.Algebra.LinearAlgebra.DirectSumIsInternal.Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "baaea27820ea62b182d66a2fb3599f0ffcf451c7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `baaea27820ea62b182d66a2fb3599f0ffcf451c7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.ConjFinite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [UnitsInt.one_ne_neg_one](../../../../../mathematics/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean/declarations/unitsint-one-ne-neg-one--073aaccf0dfe809873de047d.md) | 33 | `result-track:073aaccf0dfe809873de047d1ecb50ecb78d59dc0e84126fc9c99775df920aaf` |
| 2 | `def` | [withSign](../../../../../mathematics/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean/declarations/withsign--a0d5d70ac9bcd2d1a858b3d3.md) | 36 | `declaration-track:a0d5d70ac9bcd2d1a858b3d32773a35b93e61f72bff3e65b4d790cce68394064` |
| 3 | `theorem` | [mem_withSign_one](../../../../../mathematics/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean/declarations/mem-withsign-one--5b969fd2c0abc7dfb5be9bc2.md) | 50 | `result-track:5b969fd2c0abc7dfb5be9bc217016264c4c194f2c7d85ea07244be9832f0c39f` |
| 4 | `theorem` | [mem_withSign_neg_one](../../../../../mathematics/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean/declarations/mem-withsign-neg-one--c353f2fcb3416e6365898a78.md) | 53 | `result-track:c353f2fcb3416e6365898a78a4a08264e2bb161e009a6dbec93ffe6805f7ba43` |
| 5 | `theorem` | [withSign.isCompl](../../../../../mathematics/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean/declarations/withsign-iscompl--e9959d7d95c5b3eabf951f58.md) | 57 | `result-track:e9959d7d95c5b3eabf951f585eb4e036f014da6f2bbb4f08d00412448446bad3` |
| 6 | `def` | [withSign.independent](../../../../../mathematics/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean/declarations/withsign-independent--de588316c02b63dcfe84624f.md) | 68 | `declaration-track:de588316c02b63dcfe84624f55bffb8bb9885c8474b789875e5e2c6e6847e446` |
| 7 | `theorem` | [withSign.iSup](../../../../../mathematics/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean/declarations/withsign-isup--59fa83cb6372c9528987470e.md) | 74 | `result-track:59fa83cb6372c9528987470e075c37475209ca2b46583c6c11eb4eaa106fd16e` |
| 8 | `theorem` | [withSign.not_injective](../../../../../mathematics/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean/declarations/withsign-not-injective--491edda3c3aad7125b9506c8.md) | 79 | `result-track:491edda3c3aad7125b9506c8ba26786f80ae517a70c16feaa01d346e2a6d8151` |
| 9 | `theorem` | [withSign.not_internal](../../../../../mathematics/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean/declarations/withsign-not-internal--1b802bee34696cb4310a2763.md) | 99 | `result-track:1b802bee34696cb4310a2763705af2f5310cbbb968a40125e9fcf27da313a7c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
