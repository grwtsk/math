# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Monotone.Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d956237521570e6f8ce9e782e22f87a8b525718",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d956237521570e6f8ce9e782e22f87a8b525718`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BoundedOrder.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [StrictMono.apply_eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/strictmono-apply-eq-top-iff--e0cba9a09abb24121879db1f.md) | 28 | `result-track:e0cba9a09abb24121879db1f02f2ebdd04dd932213b5a8b059fa4f0d8d83dc4a` |
| 2 | `theorem` | [StrictAnti.apply_eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/strictanti-apply-eq-top-iff--993ed12031219ca072fed6d7.md) | 31 | `result-track:993ed12031219ca072fed6d77bab0986147d1899cca4e16c4f159ddcd666ef9c` |
| 3 | `theorem` | [StrictMono.maximal_preimage_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/strictmono-maximal-preimage-top--28771bde9b719bfb84a4479b.md) | 36 | `result-track:28771bde9b719bfb84a4479bde57b009b6936a814c3c447015b7df22495f54de` |
| 4 | `theorem` | [StrictMono.apply_eq_bot_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/strictmono-apply-eq-bot-iff--05f27676a5a1ec1ae27c1871.md) | 48 | `result-track:05f27676a5a1ec1ae27c1871db7059181980fced7725d7ba2e433a22524e3f4e` |
| 5 | `theorem` | [StrictAnti.apply_eq_bot_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/strictanti-apply-eq-bot-iff--42b11b2a8e6ac5636986a5c7.md) | 51 | `result-track:42b11b2a8e6ac5636986a5c754c5fee4acc34cabd0311258c9ce27b4c72f81bd` |
| 6 | `theorem` | [StrictMono.minimal_preimage_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/strictmono-minimal-preimage-bot--a30cb405f6c2e66fe9108318.md) | 56 | `result-track:a30cb405f6c2e66fe910831808bc4bbb17d2292ad91647e2281e2c6b14b6b12c` |
| 7 | `theorem` | [monotone_and](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/monotone-and--dca978959f0e24d4fbaa7bcf.md) | 75 | `result-track:dca978959f0e24d4fbaa7bcf0d07b08d7118ba1951557c904f82dd3fa54fc333` |
| 8 | `theorem` | [monotone_or](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/monotone-or--15fbfdc05899c3e2cf3d558d.md) | 80 | `result-track:15fbfdc05899c3e2cf3d558d9ded7ba205bc5694844f085a6cc6bd910bb71d94` |
| 9 | `theorem` | [monotone_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/monotone-le--575a4a80d39f77635af98f5c.md) | 84 | `result-track:575a4a80d39f77635af98f5c9b22f7d07b32e76b689e9f5661247d8f0978a9cc` |
| 10 | `theorem` | [monotone_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/monotone-lt--d88ea3cb03a8a27125ec3bba.md) | 86 | `result-track:d88ea3cb03a8a27125ec3bba207f2435783accd5bdf1d168183cc3c2e45b8e40` |
| 11 | `theorem` | [antitone_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/antitone-le--7e28577adbae62ea90b5862f.md) | 88 | `result-track:7e28577adbae62ea90b5862fc4d8b450874f79cb91b50824133f6143e1b05363` |
| 12 | `theorem` | [antitone_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/antitone-lt--019be6876eaba37d98841485.md) | 90 | `result-track:019be6876eaba37d98841485fe67d97beedd416dbb27acd7c7e82466567dacee` |
| 13 | `theorem` | [Monotone.forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/monotone-forall--f3e63705a53239a18b9b5ba6.md) | 92 | `result-track:f3e63705a53239a18b9b5ba682742b9de867715d11886a7b35d734dd5a213c85` |
| 14 | `theorem` | [Antitone.forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/antitone-forall--074336ee4f85bf715fd158cf.md) | 96 | `result-track:074336ee4f85bf715fd158cf8f5455cd6754cc21ca440848d21dc12e44054f6e` |
| 15 | `theorem` | [Monotone.ball](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/monotone-ball--57820b99bea68723ec011483.md) | 100 | `result-track:57820b99bea68723ec01148310e6dd66ed8d4cc70bb07abbc2c74f757c831801` |
| 16 | `theorem` | [Antitone.ball](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/antitone-ball--a210bcb893e0575ff0db3bd7.md) | 103 | `result-track:a210bcb893e0575ff0db3bd795079c68ef3e5649f6f78f510b24b99ed73b8e7e` |
| 17 | `theorem` | [Monotone.exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/monotone-exists--722ece23f16f9d9e1a7c0b7c.md) | 106 | `result-track:722ece23f16f9d9e1a7c0b7c2d635f1283de8d7de5f8ceb61a16a00c12d5d2ec` |
| 18 | `theorem` | [Antitone.exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/antitone-exists--8dbda1a666eb98ad3b74ab1c.md) | 110 | `result-track:8dbda1a666eb98ad3b74ab1c7d523beeddd7b5e0cae01005cf6db016e8c7c4af` |
| 19 | `theorem` | [forall_ge_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/forall-ge-iff--9435a7603b3769514d971ed5.md) | 114 | `result-track:9435a7603b3769514d971ed5790bb60978ffa680023ea5fa200a6af37821573b` |
| 20 | `theorem` | [forall_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant8f7432a20b2017337d3e100b85666368f481e9ef8c2538a11693f57809135a77.lean/declarations/forall-le-iff--082f59ddd5ef0dbe8dd7b576.md) | 118 | `result-track:082f59ddd5ef0dbe8dd7b576c10604e6ce3aac90eb67240ada02a650399fa116` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
