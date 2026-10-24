# Verification target: GRWTSK.Analysis.MeasureTheory.ContinuousFunctions.Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c22dc7bde5fb355b60f69e2965b32ff13442032b",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c22dc7bde5fb355b60f69e2965b32ff13442032b`.

Source path: `GRWTSK/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean.json)

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
| 1 | `def` | [MeasureTheory.Lp.boundedContinuousFunction](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/measuretheory-lp-boundedcontinuousfunction--b60f496aa57e4e692118a618.md) | 32 | `declaration-track:b60f496aa57e4e692118a618462a11454919d6e6f79992dd0cb3a3d5317b2b43` |
| 2 | `theorem` | [MeasureTheory.Lp.mem_boundedContinuousFunction_iff](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/measuretheory-lp-mem-boundedcontinuousfunction-iff--5f82b9e749599c8a27ccecf0.md) | 38 | `result-track:5f82b9e749599c8a27ccecf06272e09cf2563d677461b5354afba994f20345f2` |
| 3 | `theorem` | [memLp_top](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/memlp-top--56b0e37af86af7311a79f4af.md) | 46 | `result-track:56b0e37af86af7311a79f4af160e309766d9bdd46017a358e01516d48366911c` |
| 4 | `theorem` | [mem_Lp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/mem-lp--595573ef4248f8096aa95327.md) | 53 | `result-track:595573ef4248f8096aa95327f6544e39d61be5513541416fe83a076df7f78dc0` |
| 5 | `theorem` | [Lp_nnnorm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/lp-nnnorm-le--f38326f3d05465b6a8663e2d.md) | 60 | `result-track:f38326f3d05465b6a8663e2d126618c8addde1adaf76223bb73ae135a31aa93f` |
| 6 | `theorem` | [Lp_norm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/lp-norm-le--386ae7b075c0ca3a3ccfd28e.md) | 71 | `result-track:386ae7b075c0ca3a3ccfd28ea81669e3c061b67400f222cb0251de940fd72715` |
| 7 | `def` | [toLpHom](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/tolphom--aaff21873a2c630a7d436d96.md) | 80 | `declaration-track:aaff21873a2c630a7d436d96c5518e69af08cfdee3ba5dcdb6a7423cd9cfaa9f` |
| 8 | `theorem` | [range_toLpHom](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/range-tolphom--a1d96734e4975224c99b55a0.md) | 85 | `result-track:a1d96734e4975224c99b55a09ef55c6a8037961cbf76454d168176a51431bc2a` |
| 9 | `def` | [toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/tolp--206ca3d2260733ddd5757215.md) | 97 | `declaration-track:206ca3d2260733ddd575721533f9334f9748eab2c45af1f70e7c3a201f736adf` |
| 10 | `theorem` | [coeFn_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/coefn-tolp--16ba75f7f60bf4ef6a9d17b0.md) | 103 | `result-track:16ba75f7f60bf4ef6a9d17b0830db62340e85ae41e219aef374dfdb4371b047d` |
| 11 | `theorem` | [range_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/range-tolp--c954a4c6fe235b05ac1e3961.md) | 109 | `result-track:c954a4c6fe235b05ac1e3961426b091fc51e50dcda8f8552f667202df4344941` |
| 12 | `theorem` | [toLp_norm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/tolp-norm-le--140499bd1c5ae5778af78edd.md) | 116 | `result-track:140499bd1c5ae5778af78edd67581dd3128d12aa3f225e2350fcff325b85d9bc` |
| 13 | `theorem` | [toLp_inj](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/tolp-inj--fec12febc14ae67715a32e62.md) | 120 | `result-track:fec12febc14ae67715a32e6210bbcff752cc7fe9de8f8c0d95d0be16f1db03df` |
| 14 | `theorem` | [toLp_injective](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/tolp-injective--2eb19f687a01c565ad2894fd.md) | 127 | `result-track:2eb19f687a01c565ad2894fd96017d91f1ad3778cefe09a0c539a75b5289b89c` |
| 15 | `def` | [toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/tolp--9304574af1c780b93925ddfb.md) | 143 | `declaration-track:9304574af1c780b93925ddfbe6f6080223690961888261ecfa41353986e42e02` |
| 16 | `theorem` | [range_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/range-tolp--ee2b9db3432a46830413d5ec.md) | 149 | `result-track:ee2b9db3432a46830413d5ecaa607cd89ebdbfa9b5cd0cad159f15a5a6216776` |
| 17 | `theorem` | [coeFn_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/coefn-tolp--5eaf9eae1eb090ad085bb5e7.md) | 160 | `result-track:5eaf9eae1eb090ad085bb5e7682cdd69e3c5def52dd66077f6c365393db11af6` |
| 18 | `theorem` | [toLp_def](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/tolp-def--8c3c20c415c9a1c07baa27d5.md) | 164 | `result-track:8c3c20c415c9a1c07baa27d55bf4765da36ec5d6f2488bdb3662a437fc195cc1` |
| 19 | `theorem` | [toLp_comp_toContinuousMap](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/tolp-comp-tocontinuousmap--0cd193dff03109e712d0ae9a.md) | 170 | `result-track:0cd193dff03109e712d0ae9adac695367074a55cbd7d88d1872dacd5ab91c2cc` |
| 20 | `theorem` | [coe_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/coe-tolp--67289c4deb44115cc2d5a91c.md) | 175 | `result-track:67289c4deb44115cc2d5a91c4b141cbb1845f3299b40c731195950050836098d` |
| 21 | `theorem` | [toLp_injective](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/tolp-injective--11182d729f76dcf1ebd0595a.md) | 179 | `result-track:11182d729f76dcf1ebd0595a3300165cc2a264e5cde0d1ef22317dc649749b74` |
| 22 | `theorem` | [toLp_inj](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/tolp-inj--0f6e379aa8134e9a915c734e.md) | 183 | `result-track:0f6e379aa8134e9a915c734e8fcc18539ec82a68648d809fd81008c96fe7256a` |
| 23 | `theorem` | [hasSum_of_hasSum_Lp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/hassum-of-hassum-lp--f57eb8e9234a1e0fd974fd5e.md) | 191 | `result-track:f57eb8e9234a1e0fd974fd5e7c35dacd55805743f6bb815b0342abb342a99e78` |
| 24 | `theorem` | [toLp_norm_eq_toLp_norm_coe](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/tolp-norm-eq-tolp-norm-coe--fbd5c2c448e0b72fe2f7211e.md) | 199 | `result-track:fbd5c2c448e0b72fe2f7211ef39b63be70bf4991ebcc6accb527228fece401e3` |
| 25 | `theorem` | [toLp_norm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/tolp-norm-le--4b834d026b93d8a801c6f8a2.md) | 205 | `result-track:4b834d026b93d8a801c6f8a2679665de100494a1b9940e51691c71ee80e43d5f` |
| 26 | `lemma` | [memLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant7d538ed26fd0a954fe4fe9d2c789b7c1cc84b4a3c2fa881b5666b5a5002f2238.lean/declarations/memlp--92fa3e7fd0c498639a228ee9.md) | 210 | `result-track:92fa3e7fd0c498639a228ee9d5ac7f04877633ed7cd45b2de4fedaa2b1a73bde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
