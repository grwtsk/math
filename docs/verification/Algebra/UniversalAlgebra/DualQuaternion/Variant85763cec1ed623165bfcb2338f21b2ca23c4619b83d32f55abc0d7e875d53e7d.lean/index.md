# Verification target: GRWTSK.Algebra.UniversalAlgebra.DualQuaternion.Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c687af5d6f5ef29a4860b0cdde387dfaafda719b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c687af5d6f5ef29a4860b0cdde387dfaafda719b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DualNumber` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Quaternion` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/dualnumberequiv--1025cc48ee8f682e40fdc203.md) | 42 | `declaration-track:1025cc48ee8f682e40fdc2034b9faa4656de61dd9fd491ca6587215a5d4eb007` |
| 2 | `theorem` | [re_fst_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/re-fst-dualnumberequiv--5ca479c996ab2354ae84e645.md) | 65 | `result-track:5ca479c996ab2354ae84e64594d88934665cc108d28118e12058c510ba0f1ecd` |
| 3 | `theorem` | [imI_fst_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/imi-fst-dualnumberequiv--014f7267d9d6672b103695a1.md) | 70 | `result-track:014f7267d9d6672b103695a15a635ee857ff38a14a8421f35566d036602b9542` |
| 4 | `theorem` | [imJ_fst_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/imj-fst-dualnumberequiv--35d201a639968d8b35f155e2.md) | 75 | `result-track:35d201a639968d8b35f155e206c056c41ae7f8fd16d87cdfc4bc57ca86567080` |
| 5 | `theorem` | [imK_fst_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/imk-fst-dualnumberequiv--78feb2474b3cfaafa474833c.md) | 80 | `result-track:78feb2474b3cfaafa474833c0ca0b636998a435a16cca1aa0e6bdffc3f979570` |
| 6 | `theorem` | [re_snd_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/re-snd-dualnumberequiv--ee8b33896e8c201186afddb9.md) | 85 | `result-track:ee8b33896e8c201186afddb9489a504810b3f546e8f84182b1c18a6e26679572` |
| 7 | `theorem` | [imI_snd_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/imi-snd-dualnumberequiv--b20100c4a3dc2111fde8aa82.md) | 90 | `result-track:b20100c4a3dc2111fde8aa820d4b8ac5e48a2159d50ee6dc654e36573671a04f` |
| 8 | `theorem` | [imJ_snd_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/imj-snd-dualnumberequiv--38344b2cd7349f9a6f6446d8.md) | 95 | `result-track:38344b2cd7349f9a6f6446d8544c2e2640b7634158c86963c57ff27395916220` |
| 9 | `theorem` | [imK_snd_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/imk-snd-dualnumberequiv--52d4bf8b7256c4191ed58927.md) | 100 | `result-track:52d4bf8b7256c4191ed589276f375ec2b682fade57a0cde5a50a2c118b181f12` |
| 10 | `theorem` | [fst_re_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/fst-re-dualnumberequiv-symm--f3023c21795556811a55893d.md) | 105 | `result-track:f3023c21795556811a55893d2391b9649aba6d2d8e620903403a7d573af3b42d` |
| 11 | `theorem` | [fst_imI_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/fst-imi-dualnumberequiv-symm--879c143fd2d3bfdeaa557d46.md) | 110 | `result-track:879c143fd2d3bfdeaa557d4645decebf10284f20b863bc5a01923b8bef868518` |
| 12 | `theorem` | [fst_imJ_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/fst-imj-dualnumberequiv-symm--f21f839606eba0278f1aa596.md) | 115 | `result-track:f21f839606eba0278f1aa596f9160f506851af1563ca8d2b6922a6609c5aba57` |
| 13 | `theorem` | [fst_imK_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/fst-imk-dualnumberequiv-symm--2670bdff3c7df2ca98e72974.md) | 120 | `result-track:2670bdff3c7df2ca98e72974c7f8f3bda60c7d5133b92cc983955db296ac8bc9` |
| 14 | `theorem` | [snd_re_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/snd-re-dualnumberequiv-symm--7a7d1aeea6af21940c2fd9fe.md) | 125 | `result-track:7a7d1aeea6af21940c2fd9fef66ea789e703aed1be2a8f0fc36021feae424b89` |
| 15 | `theorem` | [snd_imI_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/snd-imi-dualnumberequiv-symm--f5fb06eb17c3c0fe123241f3.md) | 130 | `result-track:f5fb06eb17c3c0fe123241f347019f4ed90cd73bd6d5fde42f64e83eb356c657` |
| 16 | `theorem` | [snd_imJ_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/snd-imj-dualnumberequiv-symm--e9cf22282da743e3a0597888.md) | 135 | `result-track:e9cf22282da743e3a05978882afe288e020a97a434bab9d22a68d876a0353d6f` |
| 17 | `theorem` | [snd_imK_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant85763cec1ed623165bfcb2338f21b2ca23c4619b83d32f55abc0d7e875d53e7d.lean/declarations/snd-imk-dualnumberequiv-symm--ae7b1e4b20ed8403ab837231.md) | 140 | `result-track:ae7b1e4b20ed8403ab837231cd627e9c23833ade0485e45bb635fdeeb9475327` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
