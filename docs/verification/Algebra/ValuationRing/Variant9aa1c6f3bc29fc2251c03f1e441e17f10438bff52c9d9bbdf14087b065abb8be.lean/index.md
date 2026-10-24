# Verification target: GRWTSK.Algebra.ValuationRing.Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59b85bc99634973ac6442beee1ca11c26e42d50d",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/index.md) · [Full source](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59b85bc99634973ac6442beee1ca11c26e42d50d`.

Source path: `GRWTSK/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Bezout` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Integers` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreValuationRing](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/prevaluationring--f5005502898b3c6e1a9a1cb1.md) | 50 | `declaration-track:f5005502898b3c6e1a9a1cb187438221431c94b8caaa06c47c069be48a7af76b` |
| 2 | `lemma` | [PreValuationRing.cond](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/prevaluationring-cond--c430ac2fa8400cdf0eb62039.md) | 53 | `result-track:c430ac2fa8400cdf0eb620397f0e784376707e2efa84eacf63e7b698ac662e5d` |
| 3 | `class` | [ValuationRing](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/valuationring--73e1f9e95195f6801760b9ad.md) | 58 | `declaration-track:73e1f9e95195f6801760b9adadecdc52972592bb0029442e19b8e155fe00838a` |
| 4 | `lemma` | [ValuationRing.cond](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/valuationring-cond--75bcfb36bb5f5cece3bbe0de.md) | 61 | `result-track:75bcfb36bb5f5cece3bbe0de0931532d4e7bd03e5b2795082037f2a5a9eef589` |
| 5 | `def` | [ValueGroup](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/valuegroup--f56e8d7c4cf0220a021066b7.md) | 72 | `declaration-track:f56e8d7c4cf0220a021066b746282b112de4291d1c166b233e86d5b883fe89a5` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/instance--9f6cb084d323c2ffc688df2c.md) | 74 | `declaration-track:9f6cb084d323c2ffc688df2c7b61da79957ef9c0f1a513973931194758d327d9` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/instance--aa7a7f2fbf49671afa56230a.md) | 76 | `declaration-track:aa7a7f2fbf49671afa56230a8bd64f4efc826270c07f22be3d67bb78d0499ba4` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/instance--2e10fbc33489ef14ceb9b6cb.md) | 90 | `declaration-track:2e10fbc33489ef14ceb9b6cba725eceaa43e11e67f7b56caa551a5864aa463ad` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/instance--58e03eb55f3b9c215d1fd967.md) | 92 | `declaration-track:58e03eb55f3b9c215d1fd9678d54c868642cedf142de8750f11f1b1eca6d120e` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/instance--d8041de7cf7dae99b42ea7e1.md) | 94 | `declaration-track:d8041de7cf7dae99b42ea7e146a8c66cecdb1b7bc6afb7e16d78732d60ba20c4` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/instance--3a1aa4c49b31e6e66b3f527a.md) | 105 | `declaration-track:3a1aa4c49b31e6e66b3f527abf375995a9bb4762d9ebfcade81217afc8b6585b` |
| 12 | `theorem` | [le_total](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/le-total--f89af9ab1a9e06ba8cb21dc9.md) | 118 | `result-track:f89af9ab1a9e06ba8cb21dc9df6cb26ff82e774aaeecc09c26819cd755a351a6` |
| 13 | `instance` | [linearOrder](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/linearorder--9e99717670f7e3ae95e8db4c.md) | 138 | `declaration-track:9e99717670f7e3ae95e8db4c95cd17e8da5660dac9dd1bc1264c4fd98eba22ff` |
| 14 | `instance` | [commGroupWithZero](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/commgroupwithzero--e57955b4f51c7a93a8db90f0.md) | 157 | `declaration-track:e57955b4f51c7a93a8db90f03f83a48de29a79826b20f5e3efc0151fde2fbf8a` |
| 15 | `instance` | [linearOrderedCommGroupWithZero](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/linearorderedcommgroupwithzero--cf51b0455b0f54f10e7ea35a.md) | 182 | `declaration-track:cf51b0455b0f54f10e7ea35a96199f7f82eb4e5327dc3d7980061cfc939006cb` |
| 16 | `def` | [valuation](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/valuation--eade4fe72fe6cb8f6b6edabc.md) | 198 | `declaration-track:eade4fe72fe6cb8f6b6edabcbed069d0c348bc6d2302722febb9285854540cad` |
| 17 | `theorem` | [mem_integer_iff](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/mem-integer-iff--4b0696e93a1d1869b7aa837e.md) | 223 | `result-track:4b0696e93a1d1869b7aa837e0032f0d4f37e13019d210c7f136fc06e0d2726bf` |
| 18 | `def` | [equivInteger](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/equivinteger--1e610faee461844aa85121d9.md) | 233 | `declaration-track:1e610faee461844aa85121d9e852c5d972002b451d49a69596583c1d1c6cb5b6` |
| 19 | `theorem` | [coe_equivInteger_apply](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/coe-equivinteger-apply--6304178abdb65b0d89e50d0f.md) | 251 | `result-track:6304178abdb65b0d89e50d0fda5155dcfecc436b1000fa261d149bda9df0b27e` |
| 20 | `theorem` | [range_algebraMap_eq](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/range-algebramap-eq--478f51a59aa0ac46937b2292.md) | 253 | `result-track:478f51a59aa0ac46937b229244059d2f15e4a784779384e458226762bf4f07eb` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/instance--2e8dd6c872c21161e4939f07.md) | 262 | `declaration-track:2e8dd6c872c21161e4939f07ef3dfd7ce5452fc4915919645c9bdc9f69f40342` |
| 22 | `instance` | [le_total_ideal](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/le-total-ideal--2884e2a648a8ae48c0e89273.md) | 274 | `declaration-track:2884e2a648a8ae48c0e89273f23bd768443d56b9ac43193cef119c2d79d784b2` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/instance--c7147c54a1675278b0237300.md) | 288 | `declaration-track:c7147c54a1675278b02373000d631e0f65491592eb7b626895b2a310a7754d7e` |
| 24 | `theorem` | [_root_.PreValuationRing.iff_dvd_total](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/root-prevaluationring-iff-dvd-total--d63e092a5dd408c51dc17265.md) | 301 | `result-track:d63e092a5dd408c51dc17265a33e30b22ef867b03178dc162cbf4e91165ddbbc` |
| 25 | `theorem` | [_root_.PreValuationRing.iff_ideal_total](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/root-prevaluationring-iff-ideal-total--487555b06584420a8872ed3a.md) | 308 | `result-track:487555b06584420a8872ed3a1314bee2d96303d2ea946404fe1e2f987b587ad4` |
| 26 | `theorem` | [dvd_total](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/dvd-total--93a94ee3f0a25cd96439d307.md) | 318 | `result-track:93a94ee3f0a25cd96439d307b4ea4c90aeb113295f45de73deedf28c10840d9d` |
| 27 | `theorem` | [iff_dvd_total](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/iff-dvd-total--6cc2daee5cd22da49d517056.md) | 326 | `result-track:6cc2daee5cd22da49d517056e266d61b7557c671e6adc743aaf5c91e645ceebc` |
| 28 | `theorem` | [iff_ideal_total](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/iff-ideal-total--52a576b2fc4cc76fac393b97.md) | 330 | `result-track:52a576b2fc4cc76fac393b97e9768886e29603456b33a800bb69d29c398137b9` |
| 29 | `theorem` | [unique_irreducible](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/unique-irreducible--bc56ff9324b1dd88f731a134.md) | 334 | `result-track:bc56ff9324b1dd88f731a134eadac168a2fc5b5b109065a75493d8f2c4c412e2` |
| 30 | `theorem` | [iff_isInteger_or_isInteger](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/iff-isinteger-or-isinteger--a4d0e551456df6a682f40a22.md) | 342 | `result-track:a4d0e551456df6a682f40a221eefea06935a0dae7665a51acbf40cccc9d83b9b` |
| 31 | `theorem` | [isInteger_or_isInteger](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/isinteger-or-isinteger--cced98c359e3ed0329da19e0.md) | 368 | `result-track:cced98c359e3ed0329da19e0a15f087d119be149427e42c3f656c042ac3433bb` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/instance--343aa3c1cd39a75da11260cc.md) | 375 | `declaration-track:343aa3c1cd39a75da11260cc4d03da04527fc14160a32e696c950c5d9b12c0af` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/instance--b5d0a52030ebdd4a3f34a16f.md) | 384 | `declaration-track:b5d0a52030ebdd4a3f34a16fac985a478920d693291a2f1048594df630eac12e` |
| 34 | `theorem` | [iff_local_bezout_domain](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/iff-local-bezout-domain--ce05a985139e32074756a113.md) | 401 | `result-track:ce05a985139e32074756a113ff910b325a01f33fc8c4de4c1942031dfe8c4921` |
| 35 | `theorem` | [TFAE](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/tfae--d5eecf36f9e14b2d87e8b3a0.md) | 404 | `result-track:d5eecf36f9e14b2d87e8b3a0b34847664d758b1e7f30da9b99c64ad78c495e88` |
| 36 | `theorem` | [_root_.Function.Surjective.preValuationRing](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/root-function-surjective-prevaluationring--60689bca07532075490e226d.md) | 417 | `result-track:60689bca07532075490e226d56a86bdcee23d1ef59351b3cb7ab11acfa526139` |
| 37 | `theorem` | [_root_.Function.Surjective.valuationRing](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/root-function-surjective-valuationring--383a343b4e626e9abc4ec0d4.md) | 425 | `result-track:383a343b4e626e9abc4ec0d4516b61122f174f083e6beee9e5862250c18fbbba` |
| 38 | `theorem` | [of_integers](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/of-integers--80930d6bd22112066d1db148.md) | 438 | `result-track:80930d6bd22112066d1db14813385a15a1af1ee3c387896dd1ea4f115e5ed208` |
| 39 | `instance` | [instValuationRingInteger](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/instvaluationringinteger--ba2ee85c4f83d446f35f1c47.md) | 448 | `declaration-track:ba2ee85c4f83d446f35f1c47d6c486f19d3a56259da3a117a3eea69ce1595125` |
| 40 | `theorem` | [isFractionRing_iff](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/isfractionring-iff--4370b923e2d970044b3dfb6b.md) | 451 | `result-track:4370b923e2d970044b3dfb6bbeee66ddb96e3416159eebea021e0c413c742118` |
| 41 | `instance` | [instIsFractionRingInteger](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/instisfractionringinteger--31f4b1a8b8e1899e2894663d.md) | 473 | `declaration-track:31f4b1a8b8e1899e2894663dcfe05d370df370e3ba288add6c983e3fdc3fad13` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ValuationRing/Variant9aa1c6f3bc29fc2251c03f1e441e17f10438bff52c9d9bbdf14087b065abb8be.lean/declarations/instance--acb062e89bd79e241f5894e1.md) | 485 | `declaration-track:acb062e89bd79e241f5894e1ecb99df8bd35b9262b826e3b3fbb08a73a563b87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
