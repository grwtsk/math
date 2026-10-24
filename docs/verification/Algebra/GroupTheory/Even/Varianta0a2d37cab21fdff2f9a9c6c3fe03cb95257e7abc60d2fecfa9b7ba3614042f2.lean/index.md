# Verification target: GRWTSK.Algebra.GroupTheory.Even.Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e5cd340475d8433d0de81766b7483d12b671eda",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e5cd340475d8433d0de81766b7483d12b671eda`.

Source path: `GRWTSK/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Int.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Even` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Sqrt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [emod_two_ne_one](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/emod-two-ne-one--1926dc360d3e28edf16b8181.md) | 22 | `result-track:1926dc360d3e28edf16b8181ebbfb4c4a5a5bbfe802e824708118b153e5f79f9` |
| 2 | `lemma` | [one_emod_two](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/one-emod-two--7957e56e4827bc08d1f73da7.md) | 25 | `result-track:7957e56e4827bc08d1f73da7c58031147c7fdb21f2adb4205a8466ea3fe8a08c` |
| 3 | `lemma` | [emod_two_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/emod-two-ne-zero--3454a7e2f0ce8ffdfcc67f9b.md) | 28 | `result-track:3454a7e2f0ce8ffdfcc67f9bbdde5a75d18889669e124e71d3599c80496d8fae` |
| 4 | `lemma` | [even_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/even-iff--d7288b1a43620f90b39c7a65.md) | 31 | `result-track:d7288b1a43620f90b39c7a65488fa64bceb2c2dd10808f2ae22c77c2cf16cdd7` |
| 5 | `lemma` | [not_even_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/not-even-iff--50a644bb7087b3271544cb7f.md) | 35 | `result-track:50a644bb7087b3271544cb7faa2915d12c1268ab5859c82c424ab1bfd0b3a89d` |
| 6 | `lemma` | [two_dvd_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/two-dvd-ne-zero--6e066d50ec7ef6813f7010b0.md) | 37 | `result-track:6e066d50ec7ef6813f7010b01d0dfd24ddbf4f9f3e7c7f822007820d61f44fc9` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/instance--cfe607215c2b060c14619830.md) | 40 | `declaration-track:cfe607215c2b060c14619830cea7cd7d4cef5a73d48640798a54767614aada14` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/instance--ad5bdb30828110c0f2cd1515.md) | 43 | `declaration-track:ad5bdb30828110c0f2cd151544f95b8c08559132e4e48d830f4e23813300e7ed` |
| 9 | `lemma` | [not_even_one](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/not-even-one--b460d9f725e3676a50bc0a19.md) | 47 | `result-track:b460d9f725e3676a50bc0a19d148addeac3a81b0fe39d8a273fdf1e3bf7d4852` |
| 10 | `lemma` | [even_add](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/even-add--4553b6e5bc5a682a2e6cb817.md) | 49 | `result-track:4553b6e5bc5a682a2e6cb817c5c8da105b26fa4d4a81f95e1c6f9674334e8188` |
| 11 | `lemma` | [two_not_dvd_two_mul_add_one](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/two-not-dvd-two-mul-add-one--3f19fadb83a899bdcdc60b6d.md) | 54 | `result-track:3f19fadb83a899bdcdc60b6df9afd83e815bb4f2f77d096a5d4a0f6ff981c058` |
| 12 | `lemma` | [even_sub](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/even-sub--90766d77a5411099a1d43af4.md) | 57 | `result-track:90766d77a5411099a1d43af429c8ce0c8fb7cee39b90908244b9adfe4a3389bc` |
| 13 | `lemma` | [even_add_one](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/even-add-one--48b25ea2e455654ba6c30cf0.md) | 59 | `result-track:48b25ea2e455654ba6c30cf0f4ccf83cb1e9462d93c7aabe0e06b13fdd562ce6` |
| 14 | `lemma` | [even_sub_one](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/even-sub-one--8841c14cee7dbc9f1066939e.md) | 61 | `result-track:8841c14cee7dbc9f1066939e2e369eacff9bd988819ee42afc2ab44f6c44f6ca` |
| 15 | `lemma` | [even_mul](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/even-mul--89ae9c1903cb31506e6c79e0.md) | 63 | `result-track:89ae9c1903cb31506e6c79e0198cdfadbfb2520a51881499694516eac54aac4a` |
| 16 | `lemma` | [even_pow](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/even-pow--3fcc11e37f3c1bbf46f10243.md) | 68 | `result-track:3fcc11e37f3c1bbf46f102439174bd64c2be0acfe789a33209d4e76a8e793a9d` |
| 17 | `lemma` | [even_pow'](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/even-pow--c219772b32dba999dfb166d3.md) | 71 | `result-track:c219772b32dba999dfb166d3c09309288e26097f6feb95d52a1c5f3979592ed7` |
| 18 | `lemma` | [even_coe_nat](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/even-coe-nat--962df6164e12fb0a640f0f74.md) | 73 | `result-track:962df6164e12fb0a640f0f7470047dc658f3a8b9e8133bb143dad39c06e5acb9` |
| 19 | `lemma` | [two_mul_ediv_two_of_even](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/two-mul-ediv-two-of-even--221967a57da33924a1cfbbd2.md) | 76 | `result-track:221967a57da33924a1cfbbd29d0222db9ce71d24155ae092f714c4ed97dea2fd` |
| 20 | `lemma` | [ediv_two_mul_two_of_even](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/ediv-two-mul-two-of-even--a3ce2d00532f166297782361.md) | 79 | `result-track:a3ce2d00532f1662977823617cd168658d8edb8d54bfb17bd57b20971e4743e3` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/example--01eb428bfd5b8f2e726e41cb.md) | 83 | `declaration-track:01eb428bfd5b8f2e726e41cb68d7fe66acc650634dae9170642441d4366e076c` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta0a2d37cab21fdff2f9a9c6c3fe03cb95257e7abc60d2fecfa9b7ba3614042f2.lean/declarations/example--9087dc7c0607e5a8cd348c98.md) | 86 | `declaration-track:9087dc7c0607e5a8cd348c98e7ecf5c8e7162252b80e3f93b38fb91400fdb7ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
