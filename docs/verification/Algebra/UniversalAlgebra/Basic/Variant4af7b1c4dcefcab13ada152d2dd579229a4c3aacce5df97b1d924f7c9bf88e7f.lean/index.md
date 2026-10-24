# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0784f9133207218dc302ef9db7c7ab5c74655d3d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0784f9133207218dc302ef9db7c7ab5c74655d3d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean.json)

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
| 1 | `class` | [IsJordan](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/isjordan--d82c91a39a07ddb01a64acec.md) | 90 | `declaration-track:d82c91a39a07ddb01a64acec27d9e40f2965955449ad667eab715d0c4c99d2ba` |
| 2 | `class` | [IsCommJordan](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/iscommjordan--6679eda143b8d951c5089fa3.md) | 98 | `declaration-track:6679eda143b8d951c5089fa336d8c34bb5c614e9c16205016435a529d576db41` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/instance--ac53e9722046142799d7604b.md) | 103 | `declaration-track:ac53e9722046142799d7604b27690246b818bfed59693e7008dce29a8c5b6f00` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/instance--ca6345024143eb249d27aa19.md) | 117 | `declaration-track:ca6345024143eb249d27aa1938e31fce2e1685b12db68721d030c8a2dc066d07` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/instance--d89e2d4883b01c9da6dae9ac.md) | 125 | `declaration-track:d89e2d4883b01c9da6dae9ac0c6e42433b5a5f03237001f687115411f82f9546` |
| 6 | `theorem` | [commute_lmul_rmul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/commute-lmul-rmul--11d63cbf09a72c6cb0faf3f3.md) | 142 | `result-track:11d63cbf09a72c6cb0faf3f38117f9856f9f1b011d6e34cd8588a8705347ecc8` |
| 7 | `theorem` | [commute_lmul_lmul_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/commute-lmul-lmul-sq--d302405adf04cf4bbd78136e.md) | 146 | `result-track:d302405adf04cf4bbd78136e2b9bd5b9ba0e53a1281fa1b4cafac6723a587b0a` |
| 8 | `theorem` | [commute_lmul_rmul_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/commute-lmul-rmul-sq--cdf611a6529e85b0ebc2f56d.md) | 150 | `result-track:cdf611a6529e85b0ebc2f56d17dbe92fefb77e600785fed33009b08f7c2dcfa5` |
| 9 | `theorem` | [commute_lmul_sq_rmul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/commute-lmul-sq-rmul--c5ff3813e9b0b5956ce07607.md) | 154 | `result-track:c5ff3813e9b0b5956ce07607d62c95cda8a48c1892db52b922777441fef33d87` |
| 10 | `theorem` | [commute_rmul_rmul_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/commute-rmul-rmul-sq--58c1a868ecb1394fb16fbcb0.md) | 158 | `result-track:58c1a868ecb1394fb16fbcb0181291afdbb1a8c7ed6a3b7f19ab285ec2fb85af` |
| 11 | `theorem` | [two_nsmul_lie_lmul_lmul_add_eq_lie_lmul_lmul_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/two-nsmul-lie-lmul-lmul-add-eq-lie-lmul-lmul-add--f54f074b72b77ea8aec05d11.md) | 172 | `result-track:f54f074b72b77ea8aec05d11c5204882f1f4087f7daba9c45896dd1aec531fca` |
| 12 | `theorem` | [aux0](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/aux0--7a229838c8bf64a5676f6866.md) | 183 | `result-track:7a229838c8bf64a5676f6866f4dcc32d40474320256837a379a078de0809bfb2` |
| 13 | `theorem` | [aux1](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/aux1--502bd51d5681150a8a1579d9.md) | 194 | `result-track:502bd51d5681150a8a1579d918fb112cec6f10dba97f8e71e457d01377289359` |
| 14 | `theorem` | [aux2](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/aux2--7cb4cb41e14c58d05f79ae1b.md) | 209 | `result-track:7cb4cb41e14c58d05f79ae1bb3d25c6e99669a25bae0985e61c32faa59d863a7` |
| 15 | `theorem` | [aux3](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/aux3--70a964bb3e675f588ef6eb70.md) | 226 | `result-track:70a964bb3e675f588ef6eb700f1d26c14a9dfd1eee3bf2b17f21f7c345bd81d7` |
| 16 | `theorem` | [two_nsmul_lie_lmul_lmul_add_add_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/declarations/two-nsmul-lie-lmul-lmul-add-add-eq-zero--bc6bb8bf4b539af95311f4bd.md) | 241 | `result-track:bc6bb8bf4b539af95311f4bd332f178c7aef2a4fb031d38f48786c020869c541` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
