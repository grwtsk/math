# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a462b7a4a394849c6fcf21fdc8c99387668c289b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a462b7a4a394849c6fcf21fdc8c99387668c289b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Order.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Ext` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instle--3341903a0348e841dc50ea5f.md) | 24 | `declaration-track:3341903a0348e841dc50ea5f3d76326c6153cde8cfe459758a3c4e7570f43cf6` |
| 2 | `instance` | [instLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instlt--a70f8106aadc638492119938.md) | 27 | `declaration-track:a70f8106aadc638492119938fa21ed4e4326edf2d342b6f2c74792f25ed4657c` |
| 3 | `instance` | [instLawfulOrderLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instlawfulorderlt--14c64f58149f557af7c92f9e.md) | 30 | `declaration-track:14c64f58149f557af7c92f9eaab9a0876fe8825c7fbff95ed7b01812b4cfd102` |
| 4 | `instance` | [instMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instmin--fb3d3483ed98f50003cd8009.md) | 34 | `declaration-track:fb3d3483ed98f50003cd80099b237973ca08eda7d7cbc26e368370be02386cb4` |
| 5 | `instance` | [instMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instmax--7bfeb7d8d4a75a87b4579253.md) | 37 | `declaration-track:7bfeb7d8d4a75a87b4579253d68ae312b4f74baa7d297e2af8aa11de868888a9` |
| 6 | `instance` | [instReflLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instreflle--6b98948957128fbc28c0ccd2.md) | 40 | `declaration-track:6b98948957128fbc28c0ccd2ae34c22dbb9d6d256de42d8e9f10423e1becc95c` |
| 7 | `instance` | [instAntisymmLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instantisymmle--80488e45f94a9bfdaceb1ad0.md) | 44 | `declaration-track:80488e45f94a9bfdaceb1ad0e658b5f31d0f4e580e268465a72ed9475d4110c1` |
| 8 | `instance` | [instTotalLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/insttotalle--7004e56b964f9368706432a3.md) | 48 | `declaration-track:7004e56b964f9368706432a3e1e69cc92627e507dc8d7b456bb2917f6082446a` |
| 9 | `instance` | [instTransLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/insttransle--6a1deec684705283cd6f820c.md) | 52 | `declaration-track:6a1deec684705283cd6f820c307be24d4719d69f829fe31ca5f644f93e3e59f3` |
| 10 | `instance` | [instMinEqOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instmineqor--78a7a1bdf5f26f714cae3030.md) | 57 | `declaration-track:78a7a1bdf5f26f714cae30307e8453027e0ab1fc7a23d32f246ef2c96b954fb5` |
| 11 | `instance` | [instLawfulOrderMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instlawfulordermin--fc899a469592b9d3c7905b80.md) | 64 | `declaration-track:fc899a469592b9d3c7905b80a8db43274c1e2e929e814712f34ddf736ba9f83b` |
| 12 | `instance` | [instMaxEqOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instmaxeqor--66fac974c5f34290c96052e7.md) | 69 | `declaration-track:66fac974c5f34290c96052e7a5648d0e31ebce376ef90e7540574382bf0cc36c` |
| 13 | `instance` | [instLawfulOrderMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instlawfulordermax--da8dc89e22e0c89f0c4d5275.md) | 76 | `declaration-track:da8dc89e22e0c89f0c4d52757b1f2f00d7b941e59454f56175d74aa90435c7f5` |
| 14 | `instance` | [instIsPreorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instispreorder--4fc923cb2bbd956fa28a401f.md) | 82 | `declaration-track:4fc923cb2bbd956fa28a401f944c449565a544eb1fb85bdd5fa3d66b524fb4bc` |
| 15 | `instance` | [instIsLinearPreorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instislinearpreorder--37aa67a8239f04db922c7b7a.md) | 86 | `declaration-track:37aa67a8239f04db922c7b7a312fb9f2e71c781a31c09a6e22a4622e5509801a` |
| 16 | `instance` | [instIsPartialOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instispartialorder--c17bc8140a6c8f3d3745a57b.md) | 90 | `declaration-track:c17bc8140a6c8f3d3745a57bc700b67b7051972abcbe47d04f54fc3089a23697` |
| 17 | `instance` | [instIsLinearOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant52a43ec649f7c6193fe585f41c2efa8d8a563eb59d614a22434855005e3bca9c.lean/declarations/instislinearorder--f0ab07ecc0d676b4eef327f5.md) | 94 | `declaration-track:f0ab07ecc0d676b4eef327f54e6e46d5fe2c3264cd44893a17436dba7f27ae29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
