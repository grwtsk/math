# Verification target: GRWTSK.Algebra.UniversalAlgebra.NatCast.Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1d107db41833cb939911200e6c37ec9cd14b70e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1d107db41833cb939911200e6c37ec9cd14b70e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lt_add_one](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/lt-add-one--fa453d8f5f475451b518e2f2.md) | 18 | `result-track:fa453d8f5f475451b518e2f29f41374d66d1a5f7d23e5f5ee0a4d2683a617d1e` |
| 2 | `lemma` | [lt_one_add](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/lt-one-add--c1ba22720651827f118f0b67.md) | 22 | `result-track:c1ba22720651827f118f0b6798a5826af42474cb62c011f460a9cd90a6689504` |
| 3 | `lemma` | [zero_le_two](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/zero-le-two--36336980c48db35a90a01314.md) | 28 | `result-track:36336980c48db35a90a013149624d347bb1d9b48a634b16307b1ca828de6975f` |
| 4 | `lemma` | [zero_le_three](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/zero-le-three--44b480592288da4071904616.md) | 33 | `result-track:44b480592288da40719046162b902829e5c3cd363d161dbddbee5035574844b2` |
| 5 | `lemma` | [zero_le_four](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/zero-le-four--de982753927f2bb1a4b204ad.md) | 38 | `result-track:de982753927f2bb1a4b204ade4b58c0d3106acef64c7af0b75474acdee4edbcf` |
| 6 | `lemma` | [one_le_two](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/one-le-two--e0300ac382b64f5e47255361.md) | 43 | `result-track:e0300ac382b64f5e472553616bb03b050e158dee01d7d897760fa79e5d43ccd8` |
| 7 | `lemma` | [one_le_two'](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/one-le-two--ab962dddd592c8236ea90d15.md) | 49 | `result-track:ab962dddd592c8236ea90d155252fceea0945cd07af028efdd784f4a22d473f5` |
| 8 | `lemma` | [zero_lt_two](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/zero-lt-two--6f1fd9ec17fedd91585854ca.md) | 62 | `result-track:6f1fd9ec17fedd91585854ca2f01a56c76cb032bc9615636e009c2d9b95148f3` |
| 9 | `lemma` | [zero_lt_three](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/zero-lt-three--d7f517bcffecbdbd9f2f2a47.md) | 65 | `result-track:d7f517bcffecbdbd9f2f2a47cc3a02c2ac4c855b636a2f1f94131cd9594bba18` |
| 10 | `lemma` | [zero_lt_four](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/zero-lt-four--9a8d8789223c7fe08bdaa914.md) | 70 | `result-track:9a8d8789223c7fe08bdaa91419ede18810591ce64706df332be1bb6813a81ee7` |
| 11 | `lemma` | [zero_lt_two'](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/zero-lt-two--af39d1e7479b2873c6086297.md) | 77 | `result-track:af39d1e7479b2873c60862974262383b5ee90e9536b5d62c32cd65af431dc382` |
| 12 | `lemma` | [zero_lt_three'](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/zero-lt-three--fe7ee2874b51dcb64f8b32bb.md) | 80 | `result-track:fe7ee2874b51dcb64f8b32bbbe40299cfc0987a94280bf6d4e9305ce0727f582` |
| 13 | `lemma` | [zero_lt_four'](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/zero-lt-four--6d5a739a6f8f10ae1ff4204c.md) | 83 | `result-track:6d5a739a6f8f10ae1ff4204c1a744a85df2c7165579cdc71a14ff7eb31e8ecfc` |
| 14 | `instance` | [ZeroLEOneClass.neZero.two](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/zeroleoneclass-nezero-two--5fda1e28e60b5906eedb3021.md) | 85 | `declaration-track:5fda1e28e60b5906eedb302110ef72b01cb576b73ae38d72952ecd7ae7243a7f` |
| 15 | `instance` | [ZeroLEOneClass.neZero.three](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/zeroleoneclass-nezero-three--8a19700ba9b7a3a6c3954833.md) | 86 | `declaration-track:8a19700ba9b7a3a6c3954833ba3cae544366abc397275fd2aeab7b672505ffd7` |
| 16 | `instance` | [ZeroLEOneClass.neZero.four](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/zeroleoneclass-nezero-four--c8588031a81da51eb2e15ca8.md) | 87 | `declaration-track:c8588031a81da51eb2e15ca82b17ddbd99da0d96dd81746ac5c54bb8e64d5a84` |
| 17 | `lemma` | [one_lt_two](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant68eddf19da1cdee5d385e54cadec6ee37d6e9ed02d8b302f8c964becc5dd4ff4.lean/declarations/one-lt-two--94bd45ed16b4b0edf45f0792.md) | 91 | `result-track:94bd45ed16b4b0edf45f079298f5a80ea61dca98a7c4dc10fa4cd155ed4c4988` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
