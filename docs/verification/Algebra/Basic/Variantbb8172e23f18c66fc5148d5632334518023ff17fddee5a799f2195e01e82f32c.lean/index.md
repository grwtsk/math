# Verification target: GRWTSK.Algebra.Basic.Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acee93a2d43697d00b8343167d82261b22798d60",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acee93a2d43697d00b8343167d82261b22798d60`.

Source path: `GRWTSK/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/mulleft--ab6ab94de10b3def2ba7c8b8.md) | 39 | `declaration-track:ab6ab94de10b3def2ba7c8b8584b0249f3c098fc2fe6633b08f4a00a421c6fc5` |
| 2 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/mulright--95921c577c09f3a40e8535d7.md) | 46 | `declaration-track:95921c577c09f3a40e8535d7c6836211a81ee3aea3d0337481258cf9efc5df51` |
| 3 | `theorem` | [map_bit0](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/map-bit0--fb4b29916df26805f643860b.md) | 60 | `result-track:fb4b29916df26805f643860b820654a88d8761fd61f03f8ef6dcb0d0146f47c7` |
| 4 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/mulleft--353693245969ff708ef0941a.md) | 69 | `declaration-track:353693245969ff708ef0941a0c2bf96eea191c0e3a7ac3c4e31e8407f609cc3a` |
| 5 | `theorem` | [coe_mulLeft](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/coe-mulleft--a028ec73ec25ecaa713719cb.md) | 76 | `result-track:a028ec73ec25ecaa713719cb4187053777b330debe2b74d4df0ee98105bbba1a` |
| 6 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/mulright--3702099dd3665430bc5c43b6.md) | 82 | `declaration-track:3702099dd3665430bc5c43b6326b0a7ce879c48936fd1c713e7e1bbf8f3cdffd` |
| 7 | `theorem` | [coe_mulRight](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/coe-mulright--5c36b7071473c67d1ed0a6b1.md) | 89 | `result-track:5c36b7071473c67d1ed0a6b15c7cff7574b8cf93b40b88edb13c2144874a25e8` |
| 8 | `theorem` | [mulRight_apply](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/mulright-apply--98aec73ce7cec880d8461c1e.md) | 94 | `result-track:98aec73ce7cec880d8461c1eeeeddaf5062c9dc8fd777ce2eab2fad01a70ff84` |
| 9 | `instance` | [hasDistribNeg](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/hasdistribneg--ccbc14c288ea21972145175e.md) | 109 | `declaration-track:ccbc14c288ea21972145175e2027edbac0b8748b50df1a467db06fedbf4f6cb3` |
| 10 | `theorem` | [inv_neg'](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/inv-neg--042899a5306fdba038322162.md) | 121 | `result-track:042899a5306fdba038322162d7298e92c11b6e97dfa0ef65889e49e0807f7ff9` |
| 11 | `theorem` | [vieta_formula_quadratic](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/vieta-formula-quadratic--034e139b456bec9ae2e5ed54.md) | 139 | `result-track:034e139b456bec9ae2e5ed54fda5d9112880b0d3026b0588d4a17a7996afc818` |
| 12 | `theorem` | [succ_ne_self](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/succ-ne-self--ac4d8dac750382809eada8f8.md) | 149 | `result-track:ac4d8dac750382809eada8f859a9e352c033987c9d614e03a45aacba35e09484` |
| 13 | `theorem` | [pred_ne_self](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/pred-ne-self--57567df1af3bc8950d3517c9.md) | 153 | `result-track:57567df1af3bc8950d3517c9ca321635385f198098d059a7ed86aa1b10ae8fec` |
| 14 | `lemma` | [IsLeftCancelMulZero.to_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/isleftcancelmulzero-to-nozerodivisors--4bb879ca427f64b4e237ba19.md) | 161 | `result-track:4bb879ca427f64b4e237ba199bfed410de471301dc19d62affc55ff7b51ae1db` |
| 15 | `lemma` | [IsRightCancelMulZero.to_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/isrightcancelmulzero-to-nozerodivisors--75d139a32b619e4f2e037c06.md) | 173 | `result-track:75d139a32b619e4f2e037c06170870ad19265737414977a526744af1d3e5beeb` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/instance--f1d73a99ae7274883e7fdf54.md) | 185 | `declaration-track:f1d73a99ae7274883e7fdf546ecf136da64f25af03873421dad2907ec0493144` |
| 17 | `lemma` | [NoZeroDivisors.to_isDomain](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/nozerodivisors-to-isdomain--44c820d007ee6a5605b30fea.md) | 195 | `result-track:44c820d007ee6a5605b30feab97ad9daa04093b0b1f6dca769df05c4ca143b02` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c.lean/declarations/instance--0ee9ad34bb096b68dfb8eb38.md) | 200 | `declaration-track:0ee9ad34bb096b68dfb8eb38f6c9e5b4c9f30869c862b60a098a075deb8490ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
