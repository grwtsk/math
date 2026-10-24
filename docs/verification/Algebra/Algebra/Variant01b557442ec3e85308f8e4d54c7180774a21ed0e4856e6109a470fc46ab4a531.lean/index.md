# Verification target: GRWTSK.Algebra.Algebra.Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5da759bec095fe3afcd27c7b6181c02e978246cc",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5da759bec095fe3afcd27c7b6181c02e978246cc`.

Source path: `GRWTSK/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeAlgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CharP.dvd_of_ringHom](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/charp-dvd-of-ringhom--b0e0a840767e0a46ec4f44b8.md) | 40 | `result-track:b0e0a840767e0a46ec4f44b8e9697f533f9cdd259a44d5307ed04932fbb7cfc0` |
| 2 | `theorem` | [CharP.of_ringHom_of_ne_zero](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/charp-of-ringhom-of-ne-zero--927a198c3effd472b811cea8.md) | 46 | `result-track:927a198c3effd472b811cea8aa57d9ba1793e518f3a37fec4e2ad85dc16a5285` |
| 3 | `theorem` | [charP_of_injective_ringHom](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/charp-of-injective-ringhom--7dcae6579cc751d8f1edaef7.md) | 58 | `result-track:7dcae6579cc751d8f1edaef75dad5fa9753046db4fb9a4d87500859b6b3f74f3` |
| 4 | `theorem` | [charP_of_injective_algebraMap](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/charp-of-injective-algebramap--a64d84094b81ea611eef3c94.md) | 64 | `result-track:a64d84094b81ea611eef3c94e5ce0948bbb919560cd61ae79a30734ae2fafff2` |
| 5 | `theorem` | [charP_of_injective_algebraMap'](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/charp-of-injective-algebramap--a2a59ec8a192f97d16e6cd4f.md) | 68 | `result-track:a2a59ec8a192f97d16e6cd4f4355a38b3d7fda89c043ae774a0866521970af0a` |
| 6 | `theorem` | [charZero_of_injective_ringHom](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/charzero-of-injective-ringhom--dbe6cb3168931e5f54b6062b.md) | 74 | `result-track:dbe6cb3168931e5f54b6062bc977c5aa4000d0ee63b13b59d8727f6107dd74fc` |
| 7 | `theorem` | [charZero_of_injective_algebraMap](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/charzero-of-injective-algebramap--7c69f6a6830bf652d081318b.md) | 79 | `result-track:7c69f6a6830bf652d081318bb30a92d308da9d4dc9242a2bacff17fc6cd21ed8` |
| 8 | `theorem` | [RingHom.charP](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/ringhom-charp--9518771bb7d9f8b1be05dd35.md) | 85 | `result-track:9518771bb7d9f8b1be05dd35951dc0e6ef9cf5d6c23e796e0c1a18f940dbbc20` |
| 9 | `theorem` | [RingHom.charP_iff](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/ringhom-charp-iff--984a244f305e50bc7b616e33.md) | 92 | `result-track:984a244f305e50bc7b616e331d980f5e95bffe914bdb8f5d8f4792306dc5e520` |
| 10 | `lemma` | [expChar_of_injective_ringHom](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/expchar-of-injective-ringhom--dad0c6b96906a3b5f4da0ad2.md) | 98 | `result-track:dad0c6b96906a3b5f4da0ad26e1f75c4908ebc84ac1f9bc7ce837d0876076c35` |
| 11 | `lemma` | [RingHom.expChar](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/ringhom-expchar--cf448571270f7fe9e5b2e2a5.md) | 107 | `result-track:cf448571270f7fe9e5b2e2a59bc783061c7ea8f7228b72351d427f90bcaa92e1` |
| 12 | `lemma` | [RingHom.expChar_iff](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/ringhom-expchar-iff--8d7359770c4fece231383793.md) | 115 | `result-track:8d7359770c4fece231383793b5301449079cfb471cf6191ef8d31d6d84ca83d5` |
| 13 | `lemma` | [expChar_of_injective_algebraMap](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/expchar-of-injective-algebramap--aa9b075b66bb0a3fc8315186.md) | 121 | `result-track:aa9b075b66bb0a3fc831518625ed150806f80a728a827a99f792163ee97d22a5` |
| 14 | `theorem` | [algebraRat.charP_zero](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/algebrarat-charp-zero--00566689d081be2404b7cfec.md) | 142 | `result-track:00566689d081be2404b7cfecfdc7bdaee99c691816287cd7076503575e9237fc` |
| 15 | `theorem` | [algebraRat.charZero](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/algebrarat-charzero--b3eeab84c6871b8f1b9680e8.md) | 151 | `result-track:b3eeab84c6871b8f1b9680e8904c4f650bfb64c1145b03cea6997f49241faf2b` |
| 16 | `lemma` | [RingHom.charP_iff_charP](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/ringhom-charp-iff-charp--e3e1abc56a40530801866e7a.md) | 160 | `result-track:e3e1abc56a40530801866e7ad680d823a0b623b219fe934cf7312fce9434fe73` |
| 17 | `theorem` | [Algebra.charP_iff](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/algebra-charp-iff--20b3e4dae32b2213dfc12970.md) | 168 | `result-track:20b3e4dae32b2213dfc129701322099cf988bf74cf1548558f5ac3f0ca6577a0` |
| 18 | `theorem` | [Algebra.ringChar_eq](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/algebra-ringchar-eq--5d9315e1870f49014835d9ba.md) | 171 | `result-track:5d9315e1870f49014835d9ba311094718b4a529929f6051f8e5a65809384b63f` |
| 19 | `instance` | [charP](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/charp--1350f670881e776a6c634a98.md) | 182 | `declaration-track:1350f670881e776a6c634a985733ea0998d4c8f2b77fbf21e0830656887f58b3` |
| 20 | `instance` | [charZero](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/charzero--152b4350992672d021538779.md) | 186 | `declaration-track:152b4350992672d021538779e7065365e12e2491ca2d771aa8b99039d17c1356` |
| 21 | `theorem` | [charP_of_isFractionRing](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/charp-of-isfractionring--26fcb699ad6056f16e77976c.md) | 197 | `result-track:26fcb699ad6056f16e77976c22b6202bfbf5e6db271655eb072f1ac2bcdae6aa` |
| 22 | `theorem` | [charZero_of_isFractionRing](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/charzero-of-isfractionring--9cf9e84c5af9e91a10f0b90d.md) | 201 | `result-track:9cf9e84c5af9e91a10f0b90dab056c2befdea00bb688541807c4d6e0ce0d77c7` |
| 23 | `instance` | [charP](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/charp--025c45ff18ebaa152a3b3f98.md) | 207 | `declaration-track:025c45ff18ebaa152a3b3f98b96b3f39491b75eb2bb174931bc03a29400617ef` |
| 24 | `instance` | [charZero](../../../../mathematics/Algebra/Algebra/Variant01b557442ec3e85308f8e4d54c7180774a21ed0e4856e6109a470fc46ab4a531.lean/declarations/charzero--3a0b68f6658bd29d1cbf52fc.md) | 211 | `declaration-track:3a0b68f6658bd29d1cbf52fc85c5362599a559727c148132fcffc2083f5cc771` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
