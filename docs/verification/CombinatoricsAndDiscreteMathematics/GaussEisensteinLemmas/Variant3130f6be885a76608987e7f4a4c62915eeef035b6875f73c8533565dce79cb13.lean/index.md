# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GaussEisensteinLemmas.Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97490383751b7fef99453c178d184f7d7441a2a1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97490383751b7fef99453c178d184f7d7441a2a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Factorial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ico_map_valMinAbs_natAbs_eq_Ico_map_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/declarations/ico-map-valminabs-natabs-eq-ico-map-id--53362e7070c0c60fd315a194.md) | 37 | `result-track:53362e7070c0c60fd315a19439fb03a79c58e5ef49c4126f7d6bd09c860e9ed9` |
| 2 | `theorem` | [gauss_lemma_aux₁](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/declarations/gauss-lemma-aux--e488c4e75ff454a299ccd6f6.md) | 69 | `result-track:e488c4e75ff454a299ccd6f6ed15b226dee2359cc6d12ef07031fa718cfdc561` |
| 3 | `theorem` | [gauss_lemma_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/declarations/gauss-lemma-aux--9b8aaba7d97fbf37491163f6.md) | 98 | `result-track:9b8aaba7d97fbf37491163f6ff5d587728ca22e52829da45f86d09b23d587ac4` |
| 4 | `theorem` | [gauss_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/declarations/gauss-lemma--14d4894d07a393b7e5596964.md) | 108 | `result-track:14d4894d07a393b7e5596964268966ae4e786528d4e986fce3625205257e0c89` |
| 5 | `theorem` | [eisenstein_lemma_aux₁](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/declarations/eisenstein-lemma-aux--cc42a7199cb0865b819280fc.md) | 118 | `result-track:cc42a7199cb0865b819280fc4b3e69f36024d313fe0a9cb41c67a3472931f6cd` |
| 6 | `theorem` | [eisenstein_lemma_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/declarations/eisenstein-lemma-aux--56f9e7dc9fae55cefc2cd029.md) | 147 | `result-track:56f9e7dc9fae55cefc2cd029bbe6590132d8a6b3edcb9378431afaef5ada3ec8` |
| 7 | `theorem` | [div_eq_filter_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/declarations/div-eq-filter-card--9922906fab8763639982ba6a.md) | 157 | `result-track:9922906fab8763639982ba6ad2c46c526564d8278b52460897d97903f1e57618` |
| 8 | `theorem` | [sum_Ico_eq_card_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/declarations/sum-ico-eq-card-lt--d543ccadf35494e3b5093035.md) | 168 | `result-track:d543ccadf35494e3b50930356acebbcd5420aaf6757ebba28b21d35c164db910` |
| 9 | `theorem` | [sum_mul_div_add_sum_mul_div_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/declarations/sum-mul-div-add-sum-mul-div-eq-mul--e218269deeba5855f68f6703.md) | 191 | `result-track:e218269deeba5855f68f670394aff656a398654e62c41f96220d80f29c777d89` |
| 10 | `theorem` | [eisenstein_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/declarations/eisenstein-lemma--787dee452b3e94828304a8a3.md) | 226 | `result-track:787dee452b3e94828304a8a337acad7f80d66f02d141308ec3e0f51dc6c5c5d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
