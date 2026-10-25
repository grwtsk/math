# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.GoldenRatio.Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "326efb49cfcc1c51d0c7d38e77977a599220dcad",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `326efb49cfcc1c51d0c7d38e77977a599220dcad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.LinearRecurrence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Fib.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.NatFib` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [goldenRatio](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/goldenratio--8ca106b39b1c645cc3f6a9ac.md) | 39 | `declaration-track:8ca106b39b1c645cc3f6a9ac3f2054bf7f2438bb1a238f7393115d61c3108c23` |
| 2 | `abbrev` | [goldenConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/goldenconj--ca3c6be753c3c3257f24c098.md) | 42 | `declaration-track:ca3c6be753c3c3257f24c0984eecab619b2ff3f1a783da96ae7d7978a61a4d22` |
| 3 | `theorem` | [inv_gold](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/inv-gold--6d88b361ba1505aa9e4352d4.md) | 49 | `result-track:6d88b361ba1505aa9e4352d4f7c3a93385624a03d92b87092494f38790c67e9e` |
| 4 | `theorem` | [inv_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/inv-goldconj--c0a9bbdbfe056d3fe07d27df.md) | 55 | `result-track:c0a9bbdbfe056d3fe07d27df21bb639d159349edf1705cea73691ab9ec3d778e` |
| 5 | `theorem` | [gold_mul_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/gold-mul-goldconj--5573193351fc8df904d2d98a.md) | 60 | `result-track:5573193351fc8df904d2d98a4cc62a0d9bed44e3f4c16acf71b3ffd926095338` |
| 6 | `theorem` | [goldConj_mul_gold](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/goldconj-mul-gold--873ee59c6753ba427552774b.md) | 66 | `result-track:873ee59c6753ba427552774b52ffc76845660e457407234fc1e75d1ac62ed826` |
| 7 | `theorem` | [gold_add_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/gold-add-goldconj--a45c2f819260f0ff1eaf1f9f.md) | 71 | `result-track:a45c2f819260f0ff1eaf1f9fbbae494ff996a1b39b20625806887012d441324d` |
| 8 | `theorem` | [one_sub_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/one-sub-goldconj--fbcae0e52fae729c632a46fb.md) | 75 | `result-track:fbcae0e52fae729c632a46fbb3d0199a1f62695f387b6039d5b8e98c2500da8c` |
| 9 | `theorem` | [one_sub_gold](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/one-sub-gold--aaf2162799182e15af0956f7.md) | 78 | `result-track:aaf2162799182e15af0956f76e30af9d991b2f7db9e1e0396821a6461d53655a` |
| 10 | `theorem` | [gold_sub_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/gold-sub-goldconj--3d942d7cbf4ff4d9d5c1929e.md) | 82 | `result-track:3d942d7cbf4ff4d9d5c1929e00a6990c38fdc8e121bfddafe79c853121ae80b9` |
| 11 | `theorem` | [gold_pow_sub_gold_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/gold-pow-sub-gold-pow--7d39ebb52271c51028d99ed0.md) | 84 | `result-track:7d39ebb52271c51028d99ed0c067ecda5c6a8202ca29b8ae8dbab14731aca103` |
| 12 | `theorem` | [gold_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/gold-sq--44c46ea8dfece3e362d9fc00.md) | 88 | `result-track:44c46ea8dfece3e362d9fc00b7a555f4856c472c7a99d0cc8430d1cb6c30ef11` |
| 13 | `theorem` | [goldConj_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/goldconj-sq--abee7caacf653e5e3e4d5d46.md) | 94 | `result-track:abee7caacf653e5e3e4d5d46fcc00c5bc68421d5a5c97ac9c28166d579c68602` |
| 14 | `theorem` | [gold_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/gold-pos--7f9d9cde7ab604df9f1eb661.md) | 99 | `result-track:7f9d9cde7ab604df9f1eb661d198a105d8b682bc3fff99cc589802b1273b8d95` |
| 15 | `theorem` | [gold_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/gold-ne-zero--165f7eeb73e2012b767bbc38.md) | 102 | `result-track:165f7eeb73e2012b767bbc38ce88034befb33932a79deaf4803f78a3f48322d6` |
| 16 | `theorem` | [one_lt_gold](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/one-lt-gold--19dd122e7c9b542079a4b63c.md) | 105 | `result-track:19dd122e7c9b542079a4b63c649b36f4b9cc2debbdd046d41215a35ac4b570a9` |
| 17 | `theorem` | [gold_lt_two](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/gold-lt-two--967eea710c02b82c9460e25a.md) | 109 | `result-track:967eea710c02b82c9460e25af898303b6914a8f8735acc323152c1790d91799d` |
| 18 | `theorem` | [goldConj_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/goldconj-neg--6a4cad782d7f5da4c5f2b7e6.md) | 113 | `result-track:6a4cad782d7f5da4c5f2b7e652299a46da312451502226dd19e325436eb44e1d` |
| 19 | `theorem` | [goldConj_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/goldconj-ne-zero--2de78d5610a6d1c14f1efb1b.md) | 116 | `result-track:2de78d5610a6d1c14f1efb1bf5113c8aeedd6c7e48aa623d1abf6ab3fc94db47` |
| 20 | `theorem` | [neg_one_lt_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/neg-one-lt-goldconj--f0bd5fcc86680773cb45e730.md) | 119 | `result-track:f0bd5fcc86680773cb45e7302747d977d5bb1595c8d94d7521eea067f95e7993` |
| 21 | `theorem` | [gold_irrational](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/gold-irrational--af7c75849efd117dd648629d.md) | 129 | `result-track:af7c75849efd117dd648629d0a46e6fd61a5ac35964ff837c51ec1da5c81e4b4` |
| 22 | `theorem` | [goldConj_irrational](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/goldconj-irrational--4b84aa20208dc01a6d56d2ea.md) | 137 | `result-track:4b84aa20208dc01a6d56d2ea817a90b9a0655aff6ead5a1d3fed21210cf24715` |
| 23 | `def` | [fibRec](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/fibrec--cb5922f686c542fd52b0fb51.md) | 153 | `declaration-track:cb5922f686c542fd52b0fb51e7e0fe791335a8ea511ea39f48f9657e58d6965b` |
| 24 | `theorem` | [fibRec_charPoly_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/fibrec-charpoly-eq--7636dd8e6921cb347368cf54.md) | 162 | `result-track:7636dd8e6921cb347368cf5421e7dd10344a51e056b3267e02ccc15502d336c8` |
| 25 | `theorem` | [fib_isSol_fibRec](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/fib-issol-fibrec--1d0609b8e775bfee1472cf21.md) | 170 | `result-track:1d0609b8e775bfee1472cf2187166ef366c9ef97639755d8fbf8c351f3eb507b` |
| 26 | `theorem` | [geom_gold_isSol_fibRec](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/geom-gold-issol-fibrec--4d2b43f1963159353f37ee5f.md) | 178 | `result-track:4d2b43f1963159353f37ee5f6d7f9a5a9f194051f41ac0f1fa62a477503c63fb` |
| 27 | `theorem` | [geom_goldConj_isSol_fibRec](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/geom-goldconj-issol-fibrec--d064c331a54fe8a49e88b322.md) | 183 | `result-track:d064c331a54fe8a49e88b322cf13919802bd8969ca9c3dd36ed7141f5ed1bc4d` |
| 28 | `theorem` | [Real.coe_fib_eq'](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/real-coe-fib-eq--3a914cf61495a0fc719e034c.md) | 190 | `result-track:3a914cf61495a0fc719e034c73f3c5ef879aa6de9a1cbd6431c3a0143a83bbd1` |
| 29 | `theorem` | [Real.coe_fib_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/real-coe-fib-eq--2badb76cc298aa34e983dbc4.md) | 211 | `result-track:2badb76cc298aa34e983dbc4a45f6f7b2dd4308b2afd28ebb33f43200d0d3f0f` |
| 30 | `theorem` | [fib_golden_conj_exp](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/fib-golden-conj-exp--83b8c33efd8c2d08a9e5d355.md) | 215 | `result-track:83b8c33efd8c2d08a9e5d355ac1dcc78158015bc87a6702def1ec0a97b101ea1` |
| 31 | `theorem` | [fib_golden_exp'](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantf255936607c95465eba7ffa227968d6b1f3375c0b0f039ee871584b2542dd648.lean/declarations/fib-golden-exp--4f013851124fe029bb3e00f4.md) | 223 | `result-track:4f013851124fe029bb3e00f4a7e226bf6866e20f41b7495927f2968aa52ef7ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
