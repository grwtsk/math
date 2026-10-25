# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94099262974a3b80c7f44b2040ce04bb34b8e786",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94099262974a3b80c7f44b2040ce04bb34b8e786`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.FunLike.Embedding` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EquivLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/equivlike--660b94f21fbcd34663b400c9.md) | 136 | `declaration-track:660b94f21fbcd34663b400c931b972b17e85d3a7fcceb51722c4e3ecaf347fe1` |
| 2 | `theorem` | [inv_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/inv-injective--02e6253fc67f0e3f8aae4919.md) | 154 | `result-track:02e6253fc67f0e3f8aae4919f4a4d6666d625e83a09032b5af8fcae3ab6f229a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/instance--671313eaaa7cb4fb83f2ddc8.md) | 157 | `declaration-track:671313eaaa7cb4fb83f2ddc84a8cd673c202f5db866992a42f27f9839f334f7f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/instance--0b03c84b99997189a410dcad.md) | 162 | `declaration-track:0b03c84b99997189a410dcad22245e73822a3c1df0b247d667f85fc4d76010b7` |
| 5 | `theorem` | [injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/injective--9118da51778ffab97faea9b0.md) | 165 | `result-track:9118da51778ffab97faea9b0ae67abd9eb98e66fdf2b8c4d286505a18bb70c84` |
| 6 | `theorem` | [surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/surjective--28d564d7b3e24f6957e8c1b3.md) | 168 | `result-track:28d564d7b3e24f6957e8c1b33d4db9a1c5684a6faea014894d1492e940caac87` |
| 7 | `theorem` | [bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/bijective--2582d08a3437cccb2046adf5.md) | 171 | `result-track:2582d08a3437cccb2046adf5877a2868496dd13ed4857bc971b6f32c7236c8ab` |
| 8 | `theorem` | [apply_eq_iff_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/apply-eq-iff-eq--1b6c99e9d176c63028ede672.md) | 174 | `result-track:1b6c99e9d176c63028ede672b0447bcc1f7fd0dc6afbb2f8c13e3e076c3f4ec2` |
| 9 | `theorem` | [injective_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/injective-comp--25e0410765ea0165d778cfa9.md) | 178 | `result-track:25e0410765ea0165d778cfa906ab62086cb22a87e3e23be076d8e07ccd78cddf` |
| 10 | `theorem` | [surjective_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/surjective-comp--1b4d1f1b15a1766070a47377.md) | 182 | `result-track:1b4d1f1b15a1766070a4737773bdf3b36071c4d7d6b40c30ea471d6b1bdd6b34` |
| 11 | `theorem` | [bijective_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/bijective-comp--4b153f0091fa8cef5b9877c5.md) | 186 | `result-track:4b153f0091fa8cef5b9877c53bda4eff74ce1cacb39292c498c23251d233f3f6` |
| 12 | `theorem` | [inv_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/inv-apply-apply--5a07ff775e823f3e166971c4.md) | 196 | `result-track:5a07ff775e823f3e166971c479348bd07c44ec4ebf89156fd20f11b6803d93fb` |
| 13 | `theorem` | [apply_inv_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/apply-inv-apply--09c625796678632bec40962c.md) | 206 | `result-track:09c625796678632bec40962c882e05538cd43f7edfce9ff8399d3143b25df66f` |
| 14 | `lemma` | [inv_apply_eq_iff_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/inv-apply-eq-iff-eq-apply--091c19239c247b1358bf7e15.md) | 209 | `result-track:091c19239c247b1358bf7e15246ff2dbbc1eb7708985e383fd4905561e929a61` |
| 15 | `theorem` | [comp_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/comp-injective--85ca450af8c10d174612283b.md) | 212 | `result-track:85ca450af8c10d174612283bb7522f1d6b73dd1b1a4d80f64b77f320238bbcae` |
| 16 | `theorem` | [comp_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/comp-surjective--72771b41f1d714029e6fb200.md) | 216 | `result-track:72771b41f1d714029e6fb20059c0041acee5269e07bc4cd3ee0467e69f4706c8` |
| 17 | `theorem` | [comp_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/comp-bijective--2a07d103bcfd421ded163e0f.md) | 220 | `result-track:2a07d103bcfd421ded163e0f767542313156eaa44c90acf8ceaa6e8090f3c701` |
| 18 | `lemma` | [subsingleton_dom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant776cfa449f7f4b344c4220124078da8efd3d7edba953a33086918ee266b7d537.lean/declarations/subsingleton-dom--9cf0b511738ba70b8b5e3b3c.md) | 224 | `result-track:9cf0b511738ba70b8b5e3b3cb901e33bda4efc70ca2af3c3b235b2079fb9b477` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
