# Verification target: GRWTSK.Algebra.Prod.Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fdd861afdb82d865c3ccd8fa321a5042144c9d4",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fdd861afdb82d865c3ccd8fa321a5042144c9d4`.

Source path: `GRWTSK/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Maps` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/prod--a04e52ac8629655e3a546dd5.md) | 33 | `declaration-track:a04e52ac8629655e3a546dd578a51437d937c6eaa0de4c9eb82f0f28a2ee94ac` |
| 2 | `theorem` | [coe_prod](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/coe-prod--c8e4a0856f9f911b632fa3e8.md) | 36 | `result-track:c8e4a0856f9f911b632fa3e841ec94804f815b13cbc21e1761ee44d23a59774c` |
| 3 | `theorem` | [mem_prod](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/mem-prod--bc99889bd7d2ebd321025e7e.md) | 40 | `result-track:bc99889bd7d2ebd321025e7e984414482a75a3c96acb3df60a5f5441315848e6` |
| 4 | `theorem` | [prod_top_top](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/prod-top-top--62381ebd293df5b2073c0805.md) | 44 | `result-track:62381ebd293df5b2073c08059c48b5e849d5c97325e3bcf3ef904a67812437ca` |
| 5 | `theorem` | [prod_bot_bot](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/prod-bot-bot--0fe6ef9113ec01481cdf5e4a.md) | 48 | `result-track:0fe6ef9113ec01481cdf5e4a8b5abf8f2eda3526e60d539bfc32609c2a3cf20a` |
| 6 | `theorem` | [prod_mono](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/prod-mono--56f7e99f877416831fbbe611.md) | 52 | `result-track:56f7e99f877416831fbbe6117c1e953a6de8d1a8ec2c118ae3479f961c4afce4` |
| 7 | `theorem` | [prod_mono_left](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/prod-mono-left--d37dd8b1a6a7a1d6f37424f6.md) | 57 | `result-track:d37dd8b1a6a7a1d6f37424f66b45552443a026fb0ced98fd21d67b454f2d5e62` |
| 8 | `theorem` | [prod_mono_right](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/prod-mono-right--60faa4c2d3bbd5e086cd9b21.md) | 61 | `result-track:60faa4c2d3bbd5e086cd9b21586731f356639953080bf6e2197baba928a5d731` |
| 9 | `theorem` | [ideal_prod_eq](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/ideal-prod-eq--3940d8c22a1104a9af58a2a6.md) | 66 | `result-track:3940d8c22a1104a9af58a2a6fa8ec9ed5a42159ab5b1be8576354facceb25688` |
| 10 | `theorem` | [map_fst_prod](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/map-fst-prod--ed4a42663a4c05806937132a.md) | 77 | `result-track:ed4a42663a4c05806937132ab6835e398fe31c15e1fae6ddc995b30ff8ff4bf6` |
| 11 | `theorem` | [map_snd_prod](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/map-snd-prod--358eee97134ab5013e8cf6ca.md) | 86 | `result-track:358eee97134ab5013e8cf6cafd0be14c4a3621f47a33ec34b57a913aa5404122` |
| 12 | `theorem` | [map_prodComm_prod](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/map-prodcomm-prod--160e9ab05bdd2659b25e04fd.md) | 95 | `result-track:160e9ab05bdd2659b25e04fd82f49401352c030841c186b52fff30aa1bef00ac` |
| 13 | `def` | [idealProdEquiv](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/idealprodequiv--7efcea3a70be853dd0b115cc.md) | 102 | `declaration-track:7efcea3a70be853dd0b115cc8542e90eb9535e801be0c57dd2787cc374e22ea0` |
| 14 | `theorem` | [idealProdEquiv_symm_apply](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/idealprodequiv-symm-apply--25e00645abe4ddde91a161d4.md) | 114 | `result-track:25e00645abe4ddde91a161d4ceeb7699a110bc99fecd881de7c63abc98f1ca09` |
| 15 | `theorem` | [span_prod_le](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/span-prod-le--b447d2a2cd316bcac17535ca.md) | 118 | `result-track:b447d2a2cd316bcac17535ca8ef9756573a1feff264af7d2e8c6758c3af4eb74` |
| 16 | `theorem` | [span_prod](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/span-prod--ebcaaf3ef23ba72392f2d788.md) | 125 | `result-track:ebcaaf3ef23ba72392f2d788061c125c31e7526d5d504953f8e374cc4e77fcea` |
| 17 | `theorem` | [prod_inj](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/prod-inj--7b3dccb2ff19ba0cb04f77c7.md) | 138 | `result-track:7b3dccb2ff19ba0cb04f77c7b396c1eb7e0dfb01acf59a1796b26b8b252ff385` |
| 18 | `theorem` | [prod_eq_bot_iff](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/prod-eq-bot-iff--56247de1e47d22e594ae4b2c.md) | 145 | `result-track:56247de1e47d22e594ae4b2c82731a16056867b3c06d0a3613972a6861fb0a8b` |
| 19 | `theorem` | [prod_eq_top_iff](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/prod-eq-top-iff--3382c7c6d504f72f903e6980.md) | 150 | `result-track:3382c7c6d504f72f903e6980dded6f37de620cd511879baa04f31cff245c4d0a` |
| 20 | `theorem` | [isPrime_of_isPrime_prod_top](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/isprime-of-isprime-prod-top--6edbad6ad471b108a1772e9f.md) | 154 | `result-track:6edbad6ad471b108a1772e9fdf531315e667cc5951b11aa8d2e8ecf87c5bb92c` |
| 21 | `theorem` | [isPrime_of_isPrime_prod_top'](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/isprime-of-isprime-prod-top--558e789f7529e13406d0fce0.md) | 166 | `result-track:558e789f7529e13406d0fce0ba57eb1f8dc587b1e508ba4dd0f0663c71c7b6ff` |
| 22 | `theorem` | [isPrime_ideal_prod_top](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/isprime-ideal-prod-top--b92d755e90ad71cc93859447.md) | 173 | `result-track:b92d755e90ad71cc93859447819c4e79185247625de7012a11274251d661a583` |
| 23 | `theorem` | [isPrime_ideal_prod_top'](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/isprime-ideal-prod-top--b44ae843992f12c04c802b76.md) | 177 | `result-track:b44ae843992f12c04c802b76b0988560fb1fc93747bfa91092d49a7cab3661dd` |
| 24 | `theorem` | [ideal_prod_prime_aux](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/ideal-prod-prime-aux--c1d650382bfbbacf0ee15bd4.md) | 183 | `result-track:c1d650382bfbbacf0ee15bd4c369848f1403ee4fbc7f1e7eeba6354fd6c3b6c4` |
| 25 | `theorem` | [ideal_prod_prime](../../../../mathematics/Algebra/Prod/Variant7de19f7b4ead765b03d97ba8f0753524b5837a5e65e69f3026271acd86627bb4.lean/declarations/ideal-prod-prime--807f7558f0d7204e40bf3f8b.md) | 191 | `result-track:807f7558f0d7204e40bf3f8b70b732ef84e7b63b5f69ffa543f14361b6e58e12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
