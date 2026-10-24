# Verification target: GRWTSK.Analysis.NthRootLemmas.Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7171fbbb63d5fc9ba5a76fc8cc6d42b315c3f461",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/index.md) · [Full source](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7171fbbb63d5fc9ba5a76fc8cc6d42b315c3f461`.

Source path: `GRWTSK/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean.json)

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
| 1 | `theorem` | [nthRoot_zero_left](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/nthroot-zero-left--57ef27e1910001b9a60cd389.md) | 26 | `result-track:57ef27e1910001b9a60cd389f9c47ebb1a463695d5e208d412e3e92865f2c870` |
| 2 | `theorem` | [nthRoot_one_left](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/nthroot-one-left--0909af59956aeb268b20141c.md) | 28 | `result-track:0909af59956aeb268b20141c495998de9d50ba40347260882598dfd0c5d6356a` |
| 3 | `theorem` | [nthRoot_zero_right](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/nthroot-zero-right--6cdf05b54647167090a4881f.md) | 31 | `result-track:6cdf05b54647167090a4881f486e7dc2b12713ce68514c7a9415c37ca4a2a18c` |
| 4 | `theorem` | [nthRoot_one_right](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/nthroot-one-right--9352d792fc4f867c8120bf1e.md) | 35 | `result-track:9352d792fc4f867c8120bf1eac1f2d1c45ef0b79b37dcc6314feb47f5df481e8` |
| 5 | `theorem` | [nthRoot.pow_go_le](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/nthroot-pow-go-le--1afebcdb002cae7e21c9636f.md) | 38 | `result-track:1afebcdb002cae7e21c9636f0cebaaad5b985cae6b17aab540c1c55373864dd0` |
| 6 | `theorem` | [pow_nthRoot_le_iff](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/pow-nthroot-le-iff--c19460f68bb2995b2b1120cf.md) | 57 | `result-track:c19460f68bb2995b2b1120cf51e27c9bb1458ce886097c09fb9c9cb98a0a0891` |
| 7 | `theorem` | [nthRoot.lt_pow_go_succ_aux0](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/nthroot-lt-pow-go-succ-aux0--0d2d888b10739ad330c81b02.md) | 62 | `result-track:0d2d888b10739ad330c81b024f623cf701fb3654c51056ac10d5b2e93bc6ce6e` |
| 8 | `theorem` | [nthRoot.always_exists](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/nthroot-always-exists--14e1e09eea95c15aca4e690a.md) | 82 | `result-track:14e1e09eea95c15aca4e690ab1ab3de51da16fe420b3c205c37653a59fb6fea5` |
| 9 | `theorem` | [nthRoot.lt_pow_go_succ_aux](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/nthroot-lt-pow-go-succ-aux--c58617833883c012a170d88d.md) | 95 | `result-track:c58617833883c012a170d88d495d4b41c48b9c8cf6d2a2c651d9d7966dcb7feb` |
| 10 | `theorem` | [nthRoot.lt_pow_go_succ](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/nthroot-lt-pow-go-succ--59800404514ec2480c86798f.md) | 105 | `result-track:59800404514ec2480c86798fd784e0b006377692e50962ea3759b1125c079833` |
| 11 | `theorem` | [lt_pow_nthRoot_add_one](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/lt-pow-nthroot-add-one--bf66db6545fbc7f298e6639d.md) | 119 | `result-track:bf66db6545fbc7f298e6639df2e7096b18da6e2cde99fc6276a41c57ad9b6f18` |
| 12 | `theorem` | [le_nthRoot_iff](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/le-nthroot-iff--0f824a5b59581b742cde9973.md) | 128 | `result-track:0f824a5b59581b742cde99731c323ada0c00bc7e58733f06e8c3e98197470418` |
| 13 | `theorem` | [nthRoot_lt_iff](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/nthroot-lt-iff--d4cd994159e91f6a0bad0c0e.md) | 141 | `result-track:d4cd994159e91f6a0bad0c0ed244e98d872811150fe1cc0fd244f254b3558d87` |
| 14 | `theorem` | [nthRoot_pow](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/nthroot-pow--381196e0fc8bc7bba6fdd09f.md) | 145 | `result-track:381196e0fc8bc7bba6fdd09f7a1504a75e34b6e68a7bd1cdc53b27be37be392a` |
| 15 | `theorem` | [nthRoot_eq_of_le_of_lt](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/nthroot-eq-of-le-of-lt--dd7aa17dd1ab1e075f0d408c.md) | 151 | `result-track:dd7aa17dd1ab1e075f0d408c1f7929819de5d11964ee9435d36c81320c1fb3f9` |
| 16 | `theorem` | [exists_pow_eq_iff'](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/exists-pow-eq-iff--b1486601f94fc51aef5ebea2.md) | 158 | `result-track:b1486601f94fc51aef5ebea24a671dc40942bd653598a97ca23ef370c8a45ebd` |
| 17 | `theorem` | [exists_pow_eq_iff](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/exists-pow-eq-iff--e9ba7c861930f660d18d7f20.md) | 164 | `result-track:e9ba7c861930f660d18d7f2057bc918fd70e6e9d088f57908228a146ae1c4605` |
| 18 | `instance` | [instDecidableExistsPowEq](../../../../mathematics/Analysis/NthRootLemmas/Variantb47629b78cbfa65869420b84b977779628fcaa0b36d33e39d188da9e963943e8.lean/declarations/instdecidableexistspoweq--f7cd7f3ad2cd6d8955fbbc0a.md) | 168 | `declaration-track:f7cd7f3ad2cd6d8955fbbc0a16db06e68e3174c6c6176b2916d3502bf216db6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
