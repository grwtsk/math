# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "865df3b312281913239d409038619c65d5168f0d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `865df3b312281913239d409038619c65d5168f0d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Nodup` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Pi.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/declarations/pi-empty--4677db91cc86cac273f3f56d.md) | 25 | `declaration-track:4677db91cc86cac273f3f56de2abdad63436007b9cf8f16fa62ff31ba36481d6` |
| 2 | `def` | [Pi.cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/declarations/pi-cons--0c12840449d429001cf507a2.md) | 35 | `declaration-track:0c12840449d429001cf507a2ae30ff1355ec98b3038dde6929d793fb91f26567` |
| 3 | `theorem` | [Pi.cons_same](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/declarations/pi-cons-same--91f82bae1a18af4eac6dad8a.md) | 39 | `result-track:91f82bae1a18af4eac6dad8a2ea9a693b89cdf71267ad1a6c113a80e0653c828` |
| 4 | `theorem` | [Pi.cons_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/declarations/pi-cons-ne--7dfb5f9f1477600fea65ef57.md) | 44 | `result-track:7dfb5f9f1477600fea65ef57affd4174d825f9632fc50bc4e0cdedaeeb8b0760` |
| 5 | `theorem` | [Pi.cons_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/declarations/pi-cons-swap--5558c5dbb46f825028ec9139.md) | 49 | `result-track:5558c5dbb46f825028ec91393fe3129faa50ab0b8311fcc850f6256439a0b7ec` |
| 6 | `theorem` | [pi.cons_eta](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/declarations/pi-cons-eta--afbc2309c42d8049747442f7.md) | 62 | `result-track:afbc2309c42d8049747442f70b1d511d86e17599a1af623652654999e4ccbd71` |
| 7 | `theorem` | [Pi.cons_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/declarations/pi-cons-injective--7020028139f4597787ac331f.md) | 71 | `result-track:7020028139f4597787ac331f121fa1d5b51118cbbf7617419e760566a7f92c7c` |
| 8 | `def` | [pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/declarations/pi--ebc41ea722775d318ea2ffe5.md) | 84 | `declaration-track:ebc41ea722775d318ea2ffe58aadd32720c42e0f4a844ca38ca242faf1e51a53` |
| 9 | `theorem` | [pi_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/declarations/pi-zero--fa1cc40de40ea22599eb87c5.md) | 105 | `result-track:fa1cc40de40ea22599eb87c5e90f35b6f6eae7a80877fd2bfb6507497649b0a4` |
| 10 | `theorem` | [pi_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/declarations/pi-cons--c7ab0cc05acfb933986d99d3.md) | 110 | `result-track:c7ab0cc05acfb933986d99d3ad4da638d5cfaac38f65ffecbb35754fede4286b` |
| 11 | `theorem` | [card_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/declarations/card-pi--d50642fd7f7df5989a1ca91a.md) | 115 | `result-track:d50642fd7f7df5989a1ca91aa3bfc86d68f74e9ab7dfd3d5ca13400494518c4e` |
| 12 | `theorem` | [Nodup.pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/declarations/nodup-pi--2b261ea4181f2b495759dac5.md) | 120 | `result-track:2b261ea4181f2b495759dac5c9e04afe0f43b002cfe42ccacc0fd1eff3ca35e4` |
| 13 | `theorem` | [mem_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9.lean/declarations/mem-pi--a7808ffca6f13cddeba1415c.md) | 139 | `result-track:a7808ffca6f13cddeba1415c6c481703f66afb7abc35e3d06676a5ffd57af8f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
