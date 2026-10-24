# Verification target: GRWTSK.Algebra.GroupTheory.InvSubmonoid.Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec04c3081187c1b70acbeeec8e8309978cc671e2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec04c3081187c1b70acbeeec8e8309978cc671e2`.

Source path: `GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/invsubmonoid--9b31c18a9e869ce5914064e2.md) | 50 | `declaration-track:9b31c18a9e869ce5914064e2d58dc0dd94eecc8265c778ccb40ba67e6a19bb50` |
| 2 | `theorem` | [submonoid_map_le_is_unit](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/submonoid-map-le-is-unit--9c13c817136d72a86bb85be1.md) | 55 | `result-track:9c13c817136d72a86bb85be1c8ff174bfc78ed94d865013f21b5cb4c158ba3a1` |
| 3 | `abbrev` | [equivInvSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/equivinvsubmonoid--901feb8a1c47ab5242619a1b.md) | 60 | `declaration-track:901feb8a1c47ab5242619a1b5ffd6b1156e4c167190babe321604ea29b331b52` |
| 4 | `def` | [toInvSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/toinvsubmonoid--74b6ec3f4bd82950fccd3322.md) | 64 | `declaration-track:74b6ec3f4bd82950fccd33226a7f5da7d16b9de9c24ecca93699bcfc984c7cfc` |
| 5 | `theorem` | [toInvSubmonoid_surjective](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/toinvsubmonoid-surjective--25f0a1d48a8b1da1c694249f.md) | 67 | `result-track:25f0a1d48a8b1da1c694249f4ea1f407ce03dba210f47e6fc28aea97ae55f244` |
| 6 | `theorem` | [toInvSubmonoid_mul](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/toinvsubmonoid-mul--f4dbc4bee1f6f73d57a9d455.md) | 72 | `result-track:f4dbc4bee1f6f73d57a9d455b10afcd3ac162a91609b5427f6af990867bbf2d5` |
| 7 | `theorem` | [mul_toInvSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/mul-toinvsubmonoid--5901a36ca1f93ac2ee511937.md) | 76 | `result-track:5901a36ca1f93ac2ee511937a1b687a165f0af4346e438883becfc2967cdd975` |
| 8 | `theorem` | [smul_toInvSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/smul-toinvsubmonoid--3b4254e6c04b88cc53e1bde2.md) | 80 | `result-track:3b4254e6c04b88cc53e1bde27ba07cf5207f6f1a21c892ca9ce00c447b287ff3` |
| 9 | `theorem` | [surj'](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/surj--2475c8ceabcfaba889946524.md) | 88 | `result-track:2475c8ceabcfaba88994652475bb11a41dffd57a5ef6d3e28f6bf864573a6498` |
| 10 | `theorem` | [toInvSubmonoid_eq_mk'](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/toinvsubmonoid-eq-mk--1ce2d04ae574f7be845a4ca3.md) | 97 | `result-track:1ce2d04ae574f7be845a4ca31c93de2613e9109fa4b8c8a5057a3836d4537c8b` |
| 11 | `theorem` | [mem_invSubmonoid_iff_exists_mk'](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/mem-invsubmonoid-iff-exists-mk--86a1430407468a6259605b43.md) | 101 | `result-track:86a1430407468a6259605b43e5839d93678e9475b7e33c3bdd5abb7bce96490c` |
| 12 | `theorem` | [span_invSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/span-invsubmonoid--bd2dee51cff1ded5ee518fa0.md) | 109 | `result-track:bd2dee51cff1ded5ee518fa0c226f3e7f8bdb87075ee8bd57562e09affff1f0d` |
| 13 | `theorem` | [finiteType_of_monoid_fg](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/finitetype-of-monoid-fg--baa6b9b7dca6f01b544ff566.md) | 115 | `result-track:baa6b9b7dca6f01b544ff566802655886b28b520609f0c9e7b79e96828c15aaf` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variant75cf9b84a3ba5deaf7071508d6cd37be0468f600486b8eca6882ecd236b9c251.lean/declarations/instance--466ad3e5c5092571f4861bdf.md) | 126 | `declaration-track:466ad3e5c5092571f4861bdf501aa928248f52ecb73265f3a047723576d55fd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
