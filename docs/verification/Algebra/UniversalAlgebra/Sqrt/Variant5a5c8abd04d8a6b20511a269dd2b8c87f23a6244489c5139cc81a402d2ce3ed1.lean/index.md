# Verification target: GRWTSK.Algebra.UniversalAlgebra.Sqrt.Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a1bdf302268a8c67a17a52dce4ba5f636afafa2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Sqrt/Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a1bdf302268a8c67a17a52dce4ba5f636afafa2`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Sqrt/Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Sqrt/Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Unbundled.Rat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Sqrt` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrt](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1.lean/declarations/sqrt--bb722528a583f00997e5f6dd.md) | 25 | `declaration-track:bb722528a583f00997e5f6dd970c6ac980b47b795ceedfbd72ce124f5990c813` |
| 2 | `theorem` | [sqrt_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1.lean/declarations/sqrt-eq--502385e9e397d72d1de355cb.md) | 27 | `result-track:502385e9e397d72d1de355cb8fabba98329ee1c298b364c77e3944aabe0423b5` |
| 3 | `theorem` | [exists_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1.lean/declarations/exists-mul-self--c1047af1c369a20d4cc43bba.md) | 30 | `result-track:c1047af1c369a20d4cc43bba36e6faf50b523499444c8a82d5e1dcb149df32b7` |
| 4 | `lemma` | [sqrt_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1.lean/declarations/sqrt-nonneg--05ee3552d0f014966ace5484.md) | 33 | `result-track:05ee3552d0f014966ace54842a4f8d96d37af22b997bdc3e429f0e4e23b309bd` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1.lean/declarations/instance--ef16455232349156dbdebccd.md) | 36 | `declaration-track:ef16455232349156dbdebccd24cdeb403bd74ecdd17d621b7deadc32f129bd1d` |
| 6 | `theorem` | [sqrt_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1.lean/declarations/sqrt-intcast--b58dfaeee012f5a3fcc4deba.md) | 41 | `result-track:b58dfaeee012f5a3fcc4deba12778c9785fbf9a0046b119ee93a05c1c7f9019d` |
| 7 | `theorem` | [sqrt_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1.lean/declarations/sqrt-natcast--5c949c9d62e263b30e4686e9.md) | 45 | `result-track:5c949c9d62e263b30e4686e9f4639de4f443718f92cb6462d09a625731de85de` |
| 8 | `theorem` | [sqrt_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant5a5c8abd04d8a6b20511a269dd2b8c87f23a6244489c5139cc81a402d2ce3ed1.lean/declarations/sqrt-ofnat--6d79cb18b844bcb650ee4d55.md) | 49 | `result-track:6d79cb18b844bcb650ee4d554f81ec66aa0b4b67644ed7650df708989916d2a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
