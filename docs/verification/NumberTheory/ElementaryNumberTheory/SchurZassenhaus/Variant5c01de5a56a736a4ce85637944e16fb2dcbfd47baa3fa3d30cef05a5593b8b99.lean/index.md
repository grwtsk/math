# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.SchurZassenhaus.Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4a972b6051a0c32d0d4b0dc56aa44753d9bb0a1",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4a972b6051a0c32d0d4b0dc56aa44753d9bb0a1`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Sylow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Transfer` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuotientDiff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/quotientdiff--8d35a6e531286344a6c4a116.md) | 47 | `declaration-track:8d35a6e531286344a6c4a11698ceef99af6c1b2b1bb3b78a736c1aa000aaf8df` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/instance--a40d83221d51da0ca233ed45.md) | 54 | `declaration-track:a40d83221d51da0ca233ed4584b54d7e8627ec96bccd36b6a49a47e47d4898e0` |
| 3 | `theorem` | [smul_diff_smul'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/smul-diff-smul--cd128e29f00c3bca1e17cff0.md) | 58 | `result-track:cd128e29f00c3bca1e17cff08d0ddfb7e9720b0327d2abd3379cab37e226ad3d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/instance--ac4ef3c8b3769d04b2b06f70.md) | 82 | `declaration-track:ac4ef3c8b3769d04b2b06f704041831edb5f3b102709be763bebbd190b5e6be6` |
| 5 | `theorem` | [smul_diff'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/smul-diff--0baf2c852448e61d6e6ed6db.md) | 96 | `result-track:0baf2c852448e61d6e6ed6db1491f21ab88ef17d5cfc4c3e27b37c2ea6fbbe3f` |
| 6 | `theorem` | [eq_one_of_smul_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/eq-one-of-smul-eq-one--3a1982b31309b5ed5ec8442a.md) | 107 | `result-track:3a1982b31309b5ed5ec8442ad315d18c04fdbc214eefd900ed4aa7f6b853af15` |
| 7 | `theorem` | [exists_smul_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/exists-smul-eq--4d1c59da6632b53d29132ece.md) | 118 | `result-track:4d1c59da6632b53d29132ecedab1710c9b1839176e546cab0f853856c25461a0` |
| 8 | `theorem` | [isComplement'_stabilizer_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/iscomplement-stabilizer-of-coprime--f6c9fd4e5f18bf14ba9674ba.md) | 130 | `result-track:f6c9fd4e5f18bf14ba9674ba1d22f5c878ccc847dd6564789697f0aac1ca89d8` |
| 9 | `theorem` | [exists_right_complement'_of_coprime_aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/exists-right-complement-of-coprime-aux--65c1516071b7886a3bb353d8.md) | 136 | `result-track:65c1516071b7886a3bb353d8820eee16e5470c270f1d6b5e28fe44f6bbec2d3f` |
| 10 | `theorem` | [step0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/step0--4742b146eeeb7bf6b940bc77.md) | 176 | `result-track:4742b146eeeb7bf6b940bc77ba114af4ee7bad393cf86e9d0b32b529862f0e86` |
| 11 | `theorem` | [step1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/step1--620335a930128ac74e57ddf9.md) | 181 | `result-track:620335a930128ac74e57ddf975a644b1cfc015438a838de18f43dd65320d4c92` |
| 12 | `theorem` | [step2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/step2--24fcbb8de6cc36f1caa74506.md) | 204 | `result-track:24fcbb8de6cc36f1caa74506cbb55aea7f971ec3a5a6cd2860189e64a1b33437` |
| 13 | `theorem` | [step3](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/step3--ddf80040c00d1cfa36102550.md) | 234 | `result-track:ddf80040c00d1cfa3610255029ed70916d137c5845443abfff0bbb8c77fbc028` |
| 14 | `theorem` | [step4](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/step4--640e0cbda2746242bab3d426.md) | 245 | `result-track:640e0cbda2746242bab3d426d9211ca44ae8ca62fe4ed8fdedbc308b8614325f` |
| 15 | `theorem` | [step5](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/step5--bfa68d85fbffd70da68954dc.md) | 249 | `result-track:bfa68d85fbffd70da68954dc3fd8ad852f86e979fa0d32e7fcc102467ad0370d` |
| 16 | `theorem` | [step6](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/step6--6b0e2ec40d9b6b8251075ad8.md) | 254 | `result-track:6b0e2ec40d9b6b8251075ad8bf0f95c3d6619b61d4ff4a48d7466cbe350d37ac` |
| 17 | `theorem` | [step7](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/step7--28b67e38926bb6936c1c57e5.md) | 263 | `result-track:28b67e38926bb6936c1c57e532fc4620e7ccf9b672b6bcb267e81018fbc1ce66` |
| 18 | `theorem` | [exists_right_complement'_of_coprime_aux'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/exists-right-complement-of-coprime-aux--594f1f9e1765935ac877b5d8.md) | 277 | `result-track:594f1f9e1765935ac877b5d896e3178dd71009c05040a2a5e792888e9a52a3cb` |
| 19 | `theorem` | [exists_right_complement'_of_coprime_of_fintype](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/exists-right-complement-of-coprime-of-fintype--e5772568b2bca8e312ad9fbd.md) | 291 | `result-track:e5772568b2bca8e312ad9fbde7ce3d412aaf9ac6a979a0085e42339455fa53ca` |
| 20 | `theorem` | [exists_right_complement'_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/exists-right-complement-of-coprime--d98efba14dedc8f71a877b24.md) | 299 | `result-track:d98efba14dedc8f71a877b24ee1446f0043b9003eb834cb6c398095db4e50ede` |
| 21 | `theorem` | [exists_left_complement'_of_coprime_of_fintype](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/exists-left-complement-of-coprime-of-fintype--382ca2964524a05579f71a44.md) | 322 | `result-track:382ca2964524a05579f71a44bbaee5774de3174cf35dc2f98dcbc7575101f951` |
| 22 | `theorem` | [exists_left_complement'_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/declarations/exists-left-complement-of-coprime--548b8d0af3c798c49600a3c6.md) | 330 | `result-track:548b8d0af3c798c49600a3c6c7a5655a7f0364a485dfb4f5302ecde6f43b7fc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
