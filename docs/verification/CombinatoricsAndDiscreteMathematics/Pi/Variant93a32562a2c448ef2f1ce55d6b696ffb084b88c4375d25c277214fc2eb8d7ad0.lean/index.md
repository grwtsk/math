# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce9367c3bcc95cc3090e7832f0747413be644c25",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce9367c3bcc95cc3090e7832f0747413be644c25`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finAntidiagonal.aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/finantidiagonal-aux--ad0939820dc02419303aae7f.md) | 73 | `declaration-track:ad0939820dc02419303aae7fdca4df37a5000df3be8e18d5dab65d6736c27d8e` |
| 2 | `def` | [finAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/finantidiagonal--bc2b52739c2827bb6fdb3e85.md) | 100 | `declaration-track:bc2b52739c2827bb6fdb3e85aaf0a9d83f92b25c2cbc466e2714fd7a63f86fb2` |
| 3 | `lemma` | [mem_finAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/mem-finantidiagonal--dd8da77515006a76b9e86511.md) | 102 | `result-track:dd8da77515006a76b9e865110d068c9839274237e8c924293384b5e47da07a88` |
| 4 | `def` | [piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/piantidiag--5e05758738565db150dda2ed.md) | 114 | `declaration-track:5e05758738565db150dda2ed2915053afbccef964126998ab83a9b27e3629dde` |
| 5 | `lemma` | [mem_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/mem-piantidiag--48281799d5664089095232e3.md) | 130 | `result-track:48281799d5664089095232e3c5ddb3f41fdc7744dfa1981ff541f294ad3e0790` |
| 6 | `lemma` | [piAntidiag_empty_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/piantidiag-empty-zero--6b09027c751916eea9b5be92.md) | 143 | `result-track:6b09027c751916eea9b5be92fe78d59781249a30a974872e39b200c828d4e2c7` |
| 7 | `lemma` | [piAntidiag_empty_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/piantidiag-empty-of-ne-zero--8e15138a1bb45f03506a5d6c.md) | 146 | `result-track:8e15138a1bb45f03506a5d6c6889bff38a28e81b8e9a03863537c9bfebcae333` |
| 8 | `lemma` | [piAntidiag_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/piantidiag-empty--b76933d36eef3790cadba926.md) | 149 | `result-track:b76933d36eef3790cadba9264518cfde43454ad524e3b731db6a092b32bcef68` |
| 9 | `lemma` | [finset_congr_piAntidiag_eq_antidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/finset-congr-piantidiag-eq-antidiag--a6b5b981595c8ce21169955b.md) | 152 | `result-track:a6b5b981595c8ce21169955b7e4b5362e0f687c65b07ec6d0a63054741a1793f` |
| 10 | `lemma` | [pairwiseDisjoint_piAntidiag_map_addRightEmbedding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/pairwisedisjoint-piantidiag-map-addrightembedding--e0f877f53478db41b9f79f53.md) | 168 | `result-track:e0f877f53478db41b9f79f5308c3cee3fde8f47b82672afce8435ae50733064e` |
| 11 | `lemma` | [piAntidiag_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/piantidiag-cons--89d2abcba6d50766b6a0f6ec.md) | 177 | `result-track:89d2abcba6d50766b6a0f6ec52394b9e6b3cad7b55cebb9753a7b73031330c8f` |
| 12 | `lemma` | [piAntidiag_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/piantidiag-insert--3bb67427f07b92e0273a36b2.md) | 192 | `result-track:3bb67427f07b92e0273a36b2a93575908181f5e0804803718db985fb9b51b803` |
| 13 | `lemma` | [piAntidiag_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/piantidiag-zero--0e59dc7057f164898e3d42df.md) | 203 | `result-track:0e59dc7057f164898e3d42df972547605b9aceb200b162ce3f1cb3720f3bffe3` |
| 14 | `lemma` | [piAntidiag_univ_fin_eq_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/piantidiag-univ-fin-eq-antidiagonaltuple--34f64a675f499cf104a05b42.md) | 213 | `result-track:34f64a675f499cf104a05b424ce76b48e070864b1a00b28ae5d5a8e66876ba00` |
| 15 | `lemma` | [nsmul_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/nsmul-piantidiag--9d14150ae1443964df65f00f.md) | 217 | `result-track:9d14150ae1443964df65f00f56ba01da4a90e16ced14bd6b7a0bef697d555174` |
| 16 | `lemma` | [map_nsmul_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/map-nsmul-piantidiag--7e71e62f70ef97df85ecbdf5.md) | 235 | `result-track:7e71e62f70ef97df85ecbdf51b53ecd9cda7bb830a4cc0a34433c55d5694f01b` |
| 17 | `lemma` | [nsmul_piAntidiag_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/nsmul-piantidiag-univ--3cc499fa6aa4aa1b2822a498.md) | 240 | `result-track:3cc499fa6aa4aa1b2822a49889525a27e0c9a0bdaef9520af541b3b05944cbf8` |
| 18 | `lemma` | [map_nsmul_piAntidiag_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/map-nsmul-piantidiag-univ--a2988dd56f2f0bb4ae73ec84.md) | 244 | `result-track:a2988dd56f2f0bb4ae73ec842cae17246412c60fb0bfbb852c65be00c187da2d` |
| 19 | `lemma` | [map_sym_eq_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/declarations/map-sym-eq-piantidiag--78291c3f1a1e301f3502d6b5.md) | 251 | `result-track:78291c3f1a1e301f3502d6b58b82679ef020a158b991601b55593ea4a34f7a57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
