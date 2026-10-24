# Verification target: GRWTSK.Algebra.LinearAlgebra.SchurZeroDraft.Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e997df2712ca975312660201fcdbf5871dfd1dc",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e997df2712ca975312660201fcdbf5871dfd1dc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FeshbachHermitian` — import line 1; external provider; requires a separately pinned dependency.
- `ZeroMultiplicity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shear](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/shear--2f68f18c0f82964b75a405a2.md) | 12 | `declaration-track:2f68f18c0f82964b75a405a26945568eeab6daeb3ff69813707f818c92ebce9a` |
| 2 | `theorem` | [shear_det](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/shear-det--a6101d39aadd43c91678143e.md) | 15 | `result-track:a6101d39aadd43c91678143e864744ac65a72469af7ae96f7dcdc9d799fc2be8` |
| 3 | `theorem` | [exact_congruence](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/exact-congruence--d29bec30b045880a06ebf73c.md) | 19 | `result-track:d29bec30b045880a06ebf73c78ddefaba1d98a0e632bd0bf31ba96ea93aa3fe5` |
| 4 | `theorem` | [full_isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/full-ishermitian--b795f72642ea0d1132ecb85b.md) | 30 | `result-track:b795f72642ea0d1132ecb85b5b904b769cf02d5d17b5d6f4fe7f4927c08741a7` |
| 5 | `theorem` | [reduced_isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/reduced-ishermitian--c25b043cded229859d60b7eb.md) | 35 | `result-track:c25b043cded229859d60b7eb72961786c2642c695c42e0f491e02e8e1890bf63` |
| 6 | `theorem` | [zero_count_schur](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/zero-count-schur--b78ccd7e251c84243ae80487.md) | 41 | `result-track:b78ccd7e251c84243ae804876f2ba5e3f990d0341c6031ccd1e72e9825a4ef3b` |
| 7 | `theorem` | [zero_count_schur_posDef](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/zero-count-schur-posdef--89a79ea4634bb7261a676bc7.md) | 51 | `result-track:89a79ea4634bb7261a676bc7ebdd6c8f89e238fbd5c747c125060a4ceb943b9e` |
| 8 | `theorem` | [zero_count_eq_finrank_kernel](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/zero-count-eq-finrank-kernel--f342de1a1ef506303d6b13b9.md) | 57 | `result-track:f342de1a1ef506303d6b13b9be3a9524175a18a28817de8faa7dce49815dbd03` |
| 9 | `def` | [fullKernelCoordinates](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/fullkernelcoordinates--6ceae8b501e7ec03bad85723.md) | 68 | `declaration-track:6ceae8b501e7ec03bad8572333c5584e24eb7c498d62d87737b23f24f73af86e` |
| 10 | `theorem` | [zero_count_schur_center](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/zero-count-schur-center--b56cb647b593d6be5357d7d0.md) | 94 | `result-track:b56cb647b593d6be5357d7d093ae36c89ef17a8d1ede74d98b14f5d41e979fe5` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/instance--ff0b0684184426dd81534502.md) | 106 | `declaration-track:ff0b0684184426dd81534502f308bfcbbef5d0f4352991fb2f38754b178163d3` |
| 12 | `def` | [imaginaryCoupling](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/imaginarycoupling--5c3cba1ed6e4c9f01f40e98e.md) | 109 | `declaration-track:5c3cba1ed6e4c9f01f40e98e055de5005d444de159ea0a6ca68ca2c5b4f316ca` |
| 13 | `theorem` | [imaginary_schur_zero](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/imaginary-schur-zero--d1e9e87b98d6f5af79794efe.md) | 111 | `result-track:d1e9e87b98d6f5af79794efe9bc5d14b912ac57e06b5b1eeb9c644abdbe9fc3a` |
| 14 | `theorem` | [imaginary_reduced_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/imaginary-reduced-diagonal--92d5eb1bddeb1170965225ce.md) | 118 | `result-track:92d5eb1bddeb1170965225ce1f6dbdb325ef461c6e18875164be398f3d101c7d` |
| 15 | `theorem` | [imaginary_fixture_zero_count](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/declarations/imaginary-fixture-zero-count--a1dac146a643af1357575192.md) | 125 | `result-track:a1dac146a643af13575751925084f880634b1aee54974a7365ddf016fb2e8d45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
