# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fbd5d9df8a2a5d10a4342ffb0cae00b5e11fe90",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fbd5d9df8a2a5d10a4342ffb0cae00b5e11fe90`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Commute` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Hom` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isLocalHom_of_exists_map_ne_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/declarations/islocalhom-of-exists-map-ne-one--c538941cdaa62207654058b3.md) | 32 | `result-track:c538941cdaa62207654058b3532c2f8b8929552188943f20de40f01c898d6e19` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/declarations/instance--c3ed5a196ac330a5c5774eb5.md) | 43 | `declaration-track:c3ed5a196ac330a5c5774eb5c5539c88e37f412859f9e2def9a87e0d3cf16b1d` |
| 3 | `lemma` | [div_eq_div_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/declarations/div-eq-div-iff--976385338e7c54c6c95190f0.md) | 56 | `result-track:976385338e7c54c6c95190f0273771c6be7e3149baf0224f14adb5e8095aaef7` |
| 4 | `theorem` | [map_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/declarations/map-ne-zero--59f42fe049cf4c08d261a52f.md) | 68 | `result-track:59f42fe049cf4c08d261a52f488fbe84a9c2a04abc0b99e0fd1a590ce635ab7b` |
| 5 | `theorem` | [map_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/declarations/map-eq-zero--f67a3c2e9bc926b4b2f15f2c.md) | 72 | `result-track:f67a3c2e9bc926b4b2f15f2c146ef350d48064d60f2f59e7fb7335cc97936b40` |
| 6 | `theorem` | [eq_on_inv₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/declarations/eq-on-inv--9aa7b716de8cbf5f0fe625ba.md) | 75 | `result-track:9aa7b716de8cbf5f0fe625ba6e78b9a82e8f21be9198631bf9c87c7adc7e2411` |
| 7 | `theorem` | [map_inv₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/declarations/map-inv--3c7b2e41539c09040d8266a9.md) | 90 | `result-track:3c7b2e41539c09040d8266a9c0a12eb7eb1cc6bd6b608c771181709b917691ea` |
| 8 | `theorem` | [map_div₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/declarations/map-div--b46dd386d09b5886aed76dd1.md) | 97 | `result-track:b46dd386d09b5886aed76dd1df3ee300a744f585ca84b8ad97648b18ce61449b` |
| 9 | `def` | [MonoidWithZero.inverse](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/declarations/monoidwithzero-inverse--d4bf88ef8dcfa59c825a1018.md) | 104 | `declaration-track:d4bf88ef8dcfa59c825a1018eec6c9b4201467fc44dbe1d78d15d68358604a4c` |
| 10 | `theorem` | [MonoidWithZero.coe_inverse](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/declarations/monoidwithzero-coe-inverse--304660f0f7a73ec5e4844025.md) | 112 | `result-track:304660f0f7a73ec5e4844025e5983dd8eda276c65659a916d7c06037c5015cf3` |
| 11 | `theorem` | [MonoidWithZero.inverse_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/declarations/monoidwithzero-inverse-apply--3feaeb58acbf58f8b0060170.md) | 117 | `result-track:3feaeb58acbf58f8b0060170bb8561858e344dc79131b38b5812ae5be40b2faf` |
| 12 | `def` | [invMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/declarations/invmonoidwithzerohom--760f0248f3a31be2c2c5c635.md) | 122 | `declaration-track:760f0248f3a31be2c2c5c63560bc08c2edea099263b9957c06c06cad3fa002e8` |
| 13 | `theorem` | [map_zpow₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/declarations/map-zpow--fbed61fed566b2a3577fdbe2.md) | 128 | `result-track:fbed61fed566b2a3577fdbe224017d2c54d5293382c4526bc9e6a37ad375bfb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
