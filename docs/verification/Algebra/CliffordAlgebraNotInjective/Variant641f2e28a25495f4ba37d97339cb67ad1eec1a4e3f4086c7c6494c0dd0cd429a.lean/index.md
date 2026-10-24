# Verification target: GRWTSK.Algebra.CliffordAlgebraNotInjective.Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4869e97aa7dc4c2c7c9a9d2f169e1166cfd281e8",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/index.md) · [Full source](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4869e97aa7dc4c2c7c9a9d2f169e1166cfd281e8`.

Source path: `GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Contraction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Ideal` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kIdeal](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/kideal--6e06bd21e5c4dba531b23838.md) | 50 | `declaration-track:6e06bd21e5c4dba531b23838af8867b0bcd3e305d9178921184c0ad17c02f656` |
| 2 | `theorem` | [mem_kIdeal_iff](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/mem-kideal-iff--d0c8589836a6e9dfc12bb78e.md) | 53 | `result-track:d0c8589836a6e9dfc12bb78e1cdd8132d05472d065cc4b1e4f5e32efb621e8f0` |
| 3 | `theorem` | [X0_X1_X2_notMem_kIdeal](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/x0-x1-x2-notmem-kideal--dcbf860ee7f8ea1316d105a4.md) | 62 | `result-track:dcbf860ee7f8ea1316d105a48d5b86c3f471ef4384b87885d4c7208d2f93ec49` |
| 4 | `theorem` | [mul_self_mem_kIdeal_of_X0_X1_X2_mul_mem](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/mul-self-mem-kideal-of-x0-x1-x2-mul-mem--d82f9edd6967e129ff6496fa.md) | 71 | `result-track:d82f9edd6967e129ff6496fa6d4034c815f9c1cf027c56519c08464a90c4916a` |
| 5 | `def` | [K](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/k--893fee55d0f83303dcd8429f.md) | 97 | `declaration-track:893fee55d0f83303dcd8429fb77d91b6354ec3ca2e6d5869138313fbff1cf884` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/instance--94d370ca8005f72b4da6ae84.md) | 99 | `declaration-track:94d370ca8005f72b4da6ae842b8bbd9e7416d2b060d3adb82f171f9b3c132025` |
| 7 | `theorem` | [comap_C_kIdeal](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/comap-c-kideal--27c02985f6e89766e7b09a0f.md) | 101 | `result-track:27c02985f6e89766e7b09a0f1b8bd7e3b8d0588d74d16e4359596127ad2e587b` |
| 8 | `instance` | [K.charP](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/k-charp--7fc5722aae5a9097cb0b4e65.md) | 111 | `declaration-track:7fc5722aae5a9097cb0b4e655cd11f9b4dd0bee920706a68c5fb7c08b4b05586` |
| 9 | `def` | [K.gen](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/k-gen--3f78b09a66a051cb8bacd186.md) | 120 | `declaration-track:3f78b09a66a051cb8bacd186a3f19883c00477ee121254a4f3b977ce388fcb5b` |
| 10 | `theorem` | [X_sq](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/x-sq--c2cfb42a1a81e9277cc06fac.md) | 128 | `result-track:c2cfb42a1a81e9277cc06fac80e1866aea2ed08a1b3077c0f71d77c58f7fd70d` |
| 11 | `theorem` | [sq_zero_of_αβγ_mul](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/sq-zero-of-mul--3cc7a6fcba6fe449f1cc0db5.md) | 134 | `result-track:3cc7a6fcba6fe449f1cc0db54425727905b59f1f23763b37b551a17ef45c6fb8` |
| 12 | `theorem` | [αβγ_ne_zero](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/ne-zero--e04328dc2137bff3997798bb.md) | 141 | `result-track:e04328dc2137bff3997798bb5af7f09bc8fe7e06f0f590b5e6e355b5055122d7` |
| 13 | `def` | [lFunc](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/lfunc--20ef8fc1318c7af206c25bbe.md) | 149 | `declaration-track:20ef8fc1318c7af206c25bbeb2d45b4680d4700fd6b1c72deca93815457a7b01` |
| 14 | `abbrev` | [L](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/l--5083b1a565b346cf3324fa00.md) | 154 | `declaration-track:5083b1a565b346cf3324fa007f9bfcd37bb9caf3bb4865843bdaf050d48d25ba` |
| 15 | `def` | [sq](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/sq--ee8b4f59be29e7a03929804f.md) | 157 | `declaration-track:ee8b4f59be29e7a03929804f4fa737a052a2779247679119c84e2842e7e0ad32` |
| 16 | `theorem` | [sq_map_add_char_two](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/sq-map-add-char-two--002986b133dcfc75633df317.md) | 160 | `result-track:002986b133dcfc75633df31736a45b09c0cf19d8ec3d8bd1bbae9d9d25bc97b1` |
| 17 | `theorem` | [sq_map_sub_char_two](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/sq-map-sub-char-two--5404ceb296d0e85ff4bbb28b.md) | 164 | `result-track:5404ceb296d0e85ff4bbb28be6a4ae9b872d453d19b16d04e45e9f8dbd1cc7f5` |
| 18 | `def` | [Q'](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/q--135f4c7a1896033c47bfd79a.md) | 170 | `declaration-track:135f4c7a1896033c47bfd79a5d6014fc69808bf6fe3fb47e7858e60d468e2f5e` |
| 19 | `theorem` | [Q'_add](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/q-add--41d78a3de9cff68a77251de2.md) | 173 | `result-track:41d78a3de9cff68a77251de2b00c0147e3b6abdc238be44cf509670a5a6a0731` |
| 20 | `theorem` | [Q'_sub](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/q-sub--316c41f9590003efb8905d53.md) | 176 | `result-track:316c41f9590003efb8905d53c42a8d2d40ff3ba4e565084e93188e00484977dd` |
| 21 | `theorem` | [Q'_apply](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/q-apply--7d27689ada8880619170111b.md) | 179 | `result-track:7d27689ada8880619170111b82ac700bace3aae93ed383f67428b9e58f93208e` |
| 22 | `theorem` | [Q'_apply_single](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/q-apply-single--3639748dc83f335488902a50.md) | 184 | `result-track:3639748dc83f335488902a50be62cc85b892ce73fab614e16a2dd87588b7b9a8` |
| 23 | `theorem` | [Q'_zero_under_ideal](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/q-zero-under-ideal--1487369995791038b0f5076d.md) | 190 | `result-track:1487369995791038b0f5076d36c04d8e6b21f88a699cd1ab2de7bbe0eb9d9e48` |
| 24 | `def` | [Q](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/q--881eb3c38a5c507daf02de4d.md) | 212 | `declaration-track:881eb3c38a5c507daf02de4d2bfff9f443921dbc298079825b36563a4c50394d` |
| 25 | `def` | [gen](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/gen--4a06bd6012b1e876d4c30318.md) | 228 | `declaration-track:4a06bd6012b1e876d4c3031806ffd3161a8cae99a3e7141e0cd3aa18c0ac5ca3` |
| 26 | `theorem` | [gen_mul_gen](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/gen-mul-gen--3601ce57864207f17af75f35.md) | 236 | `result-track:3601ce57864207f17af75f35e5bfc0584b8cc57193a4ec84626c27eea9fda481` |
| 27 | `theorem` | [quot_obv](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/quot-obv--69940c4759b4b6736e2657d4.md) | 242 | `result-track:69940c4759b4b6736e2657d48e2666bb32facaf56c5fa02bb68be9c2097456e2` |
| 28 | `theorem` | [αβγ_smul_eq_zero](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/smul-eq-zero--5b367786cd2f2aa782adde8e.md) | 251 | `result-track:5b367786cd2f2aa782adde8efed5023031b7946596a5425d1c9d611f4779c042` |
| 29 | `theorem` | [algebraMap_αβγ_eq_zero](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/algebramap-eq-zero--c14ca37ea6ac68581f6c160d.md) | 263 | `result-track:c14ca37ea6ac68581f6c160dcbef553859a4e048f1127f914506a40d9ed4eaf8` |
| 30 | `theorem` | [algebraMap_not_injective](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/algebramap-not-injective--c7ca27be7aa3a2dad5a3cb89.md) | 268 | `result-track:c7ca27be7aa3a2dad5a3cb89b6278d996f73efa1c156d99368214d0393ebc282` |
| 31 | `theorem` | [Q_not_in_range_toQuadraticForm](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/q-not-in-range-toquadraticform--fd5314b95570daf4171ff7ea.md) | 272 | `result-track:fd5314b95570daf4171ff7eadc1f4b0d5daa93895e2ff8fcebb23e07d31e266a` |
| 32 | `theorem` | [CliffordAlgebra.not_forall_algebraMap_injective.](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/cliffordalgebra-not-forall-algebramap-injective--9b43ec4eec50f377138fabd6.md) | 285 | `result-track:9b43ec4eec50f377138fabd6adbe326e69eea041e40365a23b07034092194ebd` |
| 33 | `theorem` | [BilinMap.not_forall_toQuadraticMap_surjective.](../../../../mathematics/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/declarations/bilinmap-not-forall-toquadraticmap-surjective--e594d33b4a2b6c71c1719a84.md) | 300 | `result-track:e594d33b4a2b6c71c1719a84cb6185061018b7f15121fc0a5be049c6739607b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
