# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Encoding.Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d6cd07475a268fb275249c20986d22f9a88ef5b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d6cd07475a268fb275249c20986d22f9a88ef5b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Encoding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.List` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Syntax` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/listencode--182f2eac38582f9cf612f30b.md) | 52 | `declaration-track:182f2eac38582f9cf612f30b5eb6190edddf04ec53a74c577f7636a1be48b67c` |
| 2 | `def` | [listDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/listdecode--81e7fc6b62e4ffec10c17dda.md) | 58 | `declaration-track:81e7fc6b62e4ffec10c17dda1fe74569995db6d207699dfd9743d13c5150ebb0` |
| 3 | `theorem` | [listDecode_encode_list](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/listdecode-encode-list--b47eec934a0907beaf2c0175.md) | 66 | `result-track:b47eec934a0907beaf2c01759d4f90f4f2caa621bfee74288ae47649c20bd9d3` |
| 4 | `def` | [encoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/encoding--4acb3d84c1af6f46401dbad6.md) | 92 | `declaration-track:4acb3d84c1af6f46401dbad64877846e0adc1e7b1db5b4683a88722822d99bce` |
| 5 | `theorem` | [listEncode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/listencode-injective--d5ee6ae5c2efcbf322eaf9b1.md) | 102 | `result-track:d5ee6ae5c2efcbf322eaf9b12160189611e5ea2ef5bfe6617a4a0dbcbc22e80c` |
| 6 | `theorem` | [card_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/card-le--d6fdffb944395e978104b6dd.md) | 106 | `result-track:d6fdffb944395e978104b6dda97516ea6a8aaf10aeb9865985c246ede15fce45` |
| 7 | `theorem` | [card_sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/card-sigma--4563d65627771f05648f078b.md) | 109 | `result-track:4563d65627771f05648f078bc62de5786e3189b07f4c600c176d7b5e662b291c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/instance--e197edb9e4c4b43ca2faa073.md) | 140 | `declaration-track:e197edb9e4c4b43ca2faa07358487db1521989dc3f843a0057685c77c2bf89b4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/instance--f5b57355736cabaa9e00eb96.md) | 147 | `declaration-track:f5b57355736cabaa9e00eb96d654c48deaa1421e5c414cf86d07ae3ec4797dd3` |
| 10 | `instance` | [small](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/small--a9d65d7addd260d2cdb5bd1f.md) | 152 | `declaration-track:a9d65d7addd260d2cdb5bd1f1334392fa39f047ab271faaa4ba197d2f0020239` |
| 11 | `def` | [listEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/listencode--d8884073ad863cff885d4018.md) | 160 | `declaration-track:d8884073ad863cff885d40185691d4517022bbe2f6c887a45618f372676b17e0` |
| 12 | `def` | [sigmaAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/sigmaall--9b66b9f239d3eeea72a5035e.md) | 171 | `declaration-track:9b66b9f239d3eeea72a5035e609c7fc9a773076cff056d12f97c3b56104b66d8` |
| 13 | `lemma` | [sigmaAll_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/sigmaall-apply--6b2ecf75b92c6f213116c14f.md) | 177 | `result-track:6b2ecf75b92c6f213116c14f23b9a8adbe652d669e53c809b12912624928bcae` |
| 14 | `def` | [sigmaImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/sigmaimp--c2c3aa1abfe9342bbf1ea295.md) | 182 | `declaration-track:c2c3aa1abfe9342bbf1ea295d6f392aa8e0cd7aa24916664281bd66818d49b76` |
| 15 | `lemma` | [sigmaImp_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/sigmaimp-apply--acb0c8343d27aace72c024ce.md) | 187 | `result-track:acb0c8343d27aace72c024ce3fcbcc36181ce960d7f9eb9cac8e03b37d7ca4da` |
| 16 | `def` | [listDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/listdecode--42c3ec767866326386542a5b.md) | 192 | `declaration-track:42c3ec767866326386542a5bdebf13958472d2e98d4670568080ecd807b5e183` |
| 17 | `theorem` | [listDecode_encode_list](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/listdecode-encode-list--8eed329b5a8de7c5387852e4.md) | 213 | `result-track:8eed329b5a8de7c5387852e4a519701e85f26338b5cb5bebf2fbccde0fa366b9` |
| 18 | `def` | [encoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/encoding--f56050d6461fa81c5495dbe7.md) | 276 | `declaration-track:f56050d6461fa81c5495dbe733c393183410f61745ceec16fdb5d100cd6ba64a` |
| 19 | `theorem` | [listEncode_sigma_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/listencode-sigma-injective--1b74a8a7fe53a343427b97d7.md) | 286 | `result-track:1b74a8a7fe53a343427b97d7c231cb5f37ebbda205fab111174d1775f0738f5c` |
| 20 | `theorem` | [card_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/declarations/card-le--34ad06ab689408493313695d.md) | 290 | `result-track:34ad06ab689408493313695d1efe44eb48aaaeb63d890d33e30b01c296585656` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
