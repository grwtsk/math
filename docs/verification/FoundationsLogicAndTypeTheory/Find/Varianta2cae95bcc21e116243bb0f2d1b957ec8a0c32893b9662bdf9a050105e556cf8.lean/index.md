# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Find.Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a72e04e46fb3a9d5e475c40f7bfd46fd86aa96b9",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a72e04e46fb3a9d5e475c40f7bfd46fd86aa96b9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.WF` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lbp](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/lbp--4d801a18d85371262f33b9bf.md) | 30 | `declaration-track:4d801a18d85371262f33b9bfb8aecb02a28935f276ec5aada4a406440c719550` |
| 2 | `def` | [wf_lbp](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/wf-lbp--7617c20e05215184d0f495a7.md) | 35 | `declaration-track:7617c20e05215184d0f495a7db59e36f92c4fbaa6271d82640db301daea2b6d4` |
| 3 | `def` | [findX](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findx--0a63484b5d711a97a54a5b47.md) | 50 | `declaration-track:0a63484b5d711a97a54a5b476eeb1cc2405eb8171a26cbf459e8632081f19fa7` |
| 4 | `def` | [find](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find--d937b414e2b203bf3242599e.md) | 71 | `declaration-track:d937b414e2b203bf3242599eedfe6cd1c9914f8bdac03d286832cc8fd7bd68cd` |
| 5 | `theorem` | [find_spec](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-spec--aa9f62bca0e3e76e7f14083f.md) | 74 | `result-track:aa9f62bca0e3e76e7f14083fb8a31cdc6c29ec2146c2bf5851355c0c52ddec6d` |
| 6 | `theorem` | [find_min](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-min--6e9eb50fa9c14ff2b7eeb70a.md) | 77 | `result-track:6e9eb50fa9c14ff2b7eeb70ac9d6bfc3dfa21d8d65e23cce9933c55053847c4b` |
| 7 | `theorem` | [find_min'](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-min--e9a0460d7afaf860ef0b94b8.md) | 80 | `result-track:e9a0460d7afaf860ef0b94b83c4cce8e13cfae9ea8b16da84688ed7f12f1f27a` |
| 8 | `lemma` | [find_eq_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-eq-iff--9dc96bca53b52f342b9b5a14.md) | 83 | `result-track:9dc96bca53b52f342b9b5a1495ce2eb8ae30a0d8ff9663fd6581b12ffaa88e87` |
| 9 | `lemma` | [find_lt_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-lt-iff--e3b5caa22dda59d835120794.md) | 90 | `result-track:e3b5caa22dda59d835120794fd30081f884bcbb7ce019dcd45e070b6e4308798` |
| 10 | `lemma` | [find_le_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-le-iff--b05700e7bff330b972ec86a2.md) | 94 | `result-track:b05700e7bff330b972ec86a227f56b97d5c606bd1a1dfaadf0671fb203a8121f` |
| 11 | `lemma` | [le_find_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/le-find-iff--91ddd9ff62c1f45772370d3f.md) | 97 | `result-track:91ddd9ff62c1f45772370d3f311e790c86fd7da15804282fc439490f6159dd85` |
| 12 | `lemma` | [lt_find_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/lt-find-iff--7f3766738fac53c5cbb03764.md) | 100 | `result-track:7f3766738fac53c5cbb03764ab94bd0574e4ce4bd5a540cd4e24e65a7e925ce2` |
| 13 | `lemma` | [find_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-eq-zero--62d280f85f03a06f78756e6c.md) | 103 | `result-track:62d280f85f03a06f78756e6c08e9eb1e533adf8953391126134fc9c204296a01` |
| 14 | `lemma` | [find_mono_of_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-mono-of-le--4bf583f41639a356f64e6848.md) | 109 | `result-track:4bf583f41639a356f64e684883f5382df802905d1bfae39012b19f848898eb7e` |
| 15 | `lemma` | [find_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-mono--53404bbd3849dc9cd8d02469.md) | 115 | `result-track:53404bbd3849dc9cd8d02469056fb3de599b9b260ce3bade4c61203b8eebc7b2` |
| 16 | `lemma` | [find_congr](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-congr--d04be3d59b7d9d9bb233b4ad.md) | 125 | `result-track:d04be3d59b7d9d9bb233b4adcb5281b568229b63cc26dc2db3f4613cb1a6f138` |
| 17 | `lemma` | [find_congr'](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-congr--00770ff8aa3648ffa5aa365a.md) | 131 | `result-track:00770ff8aa3648ffa5aa365a9fe539cf76fa919736ae3f47fea871e9f717a40c` |
| 18 | `lemma` | [find_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-le--7672c2190ed9932481faaf34.md) | 135 | `result-track:7672c2190ed9932481faaf346fb37c4b636df1d479745222227ebedc1737b80b` |
| 19 | `lemma` | [find_comp_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-comp-succ--80309485287947426fde6d1c.md) | 138 | `result-track:80309485287947426fde6d1c279c1fbd0773365b63d250e53ef78d7f620e27c1` |
| 20 | `lemma` | [find_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-pos--f6333b502ffb6ad629a5bd01.md) | 144 | `result-track:f6333b502ffb6ad629a5bd0195befc3ebc38cf537cde509e4471b357ceebb7af` |
| 21 | `lemma` | [find_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/find-add--39c5d5f0f5023bca8e78183a.md) | 147 | `result-track:39c5d5f0f5023bca8e78183af5456249921fa3bf96fc1b45dcdfeec9d9faac67` |
| 22 | `def` | [findGreatest](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest--a384811c497198ee6db1f19f.md) | 166 | `declaration-track:a384811c497198ee6db1f19f69a80afacf15dc68a1d6bc5f9e9a1a66275628f1` |
| 23 | `lemma` | [findGreatest_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-zero--cb18edecdeb068fda0f75f0e.md) | 172 | `result-track:cb18edecdeb068fda0f75f0e46e148508effbe7c80884f7e6d52bfad31bc9e25` |
| 24 | `lemma` | [findGreatest_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-succ--16bf9bffa47f8091979c667e.md) | 174 | `result-track:16bf9bffa47f8091979c667ea6bf68dcd397f0656b06df227d1c608fbc6c902c` |
| 25 | `lemma` | [findGreatest_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-eq--053cc470654d32d95d5b610d.md) | 177 | `result-track:053cc470654d32d95d5b610d4e6ab35347d5218e388281a201f8ea76d6f81558` |
| 26 | `lemma` | [findGreatest_of_not](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-of-not--242c8818f825eeadfee4b7f1.md) | 182 | `result-track:242c8818f825eeadfee4b7f195fddc2715aa2bccdf04a9eeb26f2a623d761865` |
| 27 | `lemma` | [findGreatest_eq_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-eq-iff--488a8adb7a5530ea93e17e3f.md) | 185 | `result-track:488a8adb7a5530ea93e17e3fdaccacc9874c6512de8a23919bb7c0a8fa90b039` |
| 28 | `lemma` | [findGreatest_eq_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-eq-zero-iff--e25743a7bf1af2e796d50bd1.md) | 214 | `result-track:e25743a7bf1af2e796d50bd1902ffefb62c7199f41d5ae7559ad97a11b18e7cb` |
| 29 | `lemma` | [findGreatest_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-pos--80a736b873160e018362b9f7.md) | 217 | `result-track:80a736b873160e018362b9f706e1bfdf8310869375d3d3e7b5f35e94541450bd` |
| 30 | `lemma` | [findGreatest_spec](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-spec--b07089da0633d2cf3d362b69.md) | 220 | `result-track:b07089da0633d2cf3d362b69365072ba5d72bce5a2665f2381e64c2a7d3fab20` |
| 31 | `lemma` | [findGreatest_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-le--a358f81feb47776d9644cf87.md) | 227 | `result-track:a358f81feb47776d9644cf878a06a2f5053053ec42f9c4a250a9b64de304f756` |
| 32 | `lemma` | [le_findGreatest](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/le-findgreatest--ebf6dbd061fcd3aaaa2b42e0.md) | 230 | `result-track:ebf6dbd061fcd3aaaa2b42e0acbe1b50431859e962fc376c44b4cdaecd810d65` |
| 33 | `lemma` | [findGreatest_mono_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-mono-right--2b27c739bd45a7234d38efaf.md) | 233 | `result-track:2b27c739bd45a7234d38efafe0829695381d3dc24f3fc29695a98ec8864f8df1` |
| 34 | `lemma` | [findGreatest_mono_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-mono-left--25ba611c4d44cee8a0092993.md) | 243 | `result-track:25ba611c4d44cee8a00929935e119e2a0ea85f2814ea8de9c0b3fe88b1eebcdb` |
| 35 | `lemma` | [findGreatest_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-mono--5117aa15d231eca30ff3a111.md) | 253 | `result-track:5117aa15d231eca30ff3a111086b6cad067e3adaf844e741bd95a770e022d360` |
| 36 | `theorem` | [findGreatest_is_greatest](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-is-greatest--454e51d688eac1fc7bee9c0e.md) | 257 | `result-track:454e51d688eac1fc7bee9c0eaa03d45255d4b33ed3fb9406bff43e7353ad2711` |
| 37 | `theorem` | [findGreatest_of_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/declarations/findgreatest-of-ne-zero--3f6002c76601ee507d24280a.md) | 260 | `result-track:3f6002c76601ee507d24280a8f034ce9d21d23bee77f42a62f6064f76baad0fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
