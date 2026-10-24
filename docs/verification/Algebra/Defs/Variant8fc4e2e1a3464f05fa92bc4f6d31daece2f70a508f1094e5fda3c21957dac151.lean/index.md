# Verification target: GRWTSK.Algebra.Defs.Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08afcf9a9fb0db39e66fa6f992582edcdfa249b9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08afcf9a9fb0db39e66fa6f992582edcdfa249b9`.

Source path: `GRWTSK/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Init` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NNRat.castRec](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/nnrat-castrec--4f19b11ac791fbfb7291c7c2.md) | 65 | `declaration-track:4f19b11ac791fbfb7291c7c29537c58db6c8e1703aaab3fb896148f79eeb0393` |
| 2 | `def` | [Rat.castRec](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/rat-castrec--dc0e35a32a1538b36d5de47c.md) | 73 | `declaration-track:dc0e35a32a1538b36d5de47c5b58f8f6e52f9e0f9d4e9413ad9f9d33c30cfa43` |
| 3 | `class` | [DivisionSemiring](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/divisionsemiring--c93c31597a0ca29b0a32141b.md) | 84 | `declaration-track:c93c31597a0ca29b0a32141bd5cfc10727140ec2dfb6d1943a8b8468dfb309b9` |
| 4 | `class` | [DivisionRing](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/divisionring--5ffe3210133e4c3c33adae15.md) | 112 | `declaration-track:5ffe3210133e4c3c33adae156483b087032b42ef83983999201238eec36dc017` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/instance--5559623f47a36257c3ddb91b.md) | 152 | `declaration-track:5559623f47a36257c3ddb91ba1e1a85dd96f1d05469026285b9991723a05e354` |
| 6 | `class` | [Semifield](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/semifield--326280f17ad327c60ee6195f.md) | 164 | `declaration-track:326280f17ad327c60ee6195f9c8ae13f0f4e8afa8908aab3a2db8dae140fc58e` |
| 7 | `class` | [Field](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/field--99adccc4bb1e7b57f9e96fa6.md) | 176 | `declaration-track:99adccc4bb1e7b57f9e96fa624129eb52dd6c19de621064f021be13698ee5df4` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/instance--d7a01f2ccac197a3ae114507.md) | 179 | `declaration-track:d7a01f2ccac197a3ae114507a1c3e1b8304d747712d7db748fb29b6473b1aef7` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/instance--da7ba799edf6906da2ad3249.md) | 184 | `declaration-track:da7ba799edf6906da2ad3249f6dbf5b052317a93a77aac727cfe7c5668cef8a9` |
| 10 | `lemma` | [cast_def](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/cast-def--4d6e7ca1443670dd2937ed41.md) | 186 | `result-track:4d6e7ca1443670dd2937ed41109078875d3132b202ef9adfd381d1116f9155e4` |
| 11 | `lemma` | [smul_def](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/smul-def--b33b8ab40b809ee03bdd8d9d.md) | 187 | `result-track:b33b8ab40b809ee03bdd8d9dc0a93fcfc90921cdf7b9953886c91a05410bdf5c` |
| 12 | `lemma` | [smul_one_eq_cast](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/smul-one-eq-cast--39d7d29ae5c432a182076fe8.md) | 191 | `result-track:39d7d29ae5c432a182076fe86eda746e73bc26a8d82c3d8eb70941668609f3e9` |
| 13 | `lemma` | [cast_def](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/cast-def--93d1962920525c5c46824e7a.md) | 198 | `result-track:93d1962920525c5c46824e7a91826ede93e3f4381e3ecb19a4ed55add1703d52` |
| 14 | `lemma` | [cast_mk'](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/cast-mk--1bef02d841ad7f0f2d29c4f0.md) | 200 | `result-track:1bef02d841ad7f0f2d29c4f083f4e82cad5ace2c5a3fec37e445eedb1168a492` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/instance--fb4fdde1565ad4b0985bf283.md) | 202 | `declaration-track:fb4fdde1565ad4b0985bf283fbc62800b6961b2ae9479fddb967dbeb25f60cb1` |
| 16 | `theorem` | [smul_def](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/smul-def--ef20eb2b6cad08fb63d63905.md) | 205 | `result-track:ef20eb2b6cad08fb63d63905f46da87a901b2524a239b54c038809e452475cc8` |
| 17 | `theorem` | [smul_one_eq_cast](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/smul-one-eq-cast--0c47ea075ac8a563c507a367.md) | 208 | `result-track:0c47ea075ac8a563c507a36724b6de6ccb9a30c31e610229eb4f99da2ac5f9c7` |
| 18 | `theorem` | [Rat.ofScientific_eq_ofScientific](../../../../mathematics/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/declarations/rat-ofscientific-eq-ofscientific--368f020eabf150594e968562.md) | 215 | `result-track:368f020eabf150594e9685626ca7118d57ccec6118518f987d7d1b73139b55c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
