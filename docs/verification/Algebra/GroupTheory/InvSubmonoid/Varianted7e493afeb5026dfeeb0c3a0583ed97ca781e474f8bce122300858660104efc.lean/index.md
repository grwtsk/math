# Verification target: GRWTSK.Algebra.GroupTheory.InvSubmonoid.Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "416970afe79637a73b02c120178a89d76f7dcd7f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `416970afe79637a73b02c120178a89d76f7dcd7f`.

Source path: `GRWTSK/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Submonoid.Inverses` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/declarations/invsubmonoid--c443dd54cfb1b48509b08cc4.md) | 46 | `declaration-track:c443dd54cfb1b48509b08cc4f77b65365315ed78cc893db14930a65a5a70b79e` |
| 2 | `theorem` | [submonoid_map_le_is_unit](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/declarations/submonoid-map-le-is-unit--199675bb9810d5a67ae26089.md) | 51 | `result-track:199675bb9810d5a67ae26089a5553ae1c3ca70644de5dcca8bd94b4ebe220c89` |
| 3 | `abbrev` | [equivInvSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/declarations/equivinvsubmonoid--4c12ca07c848ba894c4d88b8.md) | 56 | `declaration-track:4c12ca07c848ba894c4d88b8e7b3660eb0c1f7893cebce3bad02ba1a3709fbc2` |
| 4 | `def` | [toInvSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/declarations/toinvsubmonoid--68a7957061baceee92f35890.md) | 60 | `declaration-track:68a7957061baceee92f358905faa1d625dfce76d6cfc6cfe826d07973522493d` |
| 5 | `theorem` | [toInvSubmonoid_surjective](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/declarations/toinvsubmonoid-surjective--6d0375347e6e5dc4e957a540.md) | 63 | `result-track:6d0375347e6e5dc4e957a5407305be68a55b64a004b9603e72d2262a5ddb0a2b` |
| 6 | `theorem` | [toInvSubmonoid_mul](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/declarations/toinvsubmonoid-mul--93ca547514c5acf5b7bd6edc.md) | 68 | `result-track:93ca547514c5acf5b7bd6edc8b85562a4f734e8d800e046adba97560aa4f9100` |
| 7 | `theorem` | [mul_toInvSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/declarations/mul-toinvsubmonoid--b284b92fb7106af01ec96b67.md) | 72 | `result-track:b284b92fb7106af01ec96b6775df0c7cb573c5493c544c6950672f8d90e286ff` |
| 8 | `theorem` | [smul_toInvSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/declarations/smul-toinvsubmonoid--5c4d3f72a46dfdcb46f9f0cf.md) | 76 | `result-track:5c4d3f72a46dfdcb46f9f0cf1a14b2e5578eab63e2a19734abca47a712d49c63` |
| 9 | `theorem` | [surj''](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/declarations/surj--cc7e167d24a3fbc8d6028aa0.md) | 85 | `result-track:cc7e167d24a3fbc8d6028aa035880ea5662ec549f1f01f070febc6c785b9143e` |
| 10 | `theorem` | [toInvSubmonoid_eq_mk'](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/declarations/toinvsubmonoid-eq-mk--a15c64e6edb021763c04c814.md) | 91 | `result-track:a15c64e6edb021763c04c8149d54dfc9c5f8baefa8a4965103da449518a259ce` |
| 11 | `theorem` | [mem_invSubmonoid_iff_exists_mk'](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/declarations/mem-invsubmonoid-iff-exists-mk--eb6c29928a2d6000dffbbbd0.md) | 95 | `result-track:eb6c29928a2d6000dffbbbd0b5a709bc661a96939ad40e546deb0be525e5f100` |
| 12 | `theorem` | [span_invSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/declarations/span-invsubmonoid--463727aee2515493c063c3c4.md) | 103 | `result-track:463727aee2515493c063c3c4e8556f2fe3abc2c35fab22ba72ce50470a327d07` |
| 13 | `theorem` | [finiteType_of_monoid_fg](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Varianted7e493afeb5026dfeeb0c3a0583ed97ca781e474f8bce122300858660104efc.lean/declarations/finitetype-of-monoid-fg--b97ee7f2b94578b31e4cc0bc.md) | 109 | `result-track:b97ee7f2b94578b31e4cc0bce12d901fe88c1eda9838d946bcd089f583bdc01d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
