# Verification target: GRWTSK.Algebra.GroupTheory.IsPerfect.Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb2adb059bdae6993988aaa55ad26ca32ed6cb8b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb2adb059bdae6993988aaa55ad26ca32ed6cb8b`.

Source path: `GRWTSK/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean.json)

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
| 1 | `class` | [IsPerfect](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/isperfect--c5dda881431b2497eca22ea7.md) | 41 | `declaration-track:c5dda881431b2497eca22ea7058ec7718c66186f4a13199f24c0aad75b8c9f1a` |
| 2 | `lemma` | [isPerfect_def](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/isperfect-def--b94b8a3f6f5bc1b651845da9.md) | 47 | `result-track:b94b8a3f6f5bc1b651845da90495c8324745a6f8c5eb4b4aceaec25628c43521` |
| 3 | `lemma` | [_root_.Subgroup.isPerfect_iff](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/root-subgroup-isperfect-iff--e5562e4525ceac8cf62048f4.md) | 50 | `result-track:e5562e4525ceac8cf62048f47cbb804aba0a3f4591c0740ebb8bf3fff7eac783` |
| 4 | `lemma` | [_root_.Subgroup.commutator_eq_self](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/root-subgroup-commutator-eq-self--d4f66390f05b44e8f4637103.md) | 54 | `result-track:d4f66390f05b44e8f463710386c09a9690bfd015c4b5f39c68e6e437ed8ad665` |
| 5 | `lemma` | [mem_commutator](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/mem-commutator--97cec4c0ddd8f121f22bf4b7.md) | 59 | `result-track:97cec4c0ddd8f121f22bf4b772bd5974b78227acf587c79e2acb10983c2435e1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/instance--16ca8be927265fffe0c6dd5d.md) | 63 | `declaration-track:16ca8be927265fffe0c6dd5db6c2b681bddfc91e77df71ccd70159175376ab8b` |
| 7 | `theorem` | [top_iff](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/top-iff--6f7d22b10e8cb062e3b3a647.md) | 66 | `result-track:6f7d22b10e8cb062e3b3a64759125b36f4776e3f8b60adc0165d2735a46764fb` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/instance--8357ea05e9abd0374fcf61ac.md) | 70 | `declaration-track:8357ea05e9abd0374fcf61accbb14a012d6ee10dbd6fea21ff36b5ccffe7b7c9` |
| 9 | `lemma` | [not_isSolvable](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/not-issolvable--0c260939ed198d621e08fe73.md) | 74 | `result-track:0c260939ed198d621e08fe7335f68a6baa3b27b84174f7125d4a2140e6ce81b1` |
| 10 | `lemma` | [not_isNilpotent](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/not-isnilpotent--f7f87c1262d33548077a9ebb.md) | 79 | `result-track:f7f87c1262d33548077a9ebb981677b3544adbb1b761ef158e38484639c0cc5e` |
| 11 | `lemma` | [not_isMulCommutative](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/not-ismulcommutative--8fa8dbb5f5395662a7cf9c18.md) | 84 | `result-track:8fa8dbb5f5395662a7cf9c18015db140112501613a1e005a0fdd30a2e6e58ee8` |
| 12 | `instance` | [subsingleton_of_isMulCommutative](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/subsingleton-of-ismulcommutative--34eb5face441ac81e988e776.md) | 87 | `declaration-track:34eb5face441ac81e988e7767d4f3a9369b37f8cde5be2058c19e093f98366a0` |
| 13 | `lemma` | [map](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/map--18dcce49c62a6e8e0761df6c.md) | 92 | `result-track:18dcce49c62a6e8e0761df6cf3de2ea8b8411722e1fff94bba0f47c573652004` |
| 14 | `lemma` | [range](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/range--3bec7cc2b3c4408de7bed367.md) | 95 | `result-track:3bec7cc2b3c4408de7bed367ed9b36753b69924dc859fdd048c05a1c71dd3aff` |
| 15 | `lemma` | [ofSurjective](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/ofsurjective--93b164bc98a12b94816e50d2.md) | 100 | `result-track:93b164bc98a12b94816e50d286f47e2785178bfa420aea92f9d76abc9a965051` |
| 16 | `instance` | [instQuotientSubgroup](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/instquotientsubgroup--93990f274747b3af8513b56f.md) | 104 | `declaration-track:93990f274747b3af8513b56f2dfb5bbed28feaa32a75a918852bd4338c9b2242` |
| 17 | `theorem` | [derivedSeries_eq_top](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/derivedseries-eq-top--2a69399e5a62df95451c39e3.md) | 109 | `result-track:2a69399e5a62df95451c39e3d7723ce3f55e3966f3143062b6a1dcdd01b6f7d1` |
| 18 | `theorem` | [lowerCentralSeries_eq_top](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/lowercentralseries-eq-top--4ddc86f03fbeae1397c04af0.md) | 116 | `result-track:4ddc86f03fbeae1397c04af0fe82575f28ffcebbcc720b9f3a1128c6b3304e59` |
| 19 | `theorem` | [upperCentralSeries_eq_center](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/uppercentralseries-eq-center--d40c4a808c2537d67a11eab0.md) | 125 | `result-track:d40c4a808c2537d67a11eab0e208ddf57dec72b00fa54b95301785bdde236ac2` |
| 20 | `theorem` | [center_quotient_center_eq_bot](../../../../../mathematics/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/declarations/center-quotient-center-eq-bot--00d36784790db90a7110c0d1.md) | 139 | `result-track:00d36784790db90a7110c0d196e0156d87d09e1e21bfd3a18d5ca3fa5d5d04e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
