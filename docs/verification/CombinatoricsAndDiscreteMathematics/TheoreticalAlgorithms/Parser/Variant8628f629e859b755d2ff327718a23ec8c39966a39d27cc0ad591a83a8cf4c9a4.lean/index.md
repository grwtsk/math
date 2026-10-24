# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Parser.Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d874748b11e27c0d4d0ca150008a9797955adb80",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d874748b11e27c0d4d0ca150008a9797955adb80`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.While` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tryOpt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/tryopt--862814585d4a031eb36ed35e.md) | 51 | `declaration-track:862814585d4a031eb36ed35ed6c2bf96f9d65633af31b9bd1750e78aab21977d` |
| 2 | `def` | [peekIs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/peekis--0e267e3d02b114953097902f.md) | 55 | `declaration-track:0e267e3d02b114953097902f5d62b60f48964109a47871dcb9568dc42cb2d86a` |
| 3 | `def` | [parseScheme](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parsescheme--27361f8bdac7cd5e000e0085.md) | 59 | `declaration-track:27361f8bdac7cd5e000e0085ddcdf288391b1e0acaaf9f4ec0547dabe953b29d` |
| 4 | `def` | [parsePortNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parseportnumber--d5db737b30e8daf3b7a00326.md) | 78 | `declaration-track:d5db737b30e8daf3b7a00326d9a126a877fbcbeff644c9b752fb3f3e3ccc75f2` |
| 5 | `def` | [parseUserInfo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parseuserinfo--47bec4921340a2d728ec8959.md) | 92 | `declaration-track:47bec4921340a2d728ec89596608cd8335e1954e20e05c98c41611f116793aee` |
| 6 | `def` | [parseIPv6](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parseipv6--8628cf03be2319a71defe384.md) | 121 | `declaration-track:8628cf03be2319a71defe3844f9c7b660d6685221de90652387e91a3de35d5c7` |
| 7 | `def` | [parseIPv4](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parseipv4--65e528713f67b8c3301636e7.md) | 137 | `declaration-track:65e528713f67b8c3301636e744cf252d582117a6bb06e9ac480dfa9b4d86d95a` |
| 8 | `def` | [parseHost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parsehost--dd7aeaa927223c48010d2c5b.md) | 151 | `declaration-track:dd7aeaa927223c48010d2c5bb416fd984ae445ba90a7742aed7ba06291aad96c` |
| 9 | `def` | [parseAuthority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parseauthority--61f33ca082d3db4625f7d829.md) | 172 | `declaration-track:61f33ca082d3db4625f7d8294542c18deb830e5c2b1e0674d667ae628eb3a38b` |
| 10 | `def` | [parseSegment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parsesegment--bcc9598134457c1983524028.md) | 197 | `declaration-track:bcc9598134457c19835240286bb8088116658b8a0134d0950b2ff193a00d6efb` |
| 11 | `def` | [parsePath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parsepath--081346dde28869df6fd33ceb.md) | 217 | `declaration-track:081346dde28869df6fd33ceb0e492ae86fe20badbc39a16784483863bfce0a2a` |
| 12 | `def` | [parseQuery](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parsequery--7bb03440cf07c7be38163d1d.md) | 281 | `declaration-track:7bb03440cf07c7be38163d1d91a2c25cb2bb3e60c45ca9c4fead50ed0fa2167d` |
| 13 | `def` | [parseFragment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parsefragment--c5bbdd7c655ed302896effc6.md) | 313 | `declaration-track:c5bbdd7c655ed302896effc6ac20edfca5f71264e7cc1df20b7718867bcbdded` |
| 14 | `def` | [parseHierPart](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parsehierpart--ee753a8ff0266cb52ca24c72.md) | 322 | `declaration-track:ee753a8ff0266cb52ca24c72a5c3c44b5f818624d01c5a574c102a0d50279917` |
| 15 | `def` | [parseURI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parseuri--6ebcee52c0f95ea083d23ae1.md) | 339 | `declaration-track:6ebcee52c0f95ea083d23ae1fcd109c288cef40be7888aae3ac148947f655539` |
| 16 | `def` | [parseRequestTarget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parserequesttarget--6d4398199fca4567b8d6a182.md) | 358 | `declaration-track:6d4398199fca4567b8d6a1821193f558c6ed3f7207192ea8c5359dd5c1c9c20d` |
| 17 | `def` | [parseHostHeader](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/declarations/parsehostheader--ad9b804d6f1b72180e8a2307.md) | 417 | `declaration-track:ad9b804d6f1b72180e8a23071f564815d154837b11d482cdcb6f4f1a196d2734` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
