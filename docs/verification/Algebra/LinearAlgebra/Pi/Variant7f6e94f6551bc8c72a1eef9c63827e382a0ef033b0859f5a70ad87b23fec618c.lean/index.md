# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c1b1bc126c7b703bed129f838b9f4262d8fda75",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c1b1bc126c7b703bed129f838b9f4262d8fda75`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pi--0a4864688dd57483ad319080.md) | 57 | `declaration-track:0a4864688dd57483ad31908098aa346ebcbb15f626d23ddccd09018ad9dc7e7d` |
| 2 | `theorem` | [pi_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pi-apply--a2bd84e3ea17e3c12b3273bd.md) | 64 | `result-track:a2bd84e3ea17e3c12b3273bde628a9808e0455cf79a6bb045a930ff051bb7608` |
| 3 | `theorem` | [ker_pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/ker-pi--916a7ad550d9b134252dd70f.md) | 68 | `result-track:916a7ad550d9b134252dd70f50914ff764eb25646bcacef941d18d9060853af9` |
| 4 | `theorem` | [pi_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pi-eq-zero--3fa9ffd509ac9ec1e4950e70.md) | 72 | `result-track:3fa9ffd509ac9ec1e4950e70b417ff9a8ae31f1b09293190b0ffa5e35e23e2e2` |
| 5 | `theorem` | [pi_zero](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pi-zero--1c1648d978867ede90dd62e6.md) | 77 | `result-track:1c1648d978867ede90dd62e60edd538dba7b5999ab72dacd536ad48082142b79` |
| 6 | `theorem` | [pi_comp](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pi-comp--dba72ff5f15f931b3bb4d0d5.md) | 80 | `result-track:dba72ff5f15f931b3bb4d0d586ee5c1fc5256376fd0a0ac9875d8241e7d9318f` |
| 7 | `def` | [proj](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/proj--228a0313e8bb01d4eb978e21.md) | 89 | `declaration-track:228a0313e8bb01d4eb978e21eb4520163e4162a7a3696cd8ed3ba768e3e56547` |
| 8 | `theorem` | [coe_proj](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/coe-proj--b006558fd9e836ae7d1d79e8.md) | 96 | `result-track:b006558fd9e836ae7d1d79e8d03ac3f3d16776735a9560f07b4a8477a5de163d` |
| 9 | `theorem` | [proj_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/proj-apply--d963fa3c7a3f3dd8cad846ce.md) | 100 | `result-track:d963fa3c7a3f3dd8cad846cedfacfa6e93373c09d992e2b12226e24c510402eb` |
| 10 | `theorem` | [proj_pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/proj-pi--c0eab4d0c88bf768142581ec.md) | 104 | `result-track:c0eab4d0c88bf768142581ec9d5309c6940c14e57bedfd6d8c8273623e207eeb` |
| 11 | `theorem` | [iInf_ker_proj](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/iinf-ker-proj--58132361fdf4c92d0171dc09.md) | 108 | `result-track:58132361fdf4c92d0171dc09f0686553b3a5f6795fba9093321a53a74aa1e5f6` |
| 12 | `def` | [compLeft](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/compleft--5f03f3654ed7922f54d1432c.md) | 119 | `declaration-track:5f03f3654ed7922f54d1432c4a0ea91a652bb483e220d4a943bc7cefa8506bff` |
| 13 | `theorem` | [apply_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/apply-single--3c2e5e1d02c50e5addb1e950.md) | 127 | `result-track:3c2e5e1d02c50e5addb1e950042efe00ea6f4353720e47a744e074a5346c95fc` |
| 14 | `def` | [single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/single--07d7584d93788b94e7ab0bb5.md) | 133 | `declaration-track:07d7584d93788b94e7ab0bb56e6d60e149209a5b9c1aa0b48ab2c393874886ae` |
| 15 | `theorem` | [coe_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/coe-single--720564a5e73e3050daf2e857.md) | 140 | `result-track:720564a5e73e3050daf2e85717c58d9f77422f7183801f5cd7bfa9ded150f077` |
| 16 | `def` | [lsum](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/lsum--e2f0845aab86c141462cfeed.md) | 149 | `declaration-track:e2f0845aab86c141462cfeedbe9a00844af27c0106f98b5fedb3db391ce619bd` |
| 17 | `theorem` | [lsum_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/lsum-apply--4b1832244d896f2c96acd6c3.md) | 166 | `result-track:4b1832244d896f2c96acd6c39f1a51aa256e870834d39cf4895b7d65d9b0a4b0` |
| 18 | `theorem` | [lsum_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/lsum-single--d0a8e85b29fefd2fcb36bc95.md) | 172 | `result-track:d0a8e85b29fefd2fcb36bc954c4dc7a6b91704fc1f18f49b402043f62c8ce9fe` |
| 19 | `theorem` | [pi_ext](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pi-ext--b2d5372c883a0020bab5a20c.md) | 184 | `result-track:b2d5372c883a0020bab5a20c70ad74748ddadd4d6c5994f734998a07ba0fcf94` |
| 20 | `theorem` | [pi_ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pi-ext-iff--34e7ab20f3313a29001fd5c2.md) | 188 | `result-track:34e7ab20f3313a29001fd5c27b329630bd437b5c286cd9260fe3683fc4dede78` |
| 21 | `theorem` | [pi_ext'](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pi-ext--924dce23200ccb7d58e5efa4.md) | 195 | `result-track:924dce23200ccb7d58e5efa43cf6c806c7a31ddd81a90cf12b921a0ff6c0de48` |
| 22 | `theorem` | [pi_ext'_iff](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pi-ext-iff--2085071b40cac4e142c4f7a4.md) | 200 | `result-track:2085071b40cac4e142c4f7a41177cc375f1001df24714fb7214f582374f8e656` |
| 23 | `def` | [iInfKerProjEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/iinfkerprojequiv--707df37a0d60e544cf41f422.md) | 212 | `declaration-track:707df37a0d60e544cf41f4220707593258b4a3c4cd69729b851c51fcfa2ca706` |
| 24 | `def` | [diag](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/diag--fe9b94f2216c91e5615255b9.md) | 248 | `declaration-track:fe9b94f2216c91e5615255b9be15a9170db36f73d4ebce41f0effa5bf3bd3f21` |
| 25 | `theorem` | [update_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/update-apply--ff6938266b38331ea9c6b61d.md) | 252 | `result-track:ff6938266b38331ea9c6b61d442807069f5f011cd63ed6c16491c18d54f9a7a0` |
| 26 | `def` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pi--8ee01536428ed8aa9cf71a40.md) | 272 | `declaration-track:8ee01536428ed8aa9cf71a40edd6b80aff91df8655537efabc3ce3ae124b12bc` |
| 27 | `theorem` | [mem_pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/mem-pi--81781218a27584e614942d5c.md) | 282 | `result-track:81781218a27584e614942d5c7095791dec97d186c03c4fc14d011b5483ef176a` |
| 28 | `theorem` | [coe_pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/coe-pi--ba2065b1c80f38ab018a858b.md) | 287 | `result-track:ba2065b1c80f38ab018a858b545ccebc6b40219b0c7382e03a920a1a88ecff05` |
| 29 | `theorem` | [pi_empty](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pi-empty--53b30654447ea5c888860625.md) | 292 | `result-track:53b30654447ea5c88886062595354a69d77d46f90345c09e5045c39e437de210` |
| 30 | `theorem` | [pi_top](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pi-top--95c93bd8d4fff4d1268924eb.md) | 297 | `result-track:95c93bd8d4fff4d1268924eb8049f94eccc4238fb1bee903d8a76e7114b875f5` |
| 31 | `theorem` | [pi_mono](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pi-mono--58eaf8ceeec58edea322f751.md) | 301 | `result-track:58eaf8ceeec58edea322f751e3fe16fa58680519208da96a1f84d26418fea9ee` |
| 32 | `theorem` | [biInf_comap_proj](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/biinf-comap-proj--95f9423377373477970bed7a.md) | 305 | `result-track:95f9423377373477970bed7adc8f65661a006c3d62554148d603628bee7d8ab1` |
| 33 | `theorem` | [iInf_comap_proj](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/iinf-comap-proj--81301ac60d9c4ed848e94168.md) | 311 | `result-track:81301ac60d9c4ed848e94168f10dc047d9826f599135006fea0e8c1ae8287dad` |
| 34 | `theorem` | [iSup_map_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/isup-map-single--b2c254b4bbb37fa8afd8e3fa.md) | 317 | `result-track:b2c254b4bbb37fa8afd8e3fa27c4478030b94df4a89d33f1c4818c85626db10d` |
| 35 | `theorem` | [le_comap_single_pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/le-comap-single-pi--02943bb184aad503f8375a5f.md) | 328 | `result-track:02943bb184aad503f8375a5f52ab8136e48320ded4449108cbb4ce0a484f972f` |
| 36 | `def` | [piCongrRight](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/picongrright--b50b598733be3d4fa960522d.md) | 354 | `declaration-track:b50b598733be3d4fa960522d985ad040eb937867a7d3aa8e175b0f822307676c` |
| 37 | `theorem` | [piCongrRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/picongrright-apply--4eb04e1ad4455dc02262085b.md) | 362 | `result-track:4eb04e1ad4455dc02262085bbf24259a6e00cfd7bd6f232fabf8bab2313be7f9` |
| 38 | `theorem` | [piCongrRight_refl](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/picongrright-refl--37f66ec7131fe4e74adbfb9d.md) | 367 | `result-track:37f66ec7131fe4e74adbfb9dec30d990cf7c459d6dbf8bbd3c7aa0ed36ef4fe3` |
| 39 | `theorem` | [piCongrRight_symm](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/picongrright-symm--5d3f3d23ef941385b86eab11.md) | 372 | `result-track:5d3f3d23ef941385b86eab11bb89f5f2621ef9981261fb9f6ad19af6b2fdb676` |
| 40 | `theorem` | [piCongrRight_trans](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/picongrright-trans--8257c76cd59dea5daad9363b.md) | 378 | `result-track:8257c76cd59dea5daad9363bc81bbcb56fb25ae33c23cbc656ee1465b3464dbf` |
| 41 | `def` | [piCongrLeft'](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/picongrleft--e6a0a5711cae51d982f6df35.md) | 389 | `declaration-track:e6a0a5711cae51d982f6df359c26f71c788c4981c68c27618fc3a0882fde8326` |
| 42 | `def` | [piCongrLeft](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/picongrleft--1e5827476b7797c38318bfcb.md) | 399 | `declaration-track:1e5827476b7797c38318bfcb5d31358c7edca874d23ec366aaebf319bcef6a54` |
| 43 | `def` | [piOptionEquivProd](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pioptionequivprod--66130745975963b7d0d1030b.md) | 404 | `declaration-track:66130745975963b7d0d1030bbf3f4ec9306f3e910959016d0a904bcb1aa90666` |
| 44 | `def` | [piRing](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/piring--f4992ebf7cf6c4cdf55799ee.md) | 422 | `declaration-track:f4992ebf7cf6c4cdf55799ee728219822bb13982c66253cc2c29b99da893a763` |
| 45 | `theorem` | [piRing_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/piring-apply--15798717ddd94652714bc0ce.md) | 430 | `result-track:15798717ddd94652714bc0ce04d353121d403ccd1316a7f177b8425068fb6a89` |
| 46 | `theorem` | [piRing_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/piring-symm-apply--6ba4be62b43df562da1d92a5.md) | 435 | `result-track:6ba4be62b43df562da1d92a513c3807a4c7121c4e32d0cc3e7a9c1ba3dbb98d1` |
| 47 | `def` | [sumArrowLequivProdArrow](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/sumarrowlequivprodarrow--299b63ff2d0bf1a6d48af585.md) | 442 | `declaration-track:299b63ff2d0bf1a6d48af5850949b3fee68b94b2bae93b9dd7b3d656fc0c99f5` |
| 48 | `theorem` | [sumArrowLequivProdArrow_apply_fst](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/sumarrowlequivprodarrow-apply-fst--6bfb458d31ca8df15c3b71f7.md) | 455 | `result-track:6bfb458d31ca8df15c3b71f783c4f90cc201a8b053aebf275cabc07f6533b5fc` |
| 49 | `theorem` | [sumArrowLequivProdArrow_apply_snd](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/sumarrowlequivprodarrow-apply-snd--32d36feeaa690d241a80d9a3.md) | 461 | `result-track:32d36feeaa690d241a80d9a3925e3d77666de498a4537fcd69a07c832ba20814` |
| 50 | `theorem` | [sumArrowLequivProdArrow_symm_apply_inl](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/sumarrowlequivprodarrow-symm-apply-inl--4efc9186afa713f87e832412.md) | 467 | `result-track:4efc9186afa713f87e8324122efe01afac76eddd6b0c3988b5b41f0f645cf797` |
| 51 | `theorem` | [sumArrowLequivProdArrow_symm_apply_inr](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/sumarrowlequivprodarrow-symm-apply-inr--9688063381205eeca3828ca2.md) | 473 | `result-track:9688063381205eeca3828ca2028020b4424e5e3f46ff8daa5f1378ef837142e8` |
| 52 | `def` | [funUnique](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/fununique--2ded1340037aed364adbc891.md) | 482 | `declaration-track:2ded1340037aed364adbc8914fb44769f286192bab68bfacefbd87d056c73209` |
| 53 | `theorem` | [funUnique_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/fununique-apply--acd241fb91cdfe067fd6821c.md) | 491 | `result-track:acd241fb91cdfe067fd6821c31749817858b6e1fa230ce9b31a9fab257822b9d` |
| 54 | `def` | [piFinTwo](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pifintwo--e7f4e18b59f1e15e9f7338e5.md) | 501 | `declaration-track:e7f4e18b59f1e15e9f7338e5dc7e16689c21928c497e112a88313cd468e48027` |
| 55 | `theorem` | [piFinTwo_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/pifintwo-apply--27fa1ebf0ce0953d93591946.md) | 511 | `result-track:27fa1ebf0ce0953d93591946a3fc38d7e7c846762c39ee778592a958765de052` |
| 56 | `def` | [finTwoArrow](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/fintwoarrow--f025ce7a1d714256ea7dfd91.md) | 518 | `declaration-track:f025ce7a1d714256ea7dfd91f32ad125fce71977726e1a2217103f020c81e074` |
| 57 | `def` | [Function.ExtendByZero.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/function-extendbyzero-linearmap--6e632a3cf4e7101dcfdbc202.md) | 530 | `declaration-track:6e632a3cf4e7101dcfdbc202bfa996b9002140c6726482c34775a4548c4e9f38` |
| 58 | `def` | [LinearMap.vecEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/linearmap-vecempty--e39c2285ad4bcd0af865c512.md) | 561 | `declaration-track:e39c2285ad4bcd0af865c5128c9a2123f593d4a68be7626765944f30496dbfac` |
| 59 | `theorem` | [LinearMap.vecEmpty_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/linearmap-vecempty-apply--faa6873105662ad9ad4a7a58.md) | 568 | `result-track:faa6873105662ad9ad4a7a5814d7daaa1b9c8cc909e97582b0b31c09fa8476a1` |
| 60 | `def` | [LinearMap.vecCons](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/linearmap-veccons--e9a7aa503e65358b45bd6be9.md) | 574 | `declaration-track:e9a7aa503e65358b45bd6be9b6124acf73ffff61f784bc76ab79ffd78052cd5c` |
| 61 | `theorem` | [LinearMap.vecCons_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/linearmap-veccons-apply--d2b5f3d8013428dad6465766.md) | 585 | `result-track:d2b5f3d8013428dad64657669f559bb158c94abe62e3eb0c6c5b80fc0141766e` |
| 62 | `def` | [LinearMap.vecEmpty₂](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/linearmap-vecempty--5434ec74e2ced4546fbbdff2.md) | 600 | `declaration-track:5434ec74e2ced4546fbbdff2353d1e0143cb7847ef4169b442374ffdef57b356` |
| 63 | `def` | [LinearMap.vecCons₂](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant7f6e94f6551bc8c72a1eef9c63827e382a0ef033b0859f5a70ad87b23fec618c.lean/declarations/linearmap-veccons--c6b159b1ea627f5f290e1746.md) | 609 | `declaration-track:c6b159b1ea627f5f290e1746991d26d17d579ef75fe3baaabe5efdf2c185de91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
