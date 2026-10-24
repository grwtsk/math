# Verification target: GRWTSK.Algebra.GroupTheory.Even.Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5e9c09678dcd236b7848540cf93c5ec83539d49",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5e9c09678dcd236b7848540cf93c5ec83539d49`.

Source path: `GRWTSK/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSquare](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare--2a1822e2878e1c5263aadbbb.md) | 60 | `declaration-track:2a1822e2878e1c5263aadbbb8f72ddc6d3700e55b8a2ffe067cb09ddfea7ee34` |
| 2 | `lemma` | [IsSquare.mul_self](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-mul-self--43f4d4d98e47fbd0bc143ca8.md) | 62 | `result-track:43f4d4d98e47fbd0bc143ca8dd75bfcb36d02d85f3cd4a22cb793f386a52d05a` |
| 3 | `lemma` | [isSquare_op_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-op-iff--384ab35d33b471236bd7ca37.md) | 65 | `result-track:384ab35d33b471236bd7ca37463a7e77a481c24fdb1fc3d0d90e8664733f09eb` |
| 4 | `lemma` | [isSquare_unop_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-unop-iff--240070778bd93956fe592a39.md) | 69 | `result-track:240070778bd93956fe592a39604b2dc44baf0aaf03e9cb6c5d3a1f58a82664c6` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/instance--1aabb43ef36dc90542ce8b69.md) | 72 | `declaration-track:1aabb43ef36dc90542ce8b692f61753f2b622cb67d5eb29c70c5713ed166f0df` |
| 6 | `lemma` | [even_ofMul_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/even-ofmul-iff--0bcf2eb0aea0987d5bc39423.md) | 76 | `result-track:0bcf2eb0aea0987d5bc39423c754d0d103f8e25fb3a2deb4d782c4e9b839972a` |
| 7 | `lemma` | [isSquare_toMul_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-tomul-iff--17d2c75841dcf6f8b84be3d5.md) | 79 | `result-track:17d2c75841dcf6f8b84be3d5544e53604170705caa59000f4c0ca2f5da09e4db` |
| 8 | `instance` | [Additive.instDecidablePredEven](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/additive-instdecidablepredeven--4b1f03e6f8c67c1cde6e1da6.md) | 81 | `declaration-track:4b1f03e6f8c67c1cde6e1da6e426649ad5993df03afa8310ead7d3562e422fb9` |
| 9 | `lemma` | [isSquare_ofAdd_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-ofadd-iff--59fe1a0930772a1fbcca1beb.md) | 90 | `result-track:59fe1a0930772a1fbcca1beb0caad2ab40d8a1b52a28cc03b53669e155a86108` |
| 10 | `lemma` | [even_toAdd_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/even-toadd-iff--5b3b34b25e4a18aad64de598.md) | 93 | `result-track:5b3b34b25e4a18aad64de598ac5b0b9c81c21818a0b49021508b14d0a3212315` |
| 11 | `instance` | [Multiplicative.instDecidablePredIsSquare](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/multiplicative-instdecidablepredissquare--a304ffe0682e2c910bb8fbb6.md) | 95 | `declaration-track:a304ffe0682e2c910bb8fbb60ca9a36c933c4ce9d4cdc325ee69e11e91a94c87` |
| 12 | `lemma` | [IsSquare.one](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-one--db5c6fac261ebe515fc0a9a0.md) | 102 | `result-track:db5c6fac261ebe515fc0a9a0d1b02062a29669f519c203136286cfaac124866e` |
| 13 | `lemma` | [IsSquare.map](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-map--c4e8b7dc58614ccc5c5884ea.md) | 111 | `result-track:c4e8b7dc58614ccc5c5884eaff30c0f714ab2b66c524bdaf83d630f71c879cb7` |
| 14 | `lemma` | [isSquare_iff_exists_sq](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-iff-exists-sq--cc9013b30827e08fc7e33438.md) | 120 | `result-track:cc9013b30827e08fc7e334389b1464d52ad8ca4abc3cb054d0494394d3890914` |
| 15 | `lemma` | [IsSquare.sq](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-sq--fafc6ffc4c3e27c260477eba.md) | 128 | `result-track:fafc6ffc4c3e27c260477eba9247146a6da1d692d75f5b3ca7cfa717e15a9254` |
| 16 | `lemma` | [IsSquare.pow](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-pow--2074dbbdc8c2c890e1c9604a.md) | 133 | `result-track:2074dbbdc8c2c890e1c9604ac8d9031171193c24caa6e8621476cc6da3e376eb` |
| 17 | `lemma` | [Even.isSquare_pow](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/even-issquare-pow--4362643583c3e97986be5e33.md) | 139 | `result-track:4362643583c3e97986be5e33d40797ab7a39855785e6f548bca1ff707863ccea` |
| 18 | `lemma` | [IsSquare.mul](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-mul--5efce3a46619bea9d6f7dd41.md) | 147 | `result-track:5efce3a46619bea9d6f7dd41e43a42648e37a71ad3b54ef41dc58123ea301e93` |
| 19 | `lemma` | [isSquare_inv](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-inv--89b65e22989ad595292224f3.md) | 153 | `result-track:89b65e22989ad595292224f383a25d60dd364b01346eddf137fde4da2a2ebf70` |
| 20 | `lemma` | [IsSquare.zpow](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-zpow--bb77ae5b0f8731ef0c9ec3c1.md) | 158 | `result-track:bb77ae5b0f8731ef0c9ec3c1b65ad0ce094831cb9a7fc2c874718f601248e84d` |
| 21 | `lemma` | [IsSquare.div](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/issquare-div--cb400debfc6f4c72e1da1bc4.md) | 164 | `result-track:cb400debfc6f4c72e1da1bc43a1914484c81d5cbbc37b73c5ed72e7f8f5cc7d1` |
| 22 | `lemma` | [Even.isSquare_zpow](../../../../../mathematics/Algebra/GroupTheory/Even/Variant3ae9b91d74b7a8e9aeefe43e2ba8b64708ebda6616bc10b72d8f78ba126b18e9.lean/declarations/even-issquare-zpow--cec54938590ff7adf817790a.md) | 168 | `result-track:cec54938590ff7adf817790ad8b92ae6753970b42b08cec63b2b0d660033d3bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
