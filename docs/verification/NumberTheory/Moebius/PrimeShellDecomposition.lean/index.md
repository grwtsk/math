# Verification target: GRWTSK.NumberTheory.Moebius.PrimeShellDecomposition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41efb9b91729ef198825a01dacccfc03fad0a2b7",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41efb9b91729ef198825a01dacccfc03fad0a2b7`.

Source path: `GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/PrimeShellDecomposition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification`](../../../../mathematics/NumberTheory/Moebius/FiniteProductResponseIdentification.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.FinitePrimeTranslationEnergy`](../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [horizonShell](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/horizonshell--4d772c08fcfb19fc661acd60.md) | 24 | `declaration-track:4d772c08fcfb19fc661acd60252a7d782afab6bf5aee628704692094b6107f70` |
| 2 | `def` | [matureState](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/maturestate--2a937d73222179f608d1ceb0.md) | 28 | `declaration-track:2a937d73222179f608d1ceb0f4a0b5633b4b8d23b359793c155b4dd5bfc29f73` |
| 3 | `def` | [matureWave](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/maturewave--83ef1fc3f2c40dd405c55e4d.md) | 32 | `declaration-track:83ef1fc3f2c40dd405c55e4d96be2118129c154fe0e39edd5c35bf16a89dbba8` |
| 4 | `def` | [signedShell](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/signedshell--f52fa5eb44d03cfc7e1d2a29.md) | 36 | `declaration-track:f52fa5eb44d03cfc7e1d2a29b031589f379336c93a376bbe4b01a072bae02025` |
| 5 | `theorem` | [mem_primeInventory](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/mem-primeinventory--a300f83358f05604682dc472.md) | 39 | `result-track:a300f83358f05604682dc4722f43c5a073bbb5eb6a1ddcfcfc8d46e603044bc6` |
| 6 | `theorem` | [mem_horizonShell](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/mem-horizonshell--bb5b15db47be85120bf86f9f.md) | 48 | `result-track:bb5b15db47be85120bf86f9fff81cafb4fbefb9285678e6eac26f8e84011f7c9` |
| 7 | `theorem` | [primeInventory_monotone](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/primeinventory-monotone--cf22bcddecb9d42b1d751f72.md) | 54 | `result-track:cf22bcddecb9d42b1d751f723a53d970ddeca8f66a1d02f1d058eb8542abff2b` |
| 8 | `theorem` | [inventory_split](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/inventory-split--814e92d5806610ee95fa6daa.md) | 60 | `result-track:814e92d5806610ee95fa6daa44caea4bc59f6aca0bcdbb9b7424bba1ae489276` |
| 9 | `theorem` | [shell_old_disjoint](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/shell-old-disjoint--44b3b26610ccdc54e4740d13.md) | 73 | `result-track:44b3b26610ccdc54e4740d13af072db257f0a5dddc6d3cfcfe09faf967378939` |
| 10 | `theorem` | [primeProduct_at_least_two](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/primeproduct-at-least-two--7ffa42e1b17e57a7ba503ecd.md) | 80 | `result-track:7ffa42e1b17e57a7ba503ecd5f9afc8b5ad46b100e00098ad61237377c4841b4` |
| 11 | `theorem` | [primeState_before_first_prime](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/primestate-before-first-prime--c88b14c70db1c92a1c105bd6.md) | 89 | `result-track:c88b14c70db1c92a1c105bd67b71fc8bf63276b29814bcb19c7f3f5b70a50662` |
| 12 | `theorem` | [late_prime_insert](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/late-prime-insert--fc86d418beba9a53174a88bd.md) | 110 | `result-track:fc86d418beba9a53174a88bd98c2aa9af9229666862afefc2ebd230a40b1dfd4` |
| 13 | `theorem` | [late_block_exact](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/late-block-exact--67d88c6aacc29f5072eccb57.md) | 135 | `result-track:67d88c6aacc29f5072eccb5772fc528d1508cf92c812157862921634955d1dc8` |
| 14 | `theorem` | [shell_prime_late](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/shell-prime-late--9dd0f858b3331df7370076c7.md) | 158 | `result-track:9dd0f858b3331df7370076c7019817c1689b5cfc3a1da523eca0da2b36f2b508` |
| 15 | `theorem` | [shell_composite_above](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/shell-composite-above--c5b5880397122ca23ed5a193.md) | 166 | `result-track:c5b5880397122ca23ed5a1934a9d3a0cf2182e92b196041f678f72641fc0d248` |
| 16 | `theorem` | [shell_composite_atom_zero](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/shell-composite-atom-zero--507c591ef444dd32eee02526.md) | 182 | `result-track:507c591ef444dd32eee0252631790ae52e70fc47b96f1b5723ce602f0c904f8f` |
| 17 | `theorem` | [pickup_split](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/pickup-split--66f5c9ce377b49997a6a974f.md) | 191 | `result-track:66f5c9ce377b49997a6a974fe2c6a66a3925c9156ae56164a5b0b6943c2c84b4` |
| 18 | `theorem` | [shell_zero_before](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/shell-zero-before--913b99bef7f74897cf802857.md) | 202 | `result-track:913b99bef7f74897cf802857bc6d1e1c92292b962a6c1e0d4fefab70f582f735` |
| 19 | `theorem` | [matureWave_equals_previous_pickup](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/maturewave-equals-previous-pickup--d9f75af6ab05fd8067f1913e.md) | 213 | `result-track:d9f75af6ab05fd8067f1913ebdbe79d844b0736efcc192982270fde9939d8873` |
| 20 | `abbrev` | [horizonWave](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/horizonwave--7901742b6c69d522d17fbcf0.md) | 220 | `declaration-track:7901742b6c69d522d17fbcf0c3875475067ff004aecc167eb8567289ce90eeaa` |
| 21 | `theorem` | [horizonWave_eq_sum](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/horizonwave-eq-sum--a90bbe020d8a9051ec8b8e68.md) | 222 | `result-track:a90bbe020d8a9051ec8b8e68dc92b16b39f5a5736df510f2278b9c16c51ddf10` |
| 22 | `def` | [maturityEcho](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/maturityecho--5d1cd1ea5aa8206ac1416b84.md) | 228 | `declaration-track:5d1cd1ea5aa8206ac1416b8407a0a489854fc317113bdf3fcb8d3277bd0f604d` |
| 23 | `theorem` | [mature_source_eq_old_pickup_add_echo](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/mature-source-eq-old-pickup-add-echo--db2ef64d446d4749edc49020.md) | 234 | `result-track:db2ef64d446d4749edc490204b877e11eb6e5a46883252d2cf70870d058cf5e9` |
| 24 | `theorem` | [maturityEcho_zero_before](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/maturityecho-zero-before--1750a94087d7391f528395c1.md) | 249 | `result-track:1750a94087d7391f528395c1e374357e43f9e1903922ff90daaf3b76d4d6f59b` |
| 25 | `theorem` | [matureWave_eq_old_pickup_add_echo](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/maturewave-eq-old-pickup-add-echo--bc2e0d33e00ea5468b3b0c83.md) | 255 | `result-track:bc2e0d33e00ea5468b3b0c8306a3800616993b074b9ee2525abf43c553837812` |
| 26 | `theorem` | [matureState_eq_old_pickup_add_echo](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/maturestate-eq-old-pickup-add-echo--00fed0e057203f0e93644d7a.md) | 260 | `result-track:00fed0e057203f0e93644d7a443be194f2ce6447eb365ddc43b2d37cff3cdcd3` |
| 27 | `theorem` | [mature_equals_previous_pickup](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/mature-equals-previous-pickup--4646a548cacf7459f7f51229.md) | 264 | `result-track:4646a548cacf7459f7f512296d741b25be84c5b07d8f739a078eaf0097ef0c62` |
| 28 | `theorem` | [matureState_continuous](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/maturestate-continuous--4dac16196273c4b0bfe2714c.md) | 268 | `result-track:4dac16196273c4b0bfe2714cafc0018eac3deb1543d123a71a109835d3d6e86d` |
| 29 | `theorem` | [old_endpoint](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/old-endpoint--3cfc5331a04fbc12126c3f56.md) | 273 | `result-track:3cfc5331a04fbc12126c3f56164b7032abd9b2eb2f90442a96b28e277df9c966` |
| 30 | `theorem` | [prime_entry_zero](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/prime-entry-zero--e5f18d7efa83b262e937feec.md) | 283 | `result-track:e5f18d7efa83b262e937feec599509168974278f81b9234e7a211ae7aee62091` |
| 31 | `theorem` | [pickup_split_restriction](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/pickup-split-restriction--3634fa4fa0d58927ff6e0cc2.md) | 287 | `result-track:3634fa4fa0d58927ff6e0cc22fcc5bef6a11560383f6e099264260d9e430195a` |
| 32 | `theorem` | [matureWave_memLp_two](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/maturewave-memlp-two--5eed06475a0a8dc7ed6786a2.md) | 295 | `result-track:5eed06475a0a8dc7ed6786a2b37051b14c7644f5376250034624bb55eb20fddf` |
| 33 | `theorem` | [matureWave_square_integrable](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/maturewave-square-integrable--5ba414ce576c7709bb69658d.md) | 299 | `result-track:5ba414ce576c7709bb69658da30989c01cd91c3f8ebf902087cc941d4de07f60` |
| 34 | `theorem` | [shellSource_continuous](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/shellsource-continuous--afdcf660fb0cc9f84cd09729.md) | 304 | `result-track:afdcf660fb0cc9f84cd097296c4b5ec0afc799f4679e84f82ad9abb5682ffc0f` |
| 35 | `theorem` | [horizonWave_square_integrable](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/horizonwave-square-integrable--b5dde3a46a0d3aaaf150f148.md) | 311 | `result-track:b5dde3a46a0d3aaaf150f148073418d0c75d887adf76303f4c52ecd58641f771` |
| 36 | `theorem` | [horizonWave_memLp_two](../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/declarations/horizonwave-memlp-two--13cf004b99104dcc11c7e152.md) | 319 | `result-track:13cf004b99104dcc11c7e1525bc075d6138dfb66d556423a9c6f67ef9abd0488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
