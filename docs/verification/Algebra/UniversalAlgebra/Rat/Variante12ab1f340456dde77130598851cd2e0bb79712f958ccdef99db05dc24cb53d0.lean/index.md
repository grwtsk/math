# Verification target: GRWTSK.Algebra.UniversalAlgebra.Rat.Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c647672047ede92ef0df4df00fb808688d2d0ce4",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c647672047ede92ef0df4df00fb808688d2d0ce4`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Rat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [divInt_nonneg_iff_of_pos_right](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/divint-nonneg-iff-of-pos-right--61c20777c974c3a019e55cb6.md) | 38 | `result-track:61c20777c974c3a019e55cb642708a08a6526291eb6c356af3d7d51c0b200bd0` |
| 2 | `lemma` | [divInt_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/divint-nonneg--7fd2e0ad7c680c84328554f5.md) | 44 | `result-track:7fd2e0ad7c680c84328554f51595b32ebbfa12204a1a16320f5bcd89585803da` |
| 3 | `lemma` | [mkRat_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/mkrat-nonneg--0c5285d526f9ce8745050e0e.md) | 50 | `result-track:0c5285d526f9ce8745050e0e44d86410f49e8501749902f87fc1c7d80f51c7fa` |
| 4 | `theorem` | [ofScientific_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/ofscientific-nonneg--bb264d7b3d655f8718514225.md) | 53 | `result-track:bb264d7b3d655f87185142251f10a317db098063927666a4037152c321b989b8` |
| 5 | `instance` | [_root_.GRWTSK.Algebra.UniversalAlgebra.OfScientificNonneg.Variant022dd405ea6354fff17638df88df5516e756078bed8407a24d3c8e532834b9c7.NNRatCast.toOfScientific](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/root-grwtsk-algebra-universalalgebra-ofscientificnonneg-variant022dd405e--a0de812b8da7e8deb0f28c0e.md) | 64 | `declaration-track:a0de812b8da7e8deb0f28c0ed120126ab1d4c98ecc8e6593794ca9da64d464e1` |
| 6 | `theorem` | [_root_.GRWTSK.Algebra.UniversalAlgebra.OfScientificNonneg.Variant022dd405ea6354fff17638df88df5516e756078bed8407a24d3c8e532834b9c7.NNRat.cast_ofScientific](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/root-grwtsk-algebra-universalalgebra-ofscientificnonneg-variant022dd405e--b9dd7284ddce52483ce298be.md) | 70 | `result-track:b9dd7284ddce52483ce298bea5a068f342c37c35c33b9e25db7c257c5fc17093` |
| 7 | `lemma` | [add_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/add-nonneg--a5caa6ffc5eac83b3e87a2c6.md) | 74 | `result-track:a5caa6ffc5eac83b3e87a2c6f98e7212a08c7b4183f2a1035d9fe8051140e2ac` |
| 8 | `lemma` | [mul_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/mul-nonneg--ea3d076dd2cac26a77e276c3.md) | 83 | `result-track:ea3d076dd2cac26a77e276c36d6a92060230557438250d1a08dd1c8c08756437` |
| 9 | `theorem` | [not_le](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/not-le--a65f9a4c27b3b8fb9a3ea2b4.md) | 92 | `result-track:a65f9a4c27b3b8fb9a3ea2b4368b1b8903d43fcdc943e05c8f3979e2ee659ea8` |
| 10 | `theorem` | [not_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/not-lt--1d3f5acd858d38683fc90e21.md) | 94 | `result-track:1d3f5acd858d38683fc90e21c7ab470ce36edab31f0a7095fd8a19bf62879d1b` |
| 11 | `theorem` | [lt_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/lt-iff--09b52167f4893b7635d02070.md) | 97 | `result-track:09b52167f4893b7635d020709ce0c1b0888581c326c17411f05cfaf1a25c5fb5` |
| 12 | `theorem` | [le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/le-iff--07ca554290afad8656404cb0.md) | 118 | `result-track:07ca554290afad8656404cb06606d2bd1edf3ea81947ef0bde1e7abbb5674286` |
| 13 | `theorem` | [le_iff_sub_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/le-iff-sub-nonneg--eb5d81a14471ca6ca525ccd4.md) | 121 | `result-track:eb5d81a14471ca6ca525ccd4220e3b9c45894c5db0f4d640660257e26b246827` |
| 14 | `lemma` | [divInt_le_divInt](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/divint-le-divint--51da567c6ea08874da0c3c3e.md) | 132 | `result-track:51da567c6ea08874da0c3c3e4c89523a88e62ca42fb75f8bf7aa0ef91e4266bb` |
| 15 | `lemma` | [le_total](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/le-total--a1d8b9ef238e775960cccca9.md) | 137 | `result-track:a1d8b9ef238e775960cccca9cde107b9d11408ae48ad5cb19d21c87f7ddda8ae` |
| 16 | `instance` | [linearOrder](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/linearorder--a9f02ed8d3abff5481b67661.md) | 140 | `declaration-track:a9f02ed8d3abff5481b676618a4cd66c233384dc225a14cd07f4b932452580bd` |
| 17 | `instance` | [instDistribLattice](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/instdistriblattice--c838f68b66735ff27a4b915b.md) | 167 | `declaration-track:c838f68b66735ff27a4b915b2615f7cd81decaa6f1ad1cc6cc46d284eaf2bf3b` |
| 18 | `instance` | [instLattice](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/instlattice--969fbae2d9a8243d5130308e.md) | 168 | `declaration-track:969fbae2d9a8243d5130308ef92ba9bacbb558d326dbb302902d63cb288a1e61` |
| 19 | `instance` | [instSemilatticeInf](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/instsemilatticeinf--ab457bd3292caa7a2d9b075d.md) | 169 | `declaration-track:ab457bd3292caa7a2d9b075d4a1d5ed95342a1e064b55f231e32b040c07f20e8` |
| 20 | `instance` | [instSemilatticeSup](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/instsemilatticesup--76b751feffffd6b9f76feb9a.md) | 170 | `declaration-track:76b751feffffd6b9f76feb9a87014d162e0d5e14a43d0430a2bdd66c223fa113` |
| 21 | `instance` | [instInf](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/instinf--2ce32add9270df0ced709b64.md) | 171 | `declaration-track:2ce32add9270df0ced709b64426a2c8877a02d87112b8a5885c05782af2576e0` |
| 22 | `instance` | [instSup](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/instsup--dcadccf50d0facdb8f71f2a9.md) | 172 | `declaration-track:dcadccf50d0facdb8f71f2a9169f5ba65e7c85d6a416f8a2f740f34bd9e21d53` |
| 23 | `instance` | [instPartialOrder](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/instpartialorder--e146fbf4e2fa9fd40e7cbbb8.md) | 173 | `declaration-track:e146fbf4e2fa9fd40e7cbbb8eec451651ec004c8f33bd10f0e15d71ff85a127e` |
| 24 | `instance` | [instPreorder](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/instpreorder--4de081e452cc782f478ab475.md) | 174 | `declaration-track:4de081e452cc782f478ab47504d8623c70db9676f55211315dd8f317c1c43b4c` |
| 25 | `lemma` | [le_def](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/le-def--4650d35faa9b0316d504ecc4.md) | 178 | `result-track:4650d35faa9b0316d504ecc4dc5883f1319ab718d052b744bdaf87e7e6c781ff` |
| 26 | `lemma` | [lt_def](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/lt-def--2e68629017e8835220c9b807.md) | 183 | `result-track:2e68629017e8835220c9b807e01e6309861a0cc388926f81b4fa6229ea295169` |
| 27 | `theorem` | [add_le_add_left](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/add-le-add-left--fa44cb36e3b4be07880702a9.md) | 192 | `result-track:fa44cb36e3b4be07880702a947a6e4466dce13efbc6982c9a1bd67f8174db30d` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/instance--923a03e4b54d5726f0a1406e.md) | 195 | `declaration-track:923a03e4b54d5726f0a1406e9e7cbd83c76349428c187c2310de461832fd1eef` |
| 29 | `lemma` | [num_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/num-nonpos--605540bc3685cfe1e3bfc348.md) | 198 | `result-track:605540bc3685cfe1e3bfc348ba6684c4ca56f4703630f72ce35a8a30490d449b` |
| 30 | `lemma` | [num_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/num-pos--bbf6519a9d5707191a8bfa06.md) | 200 | `result-track:bbf6519a9d5707191a8bfa06a2cc0a7e1711c5ecfdcf004e5de2bade9a68cac9` |
| 31 | `lemma` | [num_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/num-neg--5e7d127b3eaa6aa69052db5c.md) | 201 | `result-track:5e7d127b3eaa6aa69052db5c6316206311f460d119edf13c33c6643de41ca344` |
| 32 | `theorem` | [div_lt_div_iff_mul_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/div-lt-div-iff-mul-lt-mul--74583220b9980feb9086b7ec.md) | 203 | `result-track:74583220b9980feb9086b7ecf046300a3b9e255d0d5dcbcf95726b29c820942a` |
| 33 | `theorem` | [lt_one_iff_num_lt_denom](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/lt-one-iff-num-lt-denom--468062405379f49d38921066.md) | 211 | `result-track:468062405379f49d38921066b7e71cc7c8208288aed4de94838e747b3dd38d56` |
| 34 | `theorem` | [abs_def](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/declarations/abs-def--3bbd42b05cbd45de6f8ecd38.md) | 213 | `result-track:3bbd42b05cbd45de6f8ecd38462caa06a93b653c97dd84611101456027b8d680` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
