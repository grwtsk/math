# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c88c090322616b194addefb7e6b5b10267d4d95",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c88c090322616b194addefb7e6b5b10267d4d95`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FunLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/funlike--0d8d27c3ce455c62047aefbf.md) | 137 | `declaration-track:0d8d27c3ce455c62047aefbf6912abe9131ec636b94a100f6c7f46d8a07b8ccb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/instance--9eae30ad6aff376b63cfcfc8.md) | 157 | `declaration-track:9eae30ad6aff376b63cfcfc8a26f0e1e641e14298664093d8648e0d299bd2198` |
| 3 | `theorem` | [coe_eq_coe_fn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/coe-eq-coe-fn--e1a022bcac1deb2c8cae7f57.md) | 164 | `result-track:e1a022bcac1deb2c8cae7f57cb4b0410c9f3afe37903a4d690731920eeb5aa9f` |
| 4 | `theorem` | [coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/coe-injective--5a4d052513199defb5db28e6.md) | 167 | `result-track:5a4d052513199defb5db28e67b4c91049616cf72c2b5341de78293c21ba42472` |
| 5 | `theorem` | [coe_fn_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/coe-fn-eq--362c478b350a16e134ac243b.md) | 172 | `result-track:362c478b350a16e134ac243b945830f488c4841d5e96dc9528d19b15cbbd4b6b` |
| 6 | `theorem` | [ext'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/ext--61c6d17df954e5600d7290e3.md) | 176 | `result-track:61c6d17df954e5600d7290e3998100a5fdc0494f4b88749cc5cf3b9d000b5ce8` |
| 7 | `theorem` | [ext'_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/ext-iff--f9d35e1d48dee2e9783c97fb.md) | 180 | `result-track:f9d35e1d48dee2e9783c97fb004f63dd84eb42675d694da3c5a0e05c39620ae1` |
| 8 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/ext--f6f7cfeeeb129a1541363cca.md) | 184 | `result-track:f6f7cfeeeb129a1541363cca7d7cc79b0c9180a8451fa5d56e0a1863f42eebe0` |
| 9 | `theorem` | [ext_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/ext-iff--17b4dce596e62edbe207b089.md) | 188 | `result-track:17b4dce596e62edbe207b089762d192fb8a433a90f4c26d9eb6fa331126435ba` |
| 10 | `theorem` | [congr_fun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/congr-fun--a6d47a3559aa0870378772a7.md) | 192 | `result-track:a6d47a3559aa0870378772a7bc0001ed5d70ac7191cbc2039cbfee50b4c42fb3` |
| 11 | `theorem` | [ne_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/ne-iff--df2bda95d901ba921cb65628.md) | 196 | `result-track:df2bda95d901ba921cb6562887f76f8a1b51ef692f7abc113b3598d606ed0fa4` |
| 12 | `theorem` | [exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/exists-ne--0b99694ea8c66de1c23af8c0.md) | 200 | `result-track:0b99694ea8c66de1c23af8c031822329e2859f7cf511ade32c1362ac2239f72c` |
| 13 | `lemma` | [subsingleton_cod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/subsingleton-cod--0e0edb4be362b450813e0d16.md) | 205 | `result-track:0e0edb4be362b450813e0d16a8d1a144922607459c7a1b2304cc0d82cfcc0196` |
| 14 | `theorem` | [congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/congr--6b3940abc81050586a859553.md) | 221 | `result-track:6b3940abc81050586a85955374e5b799fc743565e93bc97a7b8f2cc4d12a6c96` |
| 15 | `theorem` | [congr_arg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62ba3417805d0737edd6739978d4ed0817bf645c5ab1fe9fac89987e275f975b.lean/declarations/congr-arg--836cc569aba22a0271f0a0ed.md) | 225 | `result-track:836cc569aba22a0271f0a0ed6ec632b06ddfc8499d1668ac81ad1b1388fe09ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
