# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Unique.Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91173101a91c68cce3a5ee76760dea7223e634c2",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91173101a91c68cce3a5ee76760dea7223e634c2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean.json)

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
| 1 | `structure` | [Unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/unique--ac2f540f9dcd6ebf14b5900f.md) | 63 | `declaration-track:ac2f540f9dcd6ebf14b5900fcedb7cab44b1f39a120c35d0d88e0b8c7e38507b` |
| 2 | `theorem` | [unique_iff_existsUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/unique-iff-existsunique--f4f34a30f9eebb74eb6296fb.md) | 69 | `result-track:f4f34a30f9eebb74eb6296fbea50305eedcf8d4125642fb69730a19e8656f7dc` |
| 3 | `theorem` | [unique_subtype_iff_existsUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/unique-subtype-iff-existsunique--acbef4d846d3bddb93cf9b88.md) | 73 | `result-track:acbef4d846d3bddb93cf9b88fa8df50cbfa145e409c4964ac9f02bc30233d393` |
| 4 | `abbrev` | [uniqueOfSubsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/uniqueofsubsingleton--40674a8ec11a6c1d28c87631.md) | 86 | `declaration-track:40674a8ec11a6c1d28c8763146615ef3a083b4094d2a7ce3f7b11ab8e56ae72a` |
| 5 | `instance` | [PUnit.instUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/punit-instunique--228d30bd1e59eb930c122bc4.md) | 90 | `declaration-track:228d30bd1e59eb930c122bc447f1adf0fedacbc8de7861faf97335e261492173` |
| 6 | `theorem` | [PUnit.default_eq_unit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/punit-default-eq-unit--abf7712cdf3b4ec684b50e92.md) | 95 | `result-track:abf7712cdf3b4ec684b50e92f2b4a451ee4e04768d51eaf39d23d7a69bd3438e` |
| 7 | `def` | [uniqueProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/uniqueprop--669da8a2ac944961eba10d3d.md) | 100 | `declaration-track:669da8a2ac944961eba10d3d97c00abbb4123690436a18b156e44f7c10598823` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/instance--dacb49164b245db6c39717b1.md) | 104 | `declaration-track:dacb49164b245db6c39717b12ba1a3c92d1a39225304aff73c42542ccb609f6c` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/instance--6b78933f05c41ea4c80d2781.md) | 114 | `declaration-track:6b78933f05c41ea4c80d2781e79b99d0591eae0ccc8e2a417e6373d1aedb662b` |
| 10 | `theorem` | [eq_default](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/eq-default--4a442ac30396b8e1e94b3eb7.md) | 117 | `result-track:4a442ac30396b8e1e94b3eb78001cea5832b9232b57b3f9441fa863237f19212` |
| 11 | `theorem` | [default_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/default-eq--ea017c307886059e635c745f.md) | 120 | `result-track:ea017c307886059e635c745fdcc57c0ca268f979063def0196ed4d556874a0ce` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/instance--1241185ccde3f251dd1fda3b.md) | 124 | `declaration-track:1241185ccde3f251dd1fda3b2fd261fd0dbaca0c469e8be48f1ee880cf0ea682` |
| 13 | `theorem` | [forall_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/forall-iff--a4b053fc435706224da50c75.md) | 127 | `result-track:a4b053fc435706224da50c7585f947549b09ff1dce01df28071934ae1086a656` |
| 14 | `theorem` | [exists_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/exists-iff--282a548508a199c804ff9416.md) | 130 | `result-track:282a548508a199c804ff94169b66c688436e8e7a7293a655651f7a23285f283f` |
| 15 | `theorem` | [subsingleton_unique'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/subsingleton-unique--91280fe829b5f2d57280b545.md) | 138 | `result-track:91280fe829b5f2d57280b545350283608c6a26265b428350b371fc788c01f7c3` |
| 16 | `instance` | [subsingleton_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/subsingleton-unique--bb29e64929e2d89e10ce9ad9.md) | 141 | `declaration-track:bb29e64929e2d89e10ce9ad98724ab8ddbc05cc78085fa67c45807e2f5d92d12` |
| 17 | `abbrev` | [mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/mk--483586b405ed4f25a58b4208.md) | 146 | `declaration-track:483586b405ed4f25a58b4208f5dd8cd9df141f7172722a4c7a3a3e72141b2dc1` |
| 18 | `theorem` | [nonempty_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/nonempty-unique--8d616293262b095508005804.md) | 151 | `result-track:8d616293262b095508005804fbcc69d1b8f026bb9c5e50e8aad71f0d440f3a39` |
| 19 | `theorem` | [unique_iff_subsingleton_and_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/unique-iff-subsingleton-and-nonempty--5510c486240c2b9cd282bfd0.md) | 155 | `result-track:5510c486240c2b9cd282bfd0f53b3b81329eb508f427953e8ab8b7653358ea78` |
| 20 | `theorem` | [Pi.default_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/pi-default-def--b5bc364bf00c814ded1b8e2b.md) | 163 | `result-track:b5bc364bf00c814ded1b8e2b6904ef41dcd078bd021b5e4fc8b7e758ae8154a4` |
| 21 | `theorem` | [Pi.default_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/pi-default-apply--b4eee1718706cc9d65733d17.md) | 167 | `result-track:b4eee1718706cc9d65733d17eed3ed7f71447d4db79a2e48598917036fd4ecd1` |
| 22 | `instance` | [Pi.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/pi-unique--0372ecf95eade26c83cc64ad.md) | 171 | `declaration-track:0372ecf95eade26c83cc64adf76d47dec81db4af137da1fae7d8a692a575df04` |
| 23 | `instance` | [Pi.uniqueOfIsEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/pi-uniqueofisempty--f7a1da1dbb3eb893aab826e9.md) | 175 | `declaration-track:f7a1da1dbb3eb893aab826e94f5eef05c8e22247d005f2df101474dc62673b64` |
| 24 | `theorem` | [eq_const_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/eq-const-of-subsingleton--8acf451b55cc568a151f2361.md) | 179 | `result-track:8acf451b55cc568a151f2361684be052d687de8a02e790d39c5b5a57953b9188` |
| 25 | `theorem` | [eq_const_of_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/eq-const-of-unique--763cbb980a8dc17c6f895831.md) | 183 | `result-track:763cbb980a8dc17c6f895831c652a361ad4ca50bd54083c7407f59ccf770c140` |
| 26 | `theorem` | [heq_const_of_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/heq-const-of-unique--7dcfe3ca8656e940a9ac3b0d.md) | 186 | `result-track:7dcfe3ca8656e940a9ac3b0d9738e1dbdf241463baf6c3314406a43e449ae62b` |
| 27 | `theorem` | [Injective.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/injective-subsingleton--fe49288ec07281ebc57c5c26.md) | 196 | `result-track:fe49288ec07281ebc57c5c2652c04f4ba9309732024773bf34fe67bd96f59b9d` |
| 28 | `theorem` | [Surjective.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/surjective-subsingleton--75231ffe09090d1f33713bf5.md) | 201 | `result-track:75231ffe09090d1f33713bf5e307a3915710a7971d07adc114b281ebb7b75695` |
| 29 | `def` | [Surjective.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/surjective-unique--44daba0b8e1a9bef7eed2dce.md) | 207 | `declaration-track:44daba0b8e1a9bef7eed2dcedb89ab8ba5ecc75fb27834049fa70728e31ca0a3` |
| 30 | `def` | [Injective.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/injective-unique--4b36b6ac915cad3f413faa15.md) | 213 | `declaration-track:4b36b6ac915cad3f413faa15a84767dc10a561f6daa769e57a81566849466b60` |
| 31 | `def` | [Surjective.uniqueOfSurjectiveConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/surjective-uniqueofsurjectiveconst--f28f2423790ccb1e3e95d90f.md) | 218 | `declaration-track:f28f2423790ccb1e3e95d90f24773b3d2cbca819d8ecefb44cb6df47cf187804` |
| 32 | `def` | [uniqueElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/uniqueelim--64d88357dd0b66f334555a84.md) | 229 | `declaration-track:64d88357dd0b66f334555a84e1d403c0ed26484f6e6077a34a998357124f797d` |
| 33 | `theorem` | [uniqueElim_default](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/uniqueelim-default--15d51c55a40bfdc19b2c1004.md) | 234 | `result-track:15d51c55a40bfdc19b2c1004c5dc19424f7c4f900ed7c4b75a45337efabf8130` |
| 34 | `theorem` | [uniqueElim_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/uniqueelim-const--9fb66bc9eae8132ac32e4150.md) | 238 | `result-track:9fb66bc9eae8132ac32e4150fc5f8b7db39febdb0c248cc2f5308b46d5758add` |
| 35 | `theorem` | [Unique.bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/unique-bijective--f1b19ec1ab0c3c722da89401.md) | 246 | `result-track:f1b19ec1ab0c3c722da89401136ec3aea11917e5e28a48cbde64d79bd8e49d4d` |
| 36 | `theorem` | [subsingleton_iff_isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/subsingleton-iff-isempty--d03cc9ec6ae7d60015db8297.md) | 253 | `result-track:d03cc9ec6ae7d60015db82976d365932a9812d252d1aac43dc29a338456537a1` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/instance--6894289adb0f23e49d3baf06.md) | 258 | `declaration-track:6894289adb0f23e49d3baf06c40359d400d5183c6f938104dc0de9354f14ae9b` |
| 38 | `instance` | [Unique.subtypeEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/unique-subtypeeq--7ec2500c6713686864557bf2.md) | 265 | `declaration-track:7ec2500c6713686864557bf25d23dcc9f65d77d41052e334bd3f70818bee7322` |
| 39 | `instance` | [Unique.subtypeEq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/unique-subtypeeq--71e7d1e24a632791b84faa1b.md) | 269 | `declaration-track:71e7d1e24a632791b84faa1b2280c808e47ae3e16ec08292ab5a09c09ae3573e` |
| 40 | `instance` | [Fin.instUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantb8f39e94358e454b7088eba85e904712bb209d91a354ce9a0c470081b1248456.lean/declarations/fin-instunique--e1c59df273d5a2cc7f1d8e75.md) | 275 | `declaration-track:e1c59df273d5a2cc7f1d8e759afce3737119c284bd6a33840a0cec5d6894266b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
