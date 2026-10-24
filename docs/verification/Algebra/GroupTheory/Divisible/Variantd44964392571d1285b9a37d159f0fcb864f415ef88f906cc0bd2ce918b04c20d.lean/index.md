# Verification target: GRWTSK.Algebra.GroupTheory.Divisible.Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1634643b367c7a5681d13e9edbbc179bc14e7590",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1634643b367c7a5681d13e9edbbc179bc14e7590`.

Source path: `GRWTSK/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean.json)

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
| 1 | `class` | [DivisibleBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/divisibleby--a724dc59757696b2ec2f6ff0.md) | 97 | `declaration-track:a724dc59757696b2ec2f6ff0ef626f21d55bf8803128a5d0b25d5e6645f27b1f` |
| 2 | `class` | [RootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/rootableby--1044cf9c0ef5e832d02be441.md) | 115 | `declaration-track:1044cf9c0ef5e832d02be4413bc1d16ba3a757661e52f409c79556255d5470f0` |
| 3 | `theorem` | [RootableBy.surjective_pow](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/rootableby-surjective-pow--7f70be850bd1a5534c3782f9.md) | 122 | `result-track:7f70be850bd1a5534c3782f9f1c0e8c81340d00b548db8f875b386c91545ca25` |
| 4 | `def` | [rootableByOfPowLeftSurj](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/rootablebyofpowleftsurj--dac677333155d5193a20aa4d.md) | 139 | `declaration-track:dac677333155d5193a20aa4de67e504c1d761f60a726d34914bab83ac6382fad` |
| 5 | `instance` | [Pi.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/pi-rootableby--c57d56861fc3e5e057ac1fc0.md) | 154 | `declaration-track:c57d56861fc3e5e057ac1fc0610ba11e830baa3f21be32d018a86fabf70710ea` |
| 6 | `instance` | [Prod.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/prod-rootableby--465ac542a427049f06d9fced.md) | 167 | `declaration-track:465ac542a427049f06d9fced69d7f9bd7ac274c45ec6599880830e1284be9682` |
| 7 | `instance` | [ULift.instRootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/ulift-instrootableby--c40bbb9b28880139a8d52c6a.md) | 177 | `declaration-track:c40bbb9b28880139a8d52c6a9d1628a71842ff44bba5c66a7719e6dfe15376c0` |
| 8 | `theorem` | [smul_top_eq_top_of_divisibleBy_int](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/smul-top-eq-top-of-divisibleby-int--f74bf2bd2c505255a94bf918.md) | 190 | `result-track:f74bf2bd2c505255a94bf9189f31c1eb77f2f241fc0fea9759511229e19e92e9` |
| 9 | `def` | [divisibleByIntOfSMulTopEqTop](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/divisiblebyintofsmultopeqtop--cbd3dfdd125498da6e8b7ae9.md) | 197 | `declaration-track:cbd3dfdd125498da6e8b7ae95c715c0193e067bde021835a8551b0a2442d8b88` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/instance--21b2c8d34a541dfdb6d2499e.md) | 209 | `declaration-track:21b2c8d34a541dfdb6d2499e37dfa126faa095ba016c020daecb5563f015a84c` |
| 11 | `def` | [rootableByIntOfRootableByNat](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/rootablebyintofrootablebynat--b4c24acdee30df79a9fc7229.md) | 225 | `declaration-track:b4c24acdee30df79a9fc722942dc538769c5ac5f7f43ea20d534f2cfd4a6f514` |
| 12 | `def` | [rootableByNatOfRootableByInt](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/rootablebynatofrootablebyint--64e46899738f045a4bb77086.md) | 241 | `declaration-track:64e46899738f045a4bb7708612d7ff2f7cc7e32a013cafa297d4aee83ec6c1dd` |
| 13 | `def` | [Function.Surjective.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/function-surjective-rootableby--7e6dea20adc216120b2a42f1.md) | 262 | `declaration-track:7e6dea20adc216120b2a42f107e6d8b8a6f752ad2d52e42c1dfaf667ad311fc3` |
| 14 | `instance` | [QuotientGroup.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantd44964392571d1285b9a37d159f0fcb864f415ef88f906cc0bd2ce918b04c20d.lean/declarations/quotientgroup-rootableby--b442e7c30f2b977683e164f4.md) | 277 | `declaration-track:b442e7c30f2b977683e164f485cb3382e4caf4a1abd67a1bdeab7f6279ce10ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
