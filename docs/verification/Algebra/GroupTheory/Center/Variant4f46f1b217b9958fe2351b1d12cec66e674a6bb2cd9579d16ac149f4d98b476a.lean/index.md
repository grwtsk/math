# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variant4f46f1b217b9958fe2351b1d12cec66e674a6bb2cd9579d16ac149f4d98b476a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8100cce42c3f0f0904e50257c97029a0d3d21550",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant4f46f1b217b9958fe2351b1d12cec66e674a6bb2cd9579d16ac149f4d98b476a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variant4f46f1b217b9958fe2351b1d12cec66e674a6bb2cd9579d16ac149f4d98b476a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variant4f46f1b217b9958fe2351b1d12cec66e674a6bb2cd9579d16ac149f4d98b476a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8100cce42c3f0f0904e50257c97029a0d3d21550`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant4f46f1b217b9958fe2351b1d12cec66e674a6bb2cd9579d16ac149f4d98b476a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant4f46f1b217b9958fe2351b1d12cec66e674a6bb2cd9579d16ac149f4d98b476a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Center` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natCast_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant4f46f1b217b9958fe2351b1d12cec66e674a6bb2cd9579d16ac149f4d98b476a.lean/declarations/natcast-mem-center--38156543f467f03023300e88.md) | 31 | `result-track:38156543f467f03023300e88bfa538eceebdb54d2825a02766474abcfeb66a7f` |
| 2 | `theorem` | [ofNat_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant4f46f1b217b9958fe2351b1d12cec66e674a6bb2cd9579d16ac149f4d98b476a.lean/declarations/ofnat-mem-center--0adc0ed48dd27674f603a0dd.md) | 47 | `result-track:0adc0ed48dd27674f603a0ddc255b9507c54fd4ab32d7b020338046c455ee410` |
| 3 | `theorem` | [intCast_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant4f46f1b217b9958fe2351b1d12cec66e674a6bb2cd9579d16ac149f4d98b476a.lean/declarations/intcast-mem-center--d6c58e3881968996ef338add.md) | 52 | `result-track:d6c58e3881968996ef338addc301df085c5e61a21df256082fe0ca00c9d8786b` |
| 4 | `theorem` | [add_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant4f46f1b217b9958fe2351b1d12cec66e674a6bb2cd9579d16ac149f4d98b476a.lean/declarations/add-mem-center--f149e55418d3c90b9911fa51.md) | 78 | `result-track:f149e55418d3c90b9911fa512bebca47e57dfddc3f20c0d788cbfaf23886e055` |
| 5 | `theorem` | [neg_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant4f46f1b217b9958fe2351b1d12cec66e674a6bb2cd9579d16ac149f4d98b476a.lean/declarations/neg-mem-center--9194baf4dd27e202b3a7d88d.md) | 86 | `result-track:9194baf4dd27e202b3a7d88d873c834354bd6bd588af6b11781eebcedc948833` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
