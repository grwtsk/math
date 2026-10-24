# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WellFounded.Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1214eaa04473bde97264c9721e34614219017f8d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1214eaa04473bde97264c9721e34614219017f8d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Lex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GameAdd` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antisymmetrization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lex_fibration](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/lex-fibration--e295a23979a0353110169b6e.md) | 76 | `result-track:e295a23979a0353110169b6e46a56c3f0817abab1bb650d607f1ff41a17d5435` |
| 2 | `theorem` | [Lex.acc_of_single_erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/lex-acc-of-single-erase--ef5a331376e63ccb316d7de9.md) | 110 | `result-track:ef5a331376e63ccb316d7de95c0ab29de8146c2a13a3fbd8150c60756f290c24` |
| 3 | `theorem` | [Lex.acc_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/lex-acc-zero--4245521ecf01b9a3bb9da4bb.md) | 121 | `result-track:4245521ecf01b9a3bb9da4bb1c6e7e6a278d2bd7da7b2b0075006d2494ee3116` |
| 4 | `theorem` | [Lex.acc_of_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/lex-acc-of-single--799eaf6020006dbe9529050a.md) | 125 | `result-track:799eaf6020006dbe9529050afca439650f6b6abc78db9515df7ac993980a1a48` |
| 5 | `theorem` | [Lex.acc_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/lex-acc-single--0e3ffc0be4e428953e230dfa.md) | 141 | `result-track:0e3ffc0be4e428953e230dfadf1fc242583627a216273b3cd3901d3692ff6b35` |
| 6 | `theorem` | [Lex.acc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/lex-acc--e72467e2b95d90c87008a563.md) | 163 | `result-track:e72467e2b95d90c87008a563aea55eb65dd96876f02bbd8e7ca9e2fc355f7753` |
| 7 | `theorem` | [Lex.wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/lex-wellfounded--da1c9498f546392046c33098.md) | 168 | `result-track:da1c9498f546392046c330984e436a8f2feb46174b34baa81629661473ac880a` |
| 8 | `theorem` | [Lex.wellFounded'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/lex-wellfounded--0879e0fbc824155ddd7c2174.md) | 172 | `result-track:0879e0fbc824155ddd7c217433ce809ea053c7502d74479e6596e01fc63f1031` |
| 9 | `instance` | [Lex.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/lex-wellfoundedlt--19da08e4a9a347202bfdaad5.md) | 180 | `declaration-track:19da08e4a9a347202bfdaad54671028718d65ba432a92b6b9b08961529ce5d80` |
| 10 | `theorem` | [Pi.Lex.wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/pi-lex-wellfounded--d195ef8bb91041ee45924a7e.md) | 192 | `result-track:d195ef8bb91041ee45924a7ecc88a1f942166d3e283771a95ff2992aa25d1388` |
| 11 | `instance` | [Pi.Lex.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/pi-lex-wellfoundedlt--8dffa037747b024a4b9cc9ea.md) | 202 | `declaration-track:8dffa037747b024a4b9cc9ea1c3ad6b49aca014d8b06836f7af18973f29bfcbf` |
| 12 | `instance` | [Function.Lex.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/function-lex-wellfoundedlt--6a2decf84aff7f21b9e79e46.md) | 207 | `declaration-track:6a2decf84aff7f21b9e79e463331347199f9499455dac0b62326354532b87675` |
| 13 | `theorem` | [DFinsupp.Lex.wellFounded_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/dfinsupp-lex-wellfounded-of-finite--6e8ca8e6d24eabb9f8ca7962.md) | 212 | `result-track:6e8ca8e6d24eabb9f8ca7962b26ccf44917ce90fbbf3e906520fcd52ae7a9145` |
| 14 | `instance` | [DFinsupp.Lex.wellFoundedLT_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/dfinsupp-lex-wellfoundedlt-of-finite--39332b8c4af5c3e667b53a61.md) | 218 | `declaration-track:39332b8c4af5c3e667b53a61c562e7f961b1ddf44ce43224fc9a986732e82182` |
| 15 | `theorem` | [DFinsupp.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/dfinsupp-wellfoundedlt--93566f4e5794dd391fb16698.md) | 223 | `result-track:93566f4e5794dd391fb16698d26dbbfdbed643b2562e96f48d472910fa1a5f77` |
| 16 | `instance` | [DFinsupp.wellFoundedLT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/dfinsupp-wellfoundedlt--67dd090f647d2ffea8437829.md) | 243 | `declaration-track:67dd090f647d2ffea84378292f47dc176a5586708f8ae9a6f85d15a6bfb3606e` |
| 17 | `instance` | [Pi.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/pi-wellfoundedlt--d025c9f6ae963a1f8195118a.md) | 248 | `declaration-track:d025c9f6ae963a1f8195118aea25b06d50aef913a1c4666e89b4e2118737a1a7` |
| 18 | `instance` | [Function.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/function-wellfoundedlt--f3edd741a8554201cd24e883.md) | 259 | `declaration-track:f3edd741a8554201cd24e88317bfed6fd7d42a18b87d1fbdbeba8970525b9e9f` |
| 19 | `instance` | [DFinsupp.wellFoundedLT_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant3ab319e283e66301af2a519716a88138cab3fd11acafe18d84bbed8bcb179584.lean/declarations/dfinsupp-wellfoundedlt-of-finite--1a5aea124f813eaf3b224957.md) | 264 | `declaration-track:1a5aea124f813eaf3b224957b7e48f771643a668281428eaf1582d39f92abad9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
