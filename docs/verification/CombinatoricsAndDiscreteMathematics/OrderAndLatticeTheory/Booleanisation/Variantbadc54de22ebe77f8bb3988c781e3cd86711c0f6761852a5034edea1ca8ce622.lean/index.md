# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Booleanisation.Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e15db43a4b927e7635fd4eddda9ef36b76eeee5",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e15db43a4b927e7635fd4eddda9ef36b76eeee5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BooleanAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Booleanisation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/booleanisation--ec8237ecb2bd47e999bdc553.md) | 47 | `declaration-track:ec8237ecb2bd47e999bdc5538e5886c09920fed7c2326965fdea04334fe5a9fb` |
| 2 | `instance` | [instDecidableEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instdecidableeq--bfce549bb8dc60bf76b8e276.md) | 51 | `declaration-track:bfce549bb8dc60bf76b8e276eabafdf9e48ce049ea5be6b3f8ceb65c719642a3` |
| 3 | `def` | [lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/lift--bc3d72733e78f5076f34d339.md) | 56 | `declaration-track:bc3d72733e78f5076f34d339ee01d73312f298fd641e4b861f5185b369083067` |
| 4 | `def` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/comp--1bc26b729bdd3187f106db5c.md) | 59 | `declaration-track:1bc26b729bdd3187f106db5cd8b2220c8740d29a710282af85444edca5b05dcd` |
| 5 | `instance` | [instCompl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instcompl--103ed40039dafaf5ec19a71f.md) | 62 | `declaration-track:103ed40039dafaf5ec19a71fa8228f57ea6adacea2c28dc09b29abd35e18ae4b` |
| 6 | `lemma` | [compl_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/compl-lift--009aa108576b16dc8ad831c4.md) | 67 | `result-track:009aa108576b16dc8ad831c45971ce069b13dff586c44206d04aa647a55f5d80` |
| 7 | `lemma` | [compl_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/compl-comp--dd090358ca309a6b202be471.md) | 68 | `result-track:dd090358ca309a6b202be471bf16854923e3e32512a418012a4a2a9874a27a39` |
| 8 | `inductive` | [LE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/le--8dad8fa17492477c2a08f0aa.md) | 77 | `declaration-track:8dad8fa17492477c2a08f0aac6c7c4d18794a33ebbb5372a34699eb65d87edf8` |
| 9 | `inductive` | [LT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/lt--2c131df73ce48863c5f8a68a.md) | 87 | `declaration-track:2c131df73ce48863c5f8a68aec8c24b43695a984b717a33b407d80732670ae2d` |
| 10 | `instance` | [instLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instle--1cd3bab65a20367e88dd6162.md) | 93 | `declaration-track:1cd3bab65a20367e88dd6162daef4675cd4831a6a8b756361b4c8a0eb0772f2d` |
| 11 | `instance` | [instLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instlt--fd4ef9713e3b51171d368e41.md) | 97 | `declaration-track:fd4ef9713e3b51171d368e4181042247a02fd5c3e69db5adf368ef262c44f0f5` |
| 12 | `instance` | [instSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instsup--42e992e241e027382e294fe3.md) | 105 | `declaration-track:42e992e241e027382e294fe3ed18496d684997b117cbf65a2fc1ae6fef54463e` |
| 13 | `instance` | [instInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instinf--a980bf198dce5d6dad328f15.md) | 117 | `declaration-track:a980bf198dce5d6dad328f151a69af4f53d740722f9a9eaa100426e6be37ff1a` |
| 14 | `instance` | [instBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instbot--e6358416f4717e8a3df92bd6.md) | 125 | `declaration-track:e6358416f4717e8a3df92bd6b6304114e6d4e103ca5f0d8e499ac006168a9cf1` |
| 15 | `instance` | [instTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/insttop--cb0e3ff26e85553fa477745c.md) | 129 | `declaration-track:cb0e3ff26e85553fa477745ce6a747592694112b3e08171de89e2890be4770be` |
| 16 | `instance` | [instSDiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instsdiff--003447868290336978790e06.md) | 137 | `declaration-track:003447868290336978790e062e95ff05b44ddcf23ee4a1dd5be371a624e2c517` |
| 17 | `lemma` | [lift_le_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/lift-le-lift--3fcb4aea4c972c45329f612e.md) | 144 | `result-track:3fcb4aea4c972c45329f612ef48c48960cc195f79f544870d2c127cc38e3ce24` |
| 18 | `lemma` | [comp_le_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/comp-le-comp--27a5bd34df8eff2bb8a89b0e.md) | 145 | `result-track:27a5bd34df8eff2bb8a89b0e9921eec260d1ee6175ed12f0f73dd5fa42efb51a` |
| 19 | `lemma` | [lift_le_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/lift-le-comp--d2f87bc5798a8b26e248c1a9.md) | 146 | `result-track:d2f87bc5798a8b26e248c1a94d484dce03524c3562ff05e0cdfaf6774f58d59c` |
| 20 | `lemma` | [not_comp_le_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/not-comp-le-lift--2526c25d3670f479addf15eb.md) | 147 | `result-track:2526c25d3670f479addf15eb90f12d2db190a5083ddea2943a35edf244e9aaa3` |
| 21 | `lemma` | [lift_lt_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/lift-lt-lift--bd91891f7bcd71e287c097a2.md) | 149 | `result-track:bd91891f7bcd71e287c097a2b57442473339d0a47761f56b8fc1f52bd9dd4dd3` |
| 22 | `lemma` | [comp_lt_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/comp-lt-comp--07e217a3f3aefb164aec2dc0.md) | 150 | `result-track:07e217a3f3aefb164aec2dc0c0fa8d2e40efe922c630deaeb2466b8fb25f4df8` |
| 23 | `lemma` | [lift_lt_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/lift-lt-comp--702e061a536b22c6d15a6239.md) | 151 | `result-track:702e061a536b22c6d15a623977dbefc32a01527fab6b968216143e252c45e7b8` |
| 24 | `lemma` | [not_comp_lt_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/not-comp-lt-lift--45b128cadb8e1f18487a346a.md) | 152 | `result-track:45b128cadb8e1f18487a346a5bc1067d1701951735a4beea22e5f8d3447bd36f` |
| 25 | `lemma` | [lift_sup_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/lift-sup-lift--7df2197a02438a50603f4be0.md) | 154 | `result-track:7df2197a02438a50603f4be0f68813e9aac10a28b6ffcf8e6f7436995b15abdb` |
| 26 | `lemma` | [lift_sup_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/lift-sup-comp--861b98002b8f705f949fd141.md) | 155 | `result-track:861b98002b8f705f949fd1419907422ab617a9d61f5645bf2a8cec8baf78f728` |
| 27 | `lemma` | [comp_sup_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/comp-sup-lift--feddd1a054515e6955ac20cc.md) | 156 | `result-track:feddd1a054515e6955ac20cc9834504c09353ba33a425dea0fff64d28c0c0df8` |
| 28 | `lemma` | [comp_sup_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/comp-sup-comp--0cef198c82eb1cb73cff1db4.md) | 157 | `result-track:0cef198c82eb1cb73cff1db4a5de14850cc32e3ce0feaa86ce24957a5f2ed05b` |
| 29 | `lemma` | [lift_inf_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/lift-inf-lift--bb12442e6b57ce3cde55790c.md) | 159 | `result-track:bb12442e6b57ce3cde55790cc7a0e9faa911754f0a78033a5715678439b2e7d7` |
| 30 | `lemma` | [lift_inf_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/lift-inf-comp--60aae03f47f4a92fdf94553f.md) | 160 | `result-track:60aae03f47f4a92fdf94553fbcc7fb28f3acd9a43ea09a42ace0adee91e1d6f2` |
| 31 | `lemma` | [comp_inf_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/comp-inf-lift--262e4ff9eacc0d159b07d3c8.md) | 161 | `result-track:262e4ff9eacc0d159b07d3c844849e267fa624bc65ddf33bd7f83a8d24ed4790` |
| 32 | `lemma` | [comp_inf_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/comp-inf-comp--507380572e88a1bf4d80c3bf.md) | 162 | `result-track:507380572e88a1bf4d80c3bf5f75560f55337eed8b90d7936a1ee0395e731d22` |
| 33 | `lemma` | [lift_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/lift-bot--e1ca4d869a5cae5a85f0e53d.md) | 164 | `result-track:e1ca4d869a5cae5a85f0e53d2f234492830cd1b25b3040f33e0a0c37a2fcef83` |
| 34 | `lemma` | [comp_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/comp-bot--a1a94b866baebb163814f601.md) | 165 | `result-track:a1a94b866baebb163814f6013e941a28f1a517d7527923c46955cc1b8a5a0246` |
| 35 | `lemma` | [lift_sdiff_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/lift-sdiff-lift--38a02317379eef04670ea531.md) | 167 | `result-track:38a02317379eef04670ea5315a00372c67645a2419a2cec5dfdb747f7441d3bf` |
| 36 | `lemma` | [lift_sdiff_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/lift-sdiff-comp--25fb7237c3cbc9fdd1ee0ed9.md) | 168 | `result-track:25fb7237c3cbc9fdd1ee0ed91a5c3046db17705dace063329c6249e45dfb990b` |
| 37 | `lemma` | [comp_sdiff_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/comp-sdiff-lift--99cc501012375c1698699742.md) | 169 | `result-track:99cc501012375c169869974289be080fe9435087889a2df54bb6b17a6e1bb6d3` |
| 38 | `lemma` | [comp_sdiff_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/comp-sdiff-comp--6d05a662df81881bf04ff197.md) | 170 | `result-track:6d05a662df81881bf04ff197e520d9465d4f7da5b0067b0bcef91d3527afed73` |
| 39 | `instance` | [instPreorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instpreorder--53cac17f1d7f86c8de33ceac.md) | 172 | `declaration-track:53cac17f1d7f86c8de33ceacbc2d8f1f99bc03cd34caa50dce4b64543c992064` |
| 40 | `instance` | [instPartialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instpartialorder--8365d93f816f350e4fd19f06.md) | 188 | `declaration-track:8365d93f816f350e4fd19f06fc7243b4decdcbd24d9924aa8de91a7b20fc97f8` |
| 41 | `instance` | [instSemilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instsemilatticesup--3fa9b029f7f4cf4cc784861b.md) | 195 | `declaration-track:3fa9b029f7f4cf4cc784861b2229066759becea1eedbc16fde4c590a8616291f` |
| 42 | `instance` | [instSemilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instsemilatticeinf--fe7fae794ed25ecabe8c7eac.md) | 216 | `declaration-track:fe7fae794ed25ecabe8c7eac92f059f8207e6fffcf8fb9b87829affaf9562168` |
| 43 | `instance` | [instDistribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instdistriblattice--d7b78e1805e24a7488dc85f6.md) | 235 | `declaration-track:d7b78e1805e24a7488dc85f6903b9048e9fd7eb9000ce535dd504ee52e619953` |
| 44 | `instance` | [instBoundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instboundedorder--b7cc31c44b90a0269a577492.md) | 253 | `declaration-track:b7cc31c44b90a0269a5774925f08a99f7711879810d75b7f292a980dd02e8fb7` |
| 45 | `instance` | [instBooleanAlgebra](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/instbooleanalgebra--656bbd76890bad56e8df44e6.md) | 261 | `declaration-track:656bbd76890bad56e8df44e65d7ce7abeface571e4de5f6f91e9ae12305bda2a` |
| 46 | `def` | [liftLatticeHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/liftlatticehom--d9a2a400730dc4a723ab93db.md) | 277 | `declaration-track:d9a2a400730dc4a723ab93db90998f282670bfd76e02766aa0a50f0f78d6b412` |
| 47 | `lemma` | [liftLatticeHom_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/declarations/liftlatticehom-injective--00e4a5ae03a6e551a27eb4f3.md) | 282 | `result-track:00e4a5ae03a6e551a27eb4f3b34af9852b8a9b5c87b58e91d12fb7e49e4a926f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
