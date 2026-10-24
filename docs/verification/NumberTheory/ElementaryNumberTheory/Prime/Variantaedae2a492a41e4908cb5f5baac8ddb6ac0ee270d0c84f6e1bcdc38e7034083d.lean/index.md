# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Prime.Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fb72fd07189520eeb3ef30c091fc6cbed6b64be",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fb72fd07189520eeb3ef30c091fc6cbed6b64be`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean.json)

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
| 1 | `theorem` | [not_prime_mul_of_ble](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/not-prime-mul-of-ble--f9bdc97ddc40e40edc16f300.md) | 36 | `result-track:f9bdc97ddc40e40edc16f300b7c89e3d1dd31d7d9124a6c00a932e00aceafec2` |
| 2 | `def` | [deriveNotPrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/derivenotprime--b949ebed606dc05de78b6246.md) | 42 | `declaration-track:b949ebed606dc05de78b6246b3acf2552a06b8fbad2d493ee51c66b426cca8eb` |
| 3 | `def` | [MinFacHelper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/minfachelper--b9f8dd72a09b82b08d45cde5.md) | 50 | `declaration-track:b9f8dd72a09b82b08d45cde5c0d64f688691d8aa4ca822eb4238fca3c50c0c57` |
| 4 | `theorem` | [MinFacHelper.one_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/minfachelper-one-lt--2fe2a6f35bc7da4804e37696.md) | 53 | `result-track:2fe2a6f35bc7da4804e37696186db26b658d16aa80b0db1c2f75f1190ee1e43a` |
| 5 | `theorem` | [minFacHelper_0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/minfachelper-0--894bca990b6ac38ae69fd20e.md) | 61 | `result-track:894bca990b6ac38ae69fd20ebbaec8a12ad9cbee9a49c78894242749b6c45c28` |
| 6 | `theorem` | [minFacHelper_1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/minfachelper-1--1ce282cdabbdf90a7f984485.md) | 70 | `result-track:1ce282cdabbdf90a7f984485806ae439ea4781a148abf1e76ffe5209f18ac424` |
| 7 | `theorem` | [minFacHelper_2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/minfachelper-2--7d20df8ab078ccd717e9c4cd.md) | 85 | `result-track:7d20df8ab078ccd717e9c4cdd59936623c57b9580136090f4d4b316a76620649` |
| 8 | `theorem` | [minFacHelper_3](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/minfachelper-3--8f6bbba9c16a5d2a94931f4c.md) | 91 | `result-track:8f6bbba9c16a5d2a94931f4cce67015f4044c48d907fd0bd1801f3aaecf98ac2` |
| 9 | `theorem` | [isNat_minFac_1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/isnat-minfac-1--184fcf093f02943c1e423ae5.md) | 98 | `result-track:184fcf093f02943c1e423ae524b9fa586e2542e5b0705c576942d9206d66510d` |
| 10 | `theorem` | [isNat_minFac_2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/isnat-minfac-2--fcd518590056880b5cf05124.md) | 101 | `result-track:fcd518590056880b5cf05124045b0764d29f09f1a247b1a14ce9845a80d20e81` |
| 11 | `theorem` | [isNat_minFac_3](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/isnat-minfac-3--31ce632f1ec6863393dd1316.md) | 104 | `result-track:31ce632f1ec6863393dd1316e52d2a4f715445bbe44b73ea128009a434a0c954` |
| 12 | `theorem` | [isNat_minFac_4](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/isnat-minfac-4--7211f983d772e619601ec20e.md) | 110 | `result-track:7211f983d772e619601ec20e30419b3ce9ad42d09782dd463ddd83dadd8b6a89` |
| 13 | `def` | [evalMinFac.core](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/evalminfac-core--fcfa10bef7d74ec5568727e3.md) | 124 | `declaration-track:fcfa10bef7d74ec5568727e3784c2fbf77edccc78ed32c2f6ff9caf36321e0b0` |
| 14 | `def` | [evalMinFac](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/evalminfac--49d0b7379213bebc5257e05b.md) | 165 | `declaration-track:49d0b7379213bebc5257e05b1c7a31a5decb75affd0d8753fae9655f215a11f5` |
| 15 | `theorem` | [isNat_prime_0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/isnat-prime-0--e6c53cbd31f128abce0b2ee8.md) | 170 | `result-track:e6c53cbd31f128abce0b2ee88915fa5d4c8b6ce19d6517da0ff93cf73b4a960a` |
| 16 | `theorem` | [isNat_prime_1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/isnat-prime-1--ac2f042bed3eaa265d3a1250.md) | 173 | `result-track:ac2f042bed3eaa265d3a12504b79ad440ef5f253e1895d64ecc1578d40317268` |
| 17 | `theorem` | [isNat_prime_2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/isnat-prime-2--27e3e86525e07a2931c36cda.md) | 176 | `result-track:27e3e86525e07a2931c36cda3313bc8ca6cdfc788638c9b34350e95f5b127254` |
| 18 | `theorem` | [isNat_not_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/isnat-not-prime--be71cf579074f1d4d36d408d.md) | 180 | `result-track:be71cf579074f1d4d36d408d0b7df1cdde063a5b6d3ca3875756fa84a42cc266` |
| 19 | `def` | [evalNatPrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/declarations/evalnatprime--7004840106eb46ca56b8f5f1.md) | 183 | `declaration-track:7004840106eb46ca56b8f5f17f02163bee5dfb0c70bd06c9ee0137222ac4cc18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
