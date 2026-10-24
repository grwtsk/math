# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Rodrigues.Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e93ed97d3b20839ee161d5b5c876ee9e2ca2d3d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e93ed97d3b20839ee161d5b5c876ee9e2ca2d3d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Series` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RotationVector3](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/rotationvector3--74da7761d5e49af13800e502.md) | 37 | `declaration-track:74da7761d5e49af13800e5025ec300f3a954fd874cfcd924518c09ea249ceb10` |
| 2 | `def` | [crossProductMatrix](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/crossproductmatrix--2f83b906ace1774b53ae4bf1.md) | 40 | `declaration-track:2f83b906ace1774b53ae4bf1801770afd3ef94892448b189fd11ae8f47dd485b` |
| 3 | `def` | [cosc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/cosc--02f52019e7ab83c53be37b36.md) | 46 | `declaration-track:02f52019e7ab83c53be37b36b73a540beda72a628be2997ca79c38e3af71b148` |
| 4 | `theorem` | [cosc_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/cosc-zero--5ea8ac9543b90e82145df8d9.md) | 50 | `result-track:5ea8ac9543b90e82145df8d998d04c0ede6ac948a4ab1adbba58339481546f1e` |
| 5 | `theorem` | [cosc_of_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/cosc-of-ne-zero--153c015f1d0703483945a1f5.md) | 53 | `result-track:153c015f1d0703483945a1f54dafe7965a027085ffc5f5b242b55cc94a3aeb90` |
| 6 | `theorem` | [cosc_eq_sinc_half_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/cosc-eq-sinc-half-sq--5d15822c2eeac79d693f4aa1.md) | 58 | `result-track:5d15822c2eeac79d693f4aa1781f4fe66cff33992e364a83465fbad5048d2184` |
| 7 | `theorem` | [continuous_cosc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/continuous-cosc--a9bd3675f84120a3712f293b.md) | 72 | `result-track:a9bd3675f84120a3712f293b5124c61a8b2ee0d24ebc302a41b701fa7fd308de` |
| 8 | `theorem` | [exp_of_cube_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/exp-of-cube-eq-zero--c7bb49e906c9fb58e8f3d1d9.md) | 80 | `result-track:c7bb49e906c9fb58e8f3d1d96b96ef2a1cc98128b0890d960cd12d283955d4f9` |
| 9 | `theorem` | [odd_power_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/odd-power-of-cube--b1e196bc98a23b267cc7306b.md) | 91 | `result-track:b1e196bc98a23b267cc7306b66e430342ba5cad97afd1c8a9843229dc5fb8328` |
| 10 | `theorem` | [even_power_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/even-power-of-cube--fabd47fef3ded541c5962673.md) | 116 | `result-track:fabd47fef3ded541c5962673c856328dc67cc69c0d48ede3639a4bf448c118c5` |
| 11 | `theorem` | [expSeries_odd_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/expseries-odd-of-cube--0c0d63c096b6c743fb49f1b6.md) | 127 | `result-track:0c0d63c096b6c743fb49f1b6287a3e676ef7114b190c5a6d48affaedf2760ee3` |
| 12 | `theorem` | [expSeries_even_tail_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/expseries-even-tail-of-cube--a68261080523dd5746b28591.md) | 136 | `result-track:a68261080523dd5746b28591490657a1f6c1816f2921eacf60ac4a6e8c50bb58` |
| 13 | `theorem` | [hasSum_cos_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/hassum-cos-tail--ebb456fee77834d7a718972b.md) | 146 | `result-track:ebb456fee77834d7a718972bc9a46774bfc67f2f9e8f493100917397f1ff7fb5` |
| 14 | `theorem` | [hasSum_expSeries_odd_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/hassum-expseries-odd-of-cube--727a65da9726d3853ec6ffb8.md) | 154 | `result-track:727a65da9726d3853ec6ffb8df856b8be826a5167cc89f8f542d66ec9ca8b48b` |
| 15 | `theorem` | [hasSum_expSeries_even_tail_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/hassum-expseries-even-tail-of-cube--951e48b8e496586984695d05.md) | 166 | `result-track:951e48b8e496586984695d05f0c24a663ef0ee2f7d37aa6c1d1aa738a9d48a0f` |
| 16 | `theorem` | [hasSum_expSeries_even_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/hassum-expseries-even-of-cube--5bf153eb6f4e90d9208b82b6.md) | 183 | `result-track:5bf153eb6f4e90d9208b82b6e47a4f5cdd5dfad0bce979fbfa610085c1a36c63` |
| 17 | `theorem` | [hasSum_expSeries_of_cube_of_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/hassum-expseries-of-cube-of-ne-zero--046a1eec321b2c9048b4257e.md) | 192 | `result-track:046a1eec321b2c9048b4257e36a9a3dd6785e187e7fe56f6467f45022883f00c` |
| 18 | `theorem` | [exp_eq_rodrigues_of_cube_of_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/exp-eq-rodrigues-of-cube-of-ne-zero--8a7fdd122c6cd5cd775b26ec.md) | 205 | `result-track:8a7fdd122c6cd5cd775b26ec4ab861aa0606378b4ed19faf2598426e48addfdc` |
| 19 | `theorem` | [exp_eq_rodrigues_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/exp-eq-rodrigues-of-cube--04f20a703a5ebb4d5b6a951c.md) | 212 | `result-track:04f20a703a5ebb4d5b6a951c3faa381e6f02776356443c1c564fe6a09498fa42` |
| 20 | `theorem` | [crossProductMatrix_mulVec](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/crossproductmatrix-mulvec--3a07870e86703627fa04f014.md) | 223 | `result-track:3a07870e86703627fa04f0141e7b58d1c030a267db88e13df86f8c54d0804d4a` |
| 21 | `theorem` | [crossProductMatrix_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/crossproductmatrix-cube--84aad6997653851341d43104.md) | 231 | `result-track:84aad6997653851341d431042255491004a632a9b997b641d1358fe6add97ea1` |
| 22 | `theorem` | [rodrigues_matrix_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variantd59cdafc9524d4fe3eb2c608874da1e26e3c856067c902326e9fe2be352ecef1.lean/declarations/rodrigues-matrix-exp--4f7129c9d1d1a088982c8638.md) | 247 | `result-track:4f7129c9d1d1a088982c863854dd59dfad3fe1e7221a37b834e93581acb03a65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
