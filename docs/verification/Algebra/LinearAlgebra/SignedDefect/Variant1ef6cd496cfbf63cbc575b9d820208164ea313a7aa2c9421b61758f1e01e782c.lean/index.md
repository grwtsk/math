# Verification target: GRWTSK.Algebra.LinearAlgebra.SignedDefect.Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "976e076f0712861d4e37e595c4af38ae34dd7bb2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `976e076f0712861d4e37e595c4af38ae34dd7bb2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceArithmeticOrbit` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [defect](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/declarations/defect--207747fbfdc7ae4692325c3e.md) | 17 | `declaration-track:207747fbfdc7ae4692325c3eb7b7d648542f6596ee8ce4b7a7a547bfbf7a66bf` |
| 2 | `theorem` | [defect_comp](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/declarations/defect-comp--6bf9ffb8d8d1f63560e2ea20.md) | 19 | `result-track:6bf9ffb8d8d1f63560e2ea2014d3e931b8205408132adb9357b7999c6c4f2fa1` |
| 3 | `theorem` | [defect_involution](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/declarations/defect-involution--146b5986e1bc171e0b8d92c9.md) | 24 | `result-track:146b5986e1bc171e0b8d92c92255a58ba51111ae927541d718ed4957446477d8` |
| 4 | `def` | [pairing](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/declarations/pairing--f83b27958cc3a00014ba00e6.md) | 30 | `declaration-track:f83b27958cc3a00014ba00e69cc795b7a2faabb474d56f4974f7e6625b5b7c2a` |
| 5 | `theorem` | [pairing_pullback](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/declarations/pairing-pullback--704e1bff1d70147835c4d536.md) | 32 | `result-track:704e1bff1d70147835c4d5365c15dcfcf3cf638db0a48fcd6ca41e27152221bf` |
| 6 | `theorem` | [pairing_sub](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/declarations/pairing-sub--07cf70deb330b7be2560fcbb.md) | 37 | `result-track:07cf70deb330b7be2560fcbb17e053e2621bd52086baa6a39f3500fefb4bba05` |
| 7 | `theorem` | [pairing_defect](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/declarations/pairing-defect--e1a3cf72ff3035791e467204.md) | 41 | `result-track:e1a3cf72ff3035791e46720476211ddc823ac2e813a17a5b78f1d1008a1d3a4a` |
| 8 | `theorem` | [refinement_increment](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/declarations/refinement-increment--767b60fade5906ac7fb22b99.md) | 46 | `result-track:767b60fade5906ac7fb22b991264d1d2e1c9f8f237629d5e5126a326890460b9` |
| 9 | `theorem` | [actual_pairing](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/declarations/actual-pairing--79714a2163506185954b57a4.md) | 60 | `result-track:79714a2163506185954b57a4e69e116aadc31bafb595822aac8f159d4a17f7f1` |
| 10 | `theorem` | [actual_move_defect](../../../../../mathematics/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/declarations/actual-move-defect--fccb06c58eb4f63583e7d2a0.md) | 73 | `result-track:fccb06c58eb4f63583e7d2a09ef755c989935408d92b01fbef49b06ebbd5af34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
