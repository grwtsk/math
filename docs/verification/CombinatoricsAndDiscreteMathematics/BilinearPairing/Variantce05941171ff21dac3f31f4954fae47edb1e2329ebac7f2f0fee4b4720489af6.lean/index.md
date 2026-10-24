# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BilinearPairing.Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ea58f63141a71ceffd6d7ac04b632005f0e1fa6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ea58f63141a71ceffd6d7ac04b632005f0e1fa6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bilinearMatrixPairing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean/declarations/bilinearmatrixpairing--851e0d39d141e839aa3f5bae.md) | 43 | `declaration-track:851e0d39d141e839aa3f5bae6d1563c102af8bc4b2a5bede4b7584fa27e3a969` |
| 2 | `theorem` | [bilinearMatrixPairing_zero_matrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean/declarations/bilinearmatrixpairing-zero-matrix--caa4d16b0ec9e5b806a56422.md) | 51 | `result-track:caa4d16b0ec9e5b806a564220f351554548d18953d472b5e665a23f4088f3e93` |
| 3 | `theorem` | [bilinearMatrixPairing_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean/declarations/bilinearmatrixpairing-add--855539c0a1f058f7943740c3.md) | 58 | `result-track:855539c0a1f058f7943740c3493085942a94e915e3aa0d651db23144c9d738e4` |
| 4 | `theorem` | [bilinearMatrixPairing_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean/declarations/bilinearmatrixpairing-sub--318b19fda48eb27898556752.md) | 69 | `result-track:318b19fda48eb27898556752d488fe8ac8e2a3ffbfe93b5b08363bedf9750092` |
| 5 | `theorem` | [bilinearMatrixPairing_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean/declarations/bilinearmatrixpairing-sum--24e5807c80d44e3c9f0deb72.md) | 80 | `result-track:24e5807c80d44e3c9f0deb72725d8cd1b2ab3c8765d8c63acf1978ac3d1c9b2a` |
| 6 | `theorem` | [bilinearMatrixPairing_finset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean/declarations/bilinearmatrixpairing-finset-sum--6ed28bf20505bb6e51d16386.md) | 104 | `result-track:6ed28bf20505bb6e51d16386d9b41feb124f28868c2ab9a7ae86007774c36a31` |
| 7 | `def` | [conjugatedLeftEuclideanVector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean/declarations/conjugatedlefteuclideanvector--0e05d8dba54aa3ae8dd738d9.md) | 121 | `declaration-track:0e05d8dba54aa3ae8dd738d9f519f777dd2a909eff6972d7494237c0442a6faa` |
| 8 | `def` | [matrixActionEuclideanVector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean/declarations/matrixactioneuclideanvector--f5135959acfd98e8e30898c8.md) | 128 | `declaration-track:f5135959acfd98e8e30898c8a388aa1fa1cf5318fe55e5cba72025c5cae74b28` |
| 9 | `theorem` | [bilinearMatrixPairing_eq_inner_conjugatedLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6.lean/declarations/bilinearmatrixpairing-eq-inner-conjugatedleft--e721c90102174ad07b8398b1.md) | 140 | `result-track:e721c90102174ad07b8398b1581d3a4ae95abfaffcf8f35499929f0424037ae6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
