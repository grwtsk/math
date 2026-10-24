# Verification target: GRWTSK.Analysis.MeasureTheory.Basic.Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86ac1d73633a78975538c4f7d95c605d78b664aa",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86ac1d73633a78975538c4f7d95c605d78b664aa`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Complex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Metric` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Real` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_exp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-exp--b55edb6d4224f890710392bd.md) | 41 | `result-track:b55edb6d4224f890710392bdf1e5851c6ecb377fbad4ea485e2f328f1e53be0e` |
| 2 | `theorem` | [measurable_log](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-log--21a34a6848b1d849afae5972.md) | 45 | `result-track:21a34a6848b1d849afae597220c8567a2cba0a47fc02c61463e171b36d461c37` |
| 3 | `lemma` | [measurable_of_measurable_exp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-of-measurable-exp--d6942c9b14ba82239e654132.md) | 49 | `result-track:d6942c9b14ba82239e6541328a6bf35be064ff5ed15ad581bcff4ea7cc642361` |
| 4 | `lemma` | [aemeasurable_of_aemeasurable_exp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-of-aemeasurable-exp--dbe8bf3ef0618c7f2e20fb81.md) | 55 | `result-track:dbe8bf3ef0618c7f2e20fb8172bda34ca9ad8e91d9948278a3f7ff475fcf4362` |
| 5 | `lemma` | [aemeasurable_of_aemeasurable_exp_mul](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-of-aemeasurable-exp-mul--daf41df5862760fedae6b04c.md) | 61 | `result-track:daf41df5862760fedae6b04c33da1668c6b632d2a879793964d5058e88d9e18d` |
| 6 | `theorem` | [measurable_sin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-sin--a86a6a31f5f7efcc85088cc4.md) | 68 | `result-track:a86a6a31f5f7efcc85088cc4880533ae5bbd4e6220356e1fb7afa388cd349404` |
| 7 | `theorem` | [measurable_cos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-cos--7607e75b4b20dc8f2468df22.md) | 72 | `result-track:7607e75b4b20dc8f2468df22030bb821fb816e56e7c8edbd461058b8bad10e85` |
| 8 | `theorem` | [measurable_sinh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-sinh--f997bd35205e091acea5fa83.md) | 76 | `result-track:f997bd35205e091acea5fa83d7ab3c35c830b260e1a290a05f37a979744cd6f4` |
| 9 | `theorem` | [measurable_cosh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-cosh--a870fb3723b6ba5b4cf26ae0.md) | 80 | `result-track:a870fb3723b6ba5b4cf26ae08dc6f26d22303f2cebf225a1614062cf8ad6deea` |
| 10 | `theorem` | [measurable_arcsin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-arcsin--a55ca32a00181c22bce6d286.md) | 84 | `result-track:a55ca32a00181c22bce6d28642b97c7caccabf4297915c7e04ba785fb7b16c46` |
| 11 | `theorem` | [measurable_arccos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-arccos--583a8a1b361ef69cb97b7f8a.md) | 88 | `result-track:583a8a1b361ef69cb97b7f8ae9d19bc96db7373fc7c0242b5dc2d5677a19f5d5` |
| 12 | `theorem` | [measurable_re](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-re--ef9ae6ede40a6fd114fc3c37.md) | 96 | `result-track:ef9ae6ede40a6fd114fc3c37fd9d07bea73071528e4db824a7e4eaa51be75521` |
| 13 | `theorem` | [measurable_im](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-im--882d2c8f0128d191ec198881.md) | 100 | `result-track:882d2c8f0128d191ec1988816647907e30960d37d28bf225d101dd25499b297d` |
| 14 | `theorem` | [measurable_ofReal](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-ofreal--83f82337f3bee487d51ee6eb.md) | 104 | `result-track:83f82337f3bee487d51ee6eb43081479b9afac9ca59eddb7866981735abacd93` |
| 15 | `theorem` | [measurable_exp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-exp--b26e6a9c2b3478fb12a6288b.md) | 108 | `result-track:b26e6a9c2b3478fb12a6288b516415162e54aca3c0ded2f01e8ea597e5dc53c4` |
| 16 | `theorem` | [measurable_sin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-sin--a8bd9d14c92daa16fdd3ec76.md) | 112 | `result-track:a8bd9d14c92daa16fdd3ec769957e263b95cb79819d3ce59a694a1fd2e073f0f` |
| 17 | `theorem` | [measurable_cos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-cos--7397b6ed67173bc702031750.md) | 116 | `result-track:7397b6ed67173bc7020317500ae7562b5459ed08f646dff24ec5525d345da2a3` |
| 18 | `theorem` | [measurable_sinh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-sinh--b9401a57af0f463d5095eda4.md) | 120 | `result-track:b9401a57af0f463d5095eda4aa8cff5021b93f6835846e13eec4c04aec197e14` |
| 19 | `theorem` | [measurable_cosh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-cosh--458a368a1c4ac02c6d7130f2.md) | 124 | `result-track:458a368a1c4ac02c6d7130f2d1a6f119800d56daf8e0a2a708b546512891c22c` |
| 20 | `theorem` | [measurable_arg](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-arg--9f81e1ff0cb03f26f7d6d8bf.md) | 128 | `result-track:9f81e1ff0cb03f26f7d6d8bf4efff2ba580be9e26d423fcfd62b3e8569f83bf1` |
| 21 | `theorem` | [measurable_log](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-log--bb95d9f6557b49f1fb4e26f6.md) | 138 | `result-track:bb95d9f6557b49f1fb4e26f6b70d2b8dc6baa7410d269d9e8d5c6494df5943bd` |
| 22 | `theorem` | [Measurable.exp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-exp--6a23901884ee3cd5ec10a92a.md) | 152 | `result-track:6a23901884ee3cd5ec10a92a8046f5e3410cdcf38737074144dc33d6d6b89239` |
| 23 | `theorem` | [Measurable.log](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-log--54b06734e559f9fbba4e15cb.md) | 156 | `result-track:54b06734e559f9fbba4e15cbfb94c478ff0c4d292cc153fd7ad3077a39e17fa2` |
| 24 | `theorem` | [Measurable.cos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-cos--a434a7eb63757e3ef8dc1726.md) | 160 | `result-track:a434a7eb63757e3ef8dc172613fbee09b62f313f5cea289857f4e693f637710c` |
| 25 | `theorem` | [Measurable.sin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-sin--2b3c4278d34e4c4226cfee10.md) | 163 | `result-track:2b3c4278d34e4c4226cfee1088e9cc4bbd54a62a60f6e082c74c5dbef771574a` |
| 26 | `theorem` | [Measurable.cosh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-cosh--9ab75dde8df5acf46f4fd911.md) | 166 | `result-track:9ab75dde8df5acf46f4fd911864a3c9292feb7af9f23d634044b6b6d41eff837` |
| 27 | `theorem` | [Measurable.sinh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-sinh--063e2dc66607a3acfc83d3cf.md) | 169 | `result-track:063e2dc66607a3acfc83d3cf8f8e5f6f5be21acbdca5846a0f68b69fc855ef93` |
| 28 | `theorem` | [Measurable.sqrt](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-sqrt--22b21bd705c9fc1e724a90b4.md) | 172 | `result-track:22b21bd705c9fc1e724a90b4952f1e256049d40f5bf91e92a312d1e216e682a0` |
| 29 | `lemma` | [AEMeasurable.exp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-exp--3dd40ec5605054dec0537072.md) | 184 | `result-track:3dd40ec5605054dec053707230c0ca0028592791a4e9f3795c8486dea00ac9ea` |
| 30 | `lemma` | [AEMeasurable.log](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-log--625d143408301d2faf178b19.md) | 188 | `result-track:625d143408301d2faf178b19ed006a7e3248b73d76f60f557bdb29cad4d49b33` |
| 31 | `lemma` | [AEMeasurable.cos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-cos--982190110e06ee70870b5027.md) | 192 | `result-track:982190110e06ee70870b50279035bb1897c2f9de14e6c62cd46e363be3d62e08` |
| 32 | `lemma` | [AEMeasurable.sin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-sin--59bc6c10b9a9582523adff9f.md) | 196 | `result-track:59bc6c10b9a9582523adff9f4e171f4278139165ded939906f629356d23b6ba8` |
| 33 | `lemma` | [AEMeasurable.cosh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-cosh--9b1d5ccdbcc21c16a4b9bfca.md) | 200 | `result-track:9b1d5ccdbcc21c16a4b9bfcae0c457fff6374ede4e618f96ff64728528dc594d` |
| 34 | `lemma` | [AEMeasurable.sinh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-sinh--27fc51705b31fad23757e503.md) | 204 | `result-track:27fc51705b31fad23757e5035e17fddaa3cf533c656a07bcf2949c8e0569fe5f` |
| 35 | `lemma` | [AEMeasurable.sqrt](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-sqrt--a0ce40c5c5ae2e28796f278c.md) | 208 | `result-track:a0ce40c5c5ae2e28796f278c1b036c3071653007a019d639fd0fd6c6b0bac0c7` |
| 36 | `theorem` | [Measurable.cexp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-cexp--75c692ac716b99d70bab556c.md) | 221 | `result-track:75c692ac716b99d70bab556c3776e852cc8398b02e1e181c626d7ab4ed86fe08` |
| 37 | `theorem` | [Measurable.ccos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-ccos--af46616a8d3098efabb9f8af.md) | 225 | `result-track:af46616a8d3098efabb9f8af5ec2539fe45995009286c3cf7604ae6490158f22` |
| 38 | `theorem` | [Measurable.csin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-csin--2e3adc4e548d3e614968d854.md) | 229 | `result-track:2e3adc4e548d3e614968d8545f171cf27a25952f45a959ea75c2a12acf5c7323` |
| 39 | `theorem` | [Measurable.ccosh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-ccosh--94a65423d6dfe5d16b93dd84.md) | 233 | `result-track:94a65423d6dfe5d16b93dd84a20bf67729b338397835e0932133f5041a36def7` |
| 40 | `theorem` | [Measurable.csinh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-csinh--b45d8b235337653b2a999bc3.md) | 237 | `result-track:b45d8b235337653b2a999bc37825bcc330561fe0c11499f0b6a2d8f47afb5511` |
| 41 | `theorem` | [Measurable.carg](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-carg--2bbb6d26bd14bc5ee9622c1a.md) | 241 | `result-track:2bbb6d26bd14bc5ee9622c1ae5d525df461c39f0475e44841edccdcddc720b91` |
| 42 | `theorem` | [Measurable.clog](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-clog--91127845a746420f7211d0f5.md) | 245 | `result-track:91127845a746420f7211d0f57eea84e5eb9012f2bff12cfe3e4b9c4a40666d47` |
| 43 | `lemma` | [AEMeasurable.cexp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-cexp--16ffc2645528488d164fb13e.md) | 258 | `result-track:16ffc2645528488d164fb13eb53a5553a00fe0743906910548945047caa8bf22` |
| 44 | `lemma` | [AEMeasurable.ccos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-ccos--c6ed72c11fc8747537b68533.md) | 262 | `result-track:c6ed72c11fc8747537b68533cb8e58f47494a99b1b7cb663306778263d8d8127` |
| 45 | `lemma` | [AEMeasurable.csin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-csin--9cb4d6ca28f4ae25d265a298.md) | 266 | `result-track:9cb4d6ca28f4ae25d265a298752b45ddc9ff6483c73e53dab69889592fb2b0b4` |
| 46 | `lemma` | [AEMeasurable.ccosh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-ccosh--76ed31575f5ca0a601d70cec.md) | 270 | `result-track:76ed31575f5ca0a601d70cece33c9a1ea5d925fa846a0b10c2e44f04a33629db` |
| 47 | `lemma` | [AEMeasurable.csinh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-csinh--80f7a1c83a3183ddc5ad989c.md) | 274 | `result-track:80f7a1c83a3183ddc5ad989ca67889d363d1a6471e299560ef86ad6ca4fcd38b` |
| 48 | `lemma` | [AEMeasurable.carg](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-carg--bafe62bcb5554ed7113c58be.md) | 278 | `result-track:bafe62bcb5554ed7113c58bea60842945f54b6e226d9c3a04ed1485d3af1b469` |
| 49 | `lemma` | [AEMeasurable.clog](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-clog--2f66cd6af59098ac09ed5b51.md) | 282 | `result-track:2f66cd6af59098ac09ed5b51b220726f1f59f4831710f9768d205ad6b7a88c85` |
| 50 | `theorem` | [Measurable.complex_ofReal](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/measurable-complex-ofreal--7a4428593978e1a72f52672c.md) | 288 | `result-track:7a4428593978e1a72f52672ca968ae39857e818b29af3d32838d7e2200972aa0` |
| 51 | `theorem` | [AEMeasurable.complex_ofReal](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/aemeasurable-complex-ofreal--d697a2e1b1644c2d25bf40b3.md) | 294 | `result-track:d697a2e1b1644c2d25bf40b3748e2897898318b9a4d3c4aacfe7dea05ea8b6f3` |
| 52 | `instance` | [Complex.hasMeasurablePow](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/complex-hasmeasurablepow--35b0567806e99d447aa701b8.md) | 301 | `declaration-track:35b0567806e99d447aa701b898304559e6daf2b21dc5f5d8605b26381975bd47` |
| 53 | `instance` | [Real.hasMeasurablePow](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/real-hasmeasurablepow--7ee85f0b57bd924790e4f2d1.md) | 306 | `declaration-track:7ee85f0b57bd924790e4f2d145fdcba0c4c64b293d6b3b820d899a258a7908b8` |
| 54 | `instance` | [NNReal.hasMeasurablePow](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/nnreal-hasmeasurablepow--1edb4b1cdb37f2d547bc0d64.md) | 311 | `declaration-track:1edb4b1cdb37f2d547bc0d6438b385b7908735c3766fba2c8792060cb5cc0f62` |
| 55 | `instance` | [ENNReal.hasMeasurablePow](../../../../../mathematics/Analysis/MeasureTheory/Basic/Varianteea9e2478bd975ec3d75cf2172bdaaf3202077a69298bea575b29183b7a23a1b.lean/declarations/ennreal-hasmeasurablepow--16c1d75cdded251a294f8346.md) | 314 | `declaration-track:16c1d75cdded251a294f83465959bace99b66e9d320f0ac4330b3ece29b1b4b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
