# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf93cf4766128469ffc650432e66ccc3a6448e7e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf93cf4766128469ffc650432e66ccc3a6448e7e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Pi` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/nil--9eac843593b4ea2d30435dad.md) | 30 | `declaration-track:9eac843593b4ea2d30435dadc49102a0561fa718e30bbb34c660eeefcb5113fd` |
| 2 | `def` | [head](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/head--04325274d48f41618d526e2a.md) | 36 | `declaration-track:04325274d48f41618d526e2aedfc531e3873a6adc5cafa88e1518bf3b2da4739` |
| 3 | `def` | [tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/tail--3c1b885a20a67b2a8ed8302d.md) | 41 | `declaration-track:3c1b885a20a67b2a8ed8302d04ae4169e930c3822d92b6f743586404b79ea1d3` |
| 4 | `def` | [cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/cons--267aa18fd9aa240792335e68.md) | 49 | `declaration-track:267aa18fd9aa240792335e68e9faea270f4e0215ace4e531477b4e563e1b2551` |
| 5 | `lemma` | [cons_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/cons-def--88daffb2867b6d4879cc3f16.md) | 54 | `result-track:88daffb2867b6d4879cc3f163bd813794be78358b5249ed1210a15d5962d17e9` |
| 6 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Nil.Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.Multiset.Pi.cons_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-nil-variantb8311fed16a14--d57ec80f03783514d2b1e4d4.md) | 58 | `result-track:d57ec80f03783514d2b1e4d4dd72fc93caa195a95231fa1559bbde1f6ae7347d` |
| 7 | `lemma` | [cons_eta](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/cons-eta--06076e8ab6d2535e041efece.md) | 62 | `result-track:06076e8ab6d2535e041efece8849fb69c2812f423567cf59460ef6f0c1e86d84` |
| 8 | `lemma` | [cons_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/cons-map--834ed5e3c4cf621a10a5c514.md) | 66 | `result-track:834ed5e3c4cf621a10a5c5148367534d7081fd2513a0f8d17f5284bf9f2af539` |
| 9 | `lemma` | [forall_rel_cons_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/forall-rel-cons-ext--1263cfbd6d10c4dfcdec1107.md) | 71 | `result-track:1263cfbd6d10c4dfcdec1107e34e247b353117b6bf74b90f7fe739e4391a5624` |
| 10 | `def` | [pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/pi--bee03bb4d25b55bede6ff1a1.md) | 81 | `declaration-track:bee03bb4d25b55bede6ff1a11626d321e10cf1a29ddb046293a89e15e4d32d15` |
| 11 | `lemma` | [pi_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/pi-nil--5be32d7c323efa93ce455856.md) | 85 | `result-track:5be32d7c323efa93ce455856a2babfd8effcc2487b2c00e408edb47106c54113` |
| 12 | `lemma` | [pi_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/pi-cons--f1031523012e03e603f95227.md) | 89 | `result-track:f1031523012e03e603f952275abbcc4c0f2113ccd5d8aa9ba324921679611253` |
| 13 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Nil.Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.Multiset.pi_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-nil-variantb8311fed16a14--1b0d5f2188761e57dd975ce8.md) | 93 | `result-track:1b0d5f2188761e57dd975ce869ec184465a240420cf553b0c6091f9f39b518bb` |
| 14 | `lemma` | [mem_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant7c4e39d14495d66d6d3b8dcb48915185c69b992d08fc85ba1e688906d8ff0953.lean/declarations/mem-pi--1dd710d8bf91df2dc06be648.md) | 103 | `result-track:1dd710d8bf91df2dc06be648a02900da42e7d92f5c7953764d960c178753d467` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
