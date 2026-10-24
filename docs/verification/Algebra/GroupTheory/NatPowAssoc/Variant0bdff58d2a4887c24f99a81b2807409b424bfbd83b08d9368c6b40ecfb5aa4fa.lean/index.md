# Verification target: GRWTSK.Algebra.GroupTheory.NatPowAssoc.Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b33d398ce45d16a04b9ddacb822adcc016c18a43",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b33d398ce45d16a04b9ddacb822adcc016c18a43`.

Source path: `GRWTSK/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Int.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NatPowAssoc](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/natpowassoc--4605c11467f04506740d8b8a.md) | 50 | `declaration-track:4605c11467f04506740d8b8a677e8a6044dbd17ac41f9239cc3811d74a40347c` |
| 2 | `theorem` | [npow_add](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/npow-add--00f58af544226315b5d1621c.md) | 62 | `result-track:00f58af544226315b5d1621ceb31f18a979281b98b186f9484d0d76788be9b5b` |
| 3 | `theorem` | [npow_zero](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/npow-zero--484efa39a0fbed428c550472.md) | 66 | `result-track:484efa39a0fbed428c550472d1d85bbe6bbe9ebf59497a8e7de32fddf1841d8a` |
| 4 | `theorem` | [npow_one](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/npow-one--906faafba326341c9bf86e34.md) | 70 | `result-track:906faafba326341c9bf86e345785d313acca1bb24486d2df98f27161da919648` |
| 5 | `theorem` | [npow_mul_assoc](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/npow-mul-assoc--1de92abef4c15e721c4d7ce7.md) | 73 | `result-track:1de92abef4c15e721c4d7ce7be0ff3c75ac6c43c50c890a761758f5b18268d3b` |
| 6 | `theorem` | [npow_mul_comm](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/npow-mul-comm--c3dd563a1fb2e52d6b9ddefc.md) | 77 | `result-track:c3dd563a1fb2e52d6b9ddefcfe9ce86472d0ab7c6b0f7cac1d43b8c87042987c` |
| 7 | `theorem` | [npow_mul](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/npow-mul--cb52744dff4dcc871cb8431b.md) | 80 | `result-track:cb52744dff4dcc871cb8431bab802205bde6bd7c1b55196b59a528bce8dedd77` |
| 8 | `theorem` | [npow_mul'](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/npow-mul--4c5e52eb12c55f4fcee994e5.md) | 85 | `result-track:4c5e52eb12c55f4fcee994e59f892f3783d015067f9acda9f613ade44a7c0ac4` |
| 9 | `theorem` | [neg_npow_assoc](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/neg-npow-assoc--1de7b48b7ecfad1bd14b590b.md) | 93 | `result-track:1de7b48b7ecfad1bd14b590b4fa57e7ce303b994a8ef335248eb1401bb653db2` |
| 10 | `instance` | [Pi.instNatPowAssoc](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/pi-instnatpowassoc--557f4dcfc0ee44a21088fa76.md) | 103 | `declaration-track:557f4dcfc0ee44a21088fa766e8c2ba431e1d480caf405b75fe638b76db58af4` |
| 11 | `instance` | [Prod.instNatPowAssoc](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/prod-instnatpowassoc--6f7f0d8d2ae24c067f6b17ba.md) | 109 | `declaration-track:6f7f0d8d2ae24c067f6b17bad7a7bae9eda776a00fc5d40e8b4262de6289b7ce` |
| 12 | `instance` | [Monoid.PowAssoc](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/monoid-powassoc--fd26cc4498d6dce23a1c1158.md) | 119 | `declaration-track:fd26cc4498d6dce23a1c1158b16c96a2e022bcb3bd49ff43ca46b59320a5c34e` |
| 13 | `theorem` | [Nat.cast_npow](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/nat-cast-npow--b3c696ea0a5cb84cd9b9af3b.md) | 125 | `result-track:b3c696ea0a5cb84cd9b9af3bec2d914af6ee61416dee77e8c9e1c6b2e070ca85` |
| 14 | `theorem` | [Int.cast_npow](../../../../../mathematics/Algebra/GroupTheory/NatPowAssoc/Variant0bdff58d2a4887c24f99a81b2807409b424bfbd83b08d9368c6b40ecfb5aa4fa.lean/declarations/int-cast-npow--f62e74b661fda82e1ee9377f.md) | 132 | `result-track:f62e74b661fda82e1ee9377f98ff940f071cc2b4248e680c13f892f4ae23a3f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
