# Verification target: GRWTSK.Topology.GeneralTopology.MonotoneConvergence.Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5edbce3f79ce364583912471e4dc6f315b8ddff0",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5edbce3f79ce364583912471e4dc6f315b8ddff0`.

Source path: `GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SupConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/supconvergenceclass--4e9a87f5aba98a2c8c33987c.md) | 39 | `declaration-track:4e9a87f5aba98a2c8c33987c1184d74f8273b89bfd9b820c4fb9e46181eaff20` |
| 2 | `class` | [InfConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/infconvergenceclass--c14257c4280a8489976a5e7c.md) | 50 | `declaration-track:c14257c4280a8489976a5e7c66325467a22771fdaf6aec9db7e7d81bd6d366b0` |
| 3 | `instance` | [OrderDual.supConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/orderdual-supconvergenceclass--68f437aca07114d1eeed572c.md) | 55 | `declaration-track:68f437aca07114d1eeed572c4c65461a35251541bcc4aeae53a607be98ca3dba` |
| 4 | `instance` | [OrderDual.infConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/orderdual-infconvergenceclass--a0fb0c3f86ea8b172d7767c3.md) | 59 | `declaration-track:a0fb0c3f86ea8b172d7767c3a2357b0311da22c69f0a50d0356e63eae2a30691` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/instance--9331b617ee60192125d85b2e.md) | 64 | `declaration-track:9331b617ee60192125d85b2ecb7ac22fe18d15bd5e40ecae5da464d637ff02d9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/instance--ec18f7e1f84795ac41b8a260.md) | 73 | `declaration-track:ec18f7e1f84795ac41b8a26010e56cf7ab4b9f9228e58b066910541c58e5a12b` |
| 7 | `theorem` | [tendsto_atTop_isLUB](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-attop-islub--966463bb8fb0252fcf6c975d.md) | 85 | `result-track:966463bb8fb0252fcf6c975defebcc99b34cb65c4c9262f53334f98a97d8e6cd` |
| 8 | `theorem` | [tendsto_atBot_isLUB](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-atbot-islub--179963dd033ef59eda565931.md) | 91 | `result-track:179963dd033ef59eda5659317c23a95e8e36b88cd8b5cfab5112adfea85ed184` |
| 9 | `theorem` | [tendsto_atBot_isGLB](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-atbot-isglb--49f82e4e54b5d3230a0627b3.md) | 100 | `result-track:49f82e4e54b5d3230a0627b38321b8c49d0c19ec7f2b3ef8446e261c22b186bf` |
| 10 | `theorem` | [tendsto_atTop_isGLB](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-attop-isglb--bb039718c787ef97938a5da9.md) | 103 | `result-track:bb039718c787ef97938a5da9a326d7ec0be0524b011a0b7394d0f1d22b747aa4` |
| 11 | `theorem` | [tendsto_atTop_ciSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-attop-cisup--26ddce108c9a15679168e305.md) | 112 | `result-track:26ddce108c9a15679168e305b35190037de14fffcacec2d6cf29d8dc82afb316` |
| 12 | `theorem` | [tendsto_atBot_ciSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-atbot-cisup--dcddf2688452a69ce9cdc6ca.md) | 117 | `result-track:dcddf2688452a69ce9cdc6ca66b00df3f7f29443e3fd95f64ad2373f2c12e8cd` |
| 13 | `theorem` | [tendsto_atBot_ciInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-atbot-ciinf--3794005c18db5347532f75c2.md) | 126 | `result-track:3794005c18db5347532f75c2304d3b8696b04b448e12611bf4970a6a140218d4` |
| 14 | `theorem` | [tendsto_atTop_ciInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-attop-ciinf--007298c57684a54027fa1fc2.md) | 129 | `result-track:007298c57684a54027fa1fc20503059386eb198ba18387784f02c0da59080ff3` |
| 15 | `theorem` | [tendsto_atTop_iSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-attop-isup--97366058c4dcb2611665dd86.md) | 138 | `result-track:97366058c4dcb2611665dd866d1e3b28c4c619c619fdbdd393cd48a13152c193` |
| 16 | `theorem` | [tendsto_atBot_iSup](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-atbot-isup--64ff20310e0e7cf24e022b4c.md) | 141 | `result-track:64ff20310e0e7cf24e022b4cc99a552e59c5b70aa60546727bb74d152815280f` |
| 17 | `theorem` | [tendsto_atBot_iInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-atbot-iinf--6a93b2f27a2b7d538e4ff08a.md) | 150 | `result-track:6a93b2f27a2b7d538e4ff08a83dad061e3959d37abc61a705fea93a57aaf3f7d` |
| 18 | `theorem` | [tendsto_atTop_iInf](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-attop-iinf--7208cc5e51a1c53106e0892e.md) | 153 | `result-track:7208cc5e51a1c53106e0892edeade6998d830f689386c24af9e4df8c67ff8ff1` |
| 19 | `instance` | [Prod.supConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/prod-supconvergenceclass--cebf1111c8b895cb6015395b.md) | 160 | `declaration-track:cebf1111c8b895cb6015395b9c3379cca9ec63394af7732e79f13a3a3787d684` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/instance--ca22ce0e283bdfb68d6ac9b1.md) | 172 | `declaration-track:ca22ce0e283bdfb68d6ac9b12f9ecf2127da7de2fd2902c560fb688c0ca3cdb2` |
| 21 | `instance` | [Pi.supConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/pi-supconvergenceclass--329509a4ecc5071066b9da6c.md) | 176 | `declaration-track:329509a4ecc5071066b9da6c8c7010521e79547c23acc9ccf733c0b6f73158a9` |
| 22 | `instance` | [Pi.infConvergenceClass](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/pi-infconvergenceclass--137467d5987f4bd57e715229.md) | 183 | `declaration-track:137467d5987f4bd57e7152292ec7b2d66842f8c828cf7f8dd892c935da1cc595` |
| 23 | `instance` | [Pi.supConvergenceClass'](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/pi-supconvergenceclass--f144dc837ecd8abc02aea4fc.md) | 188 | `declaration-track:f144dc837ecd8abc02aea4fcb817c9925d4a9c5b267d3e4596c9ec1c7c40ae64` |
| 24 | `instance` | [Pi.infConvergenceClass'](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/pi-infconvergenceclass--d77660bd431296ed34d96549.md) | 192 | `declaration-track:d77660bd431296ed34d96549b4e82cf2ddf9d0334280f999f0d2ebd7b71112a0` |
| 25 | `theorem` | [tendsto_of_monotone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-of-monotone--a192055179cb684ba22ec903.md) | 196 | `result-track:a192055179cb684ba22ec90354dc192c995a2c260d2c6dcda1425f28ca3fa6a5` |
| 26 | `theorem` | [tendsto_of_antitone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-of-antitone--d3791d883913b03f5eabab21.md) | 203 | `result-track:d3791d883913b03f5eabab212ced3e6fa16a51b8320800b42943c3e9707ac873` |
| 27 | `theorem` | [tendsto_iff_tendsto_subseq_of_monotone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-iff-tendsto-subseq-of-monotone--331d97b0bf3883a05b8e6823.md) | 208 | `result-track:331d97b0bf3883a05b8e682347d9b243b8c9dcb73959eb709fe3990e7266ec6d` |
| 28 | `theorem` | [tendsto_iff_tendsto_subseq_of_antitone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/tendsto-iff-tendsto-subseq-of-antitone--ab83882531cb2bb7e89d94ec.md) | 218 | `result-track:ab83882531cb2bb7e89d94ecb22a9e21edc56da9b675075336d796dd8a386729` |
| 29 | `theorem` | [Monotone.ge_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/monotone-ge-of-tendsto--2cb4a2efb184b8b081a8cb80.md) | 232 | `result-track:2cb4a2efb184b8b081a8cb80f441fe483a08f6f0850b9998ef5b7187aca22ff7` |
| 30 | `theorem` | [Monotone.le_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/monotone-le-of-tendsto--efd9f87b65b09381a2572176.md) | 238 | `result-track:efd9f87b65b09381a25721766986387c2f074e3d8892b957e539d40f22e6cf21` |
| 31 | `theorem` | [Antitone.le_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/antitone-le-of-tendsto--8fc7cbcc6cb38a3f3125fe84.md) | 243 | `result-track:8fc7cbcc6cb38a3f3125fe84972c1af5823131f78089400136d0c8b5503b546b` |
| 32 | `theorem` | [Antitone.ge_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/antitone-ge-of-tendsto--2e2fb7035f1da9c7111a8606.md) | 248 | `result-track:2e2fb7035f1da9c7111a8606d5c1621a15020515015131da13ccedb6c8eed574` |
| 33 | `theorem` | [isLUB_of_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/islub-of-tendsto-attop--083fcf209ac5538b2745516a.md) | 253 | `result-track:083fcf209ac5538b2745516aef59f7d6b997c3b89cd8a887b908702142d78e78` |
| 34 | `theorem` | [isGLB_of_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/isglb-of-tendsto-atbot--28a34b3807a4f295c6b94922.md) | 261 | `result-track:28a34b3807a4f295c6b949227d9115ea1a1307eae60788f8ac04adf8bdd098e0` |
| 35 | `theorem` | [isLUB_of_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/islub-of-tendsto-atbot--1b049a2e7930942ca3bdca62.md) | 266 | `result-track:1b049a2e7930942ca3bdca6254bc8d65ff5635f59d7083ea3c29f6cfcac75b91` |
| 36 | `theorem` | [isGLB_of_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/isglb-of-tendsto-attop--e89304ae57f34843e2f82de7.md) | 271 | `result-track:e89304ae57f34843e2f82de7675790b4f4d537229d8e975e00cc6aa94fb0f487` |
| 37 | `theorem` | [iSup_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/isup-eq-of-tendsto--750f3eba76067fbc682cb6a0.md) | 276 | `result-track:750f3eba76067fbc682cb6a0d7a7cefbc6a98724dd13af6547054fba8c91c3f0` |
| 38 | `theorem` | [iInf_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/iinf-eq-of-tendsto--960fecb041891faabdf17059.md) | 281 | `result-track:960fecb041891faabdf17059799fdd750d1fc910d913ceb3bfc60900ce9a1b97` |
| 39 | `theorem` | [iSup_eq_iSup_subseq_of_monotone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/isup-eq-isup-subseq-of-monotone--d0fdae1a3c20fbcaf870cce1.md) | 286 | `result-track:d0fdae1a3c20fbcaf870cce11c057292dc8f28ffbb6291e0d84bc2d211e0c34d` |
| 40 | `theorem` | [iSup_eq_iSup_subseq_of_antitone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/isup-eq-isup-subseq-of-antitone--4b64523b055eeb27443b6d46.md) | 294 | `result-track:4b64523b055eeb27443b6d4649355ba046f39fb7cb4ef5e0188ce134fb8a6e9d` |
| 41 | `theorem` | [iInf_eq_iInf_subseq_of_monotone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/iinf-eq-iinf-subseq-of-monotone--1cd893d329fc1533aae4d614.md) | 302 | `result-track:1cd893d329fc1533aae4d61469789451245b457f2ceccd0a88ee4956bf6d274f` |
| 42 | `theorem` | [iInf_eq_iInf_subseq_of_antitone](../../../../../mathematics/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/declarations/iinf-eq-iinf-subseq-of-antitone--d662cca2dba4617ea623d553.md) | 307 | `result-track:d662cca2dba4617ea623d553f541ada818bb7c3d0d97fc12e13bc64bba55b118` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
