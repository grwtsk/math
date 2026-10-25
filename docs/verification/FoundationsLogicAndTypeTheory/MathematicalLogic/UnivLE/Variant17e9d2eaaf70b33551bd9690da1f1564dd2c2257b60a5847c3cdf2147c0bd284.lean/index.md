# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UnivLE.Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4abefc572eeb40a264c699399c3c5bde56d52edb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4abefc572eeb40a264c699399c3c5bde56d52edb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UnivLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/univle--008d9325b068919316f2435a.md) | 41 | `declaration-track:008d9325b068919316f2435a54cb4d920c6b160af9f0a3553d8a9404abfc07ab` |
| 2 | `theorem` | [univLE_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/univle-max--97923d9cd8854b9aa0604623.md) | 48 | `result-track:97923d9cd8854b9aa060462349d2cc8e03a33ad2279b23e5f76d4b270c266df5` |
| 3 | `theorem` | [Small.trans_univLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/small-trans-univle--c625b51376130b4e288ddd61.md) | 50 | `result-track:c625b51376130b4e288ddd614eb4bb732949c9a860e5add41c2a862e2100dea1` |
| 4 | `theorem` | [UnivLE.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/univle-trans--65b6fe33640742914f47a990.md) | 56 | `result-track:65b6fe33640742914f47a9906a930d69b77917ca088b2becf4c1a23f4310d64c` |
| 5 | `instance` | [UnivLE.self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/univle-self--42ca99a708ea41d71589c225.md) | 59 | `declaration-track:42ca99a708ea41d71589c225c8839b77e8b0c861c9cc9f6179639f7037c98593` |
| 6 | `instance` | [UnivLE.zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/univle-zero--41ba5e0bb072d71d4194816a.md) | 60 | `declaration-track:41ba5e0bb072d71d4194816aaffda6cb62c2b2b4ee7de78962e4f2c50bc5f38f` |
| 7 | `theorem` | [UnivLE.succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/univle-succ--343a2eea00d59e406369caca.md) | 63 | `result-track:343a2eea00d59e406369caca994f9a3392979145f4b55320f442fb00ea9ed71b` |
| 8 | `instance` | [univLE_of_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/univle-of-max--b15e6705aeb602d74d9f74b7.md) | 66 | `declaration-track:b15e6705aeb602d74d9f74b7a593e16d327bc8fce382c0e4fbc1dcd5f92f7af9` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/example--4a06accdffd6e64679bdd41d.md) | 69 | `declaration-track:4a06accdffd6e64679bdd41df2a8de57d55afe53de4a00388bfb9133a9a4e3ac` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/example--43af46e837b89e71e61e9743.md) | 70 | `declaration-track:43af46e837b89e71e61e9743806dc30d68013a46de4023a451c29f8b6ad8096d` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/example--8704c9227fa8c7a75cf0e20d.md) | 71 | `declaration-track:8704c9227fa8c7a75cf0e20d7c0c554ff43dd981c27f3b111799e38bc3aa37ec` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/example--7031ccb33894603840fb8eb1.md) | 72 | `declaration-track:7031ccb33894603840fb8eb1ea20a9addcd356a11bc0a5a4ef6636f787e11314` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/example--f44b7d0ef37a0c0309b06abe.md) | 74 | `declaration-track:f44b7d0ef37a0c0309b06abed0ed73a27ff3555dc6eadef8890670a6c962a2d1` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/example--90180b9a9cc853815fd8c5bf.md) | 75 | `declaration-track:90180b9a9cc853815fd8c5bf0215df613a324decd036bd033419918b9ef1d5df` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UnivLE/Variant17e9d2eaaf70b33551bd9690da1f1564dd2c2257b60a5847c3cdf2147c0bd284.lean/declarations/example--2c3e52959e05d4373440a30f.md) | 80 | `declaration-track:2c3e52959e05d4373440a30fe54b5de79a45362b97bc06bf28b00566bbef1ea1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
