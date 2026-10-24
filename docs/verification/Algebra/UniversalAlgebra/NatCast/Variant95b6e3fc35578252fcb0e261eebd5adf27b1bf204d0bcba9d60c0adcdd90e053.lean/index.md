# Verification target: GRWTSK.Algebra.UniversalAlgebra.NatCast.Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15c1e3200162763b8911a24500eec04296800684",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15c1e3200162763b8911a24500eec04296800684`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lt_add_one](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/lt-add-one--6a1ad8a164c1d3edbb816fe0.md) | 26 | `result-track:6a1ad8a164c1d3edbb816fe0db48197404259f626253558003cd7a292c47fb84` |
| 2 | `lemma` | [lt_one_add](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/lt-one-add--79efb0319a66959e2521fcfa.md) | 30 | `result-track:79efb0319a66959e2521fcfaa629c2d706a32a3e595a409cd6830beb8f41d49a` |
| 3 | `lemma` | [zero_le_two](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/zero-le-two--eeefa92e7b965d3a65adad3e.md) | 36 | `result-track:eeefa92e7b965d3a65adad3e0b75538ea0f9be41b87dbc3b4220043c904878fd` |
| 4 | `lemma` | [zero_le_three](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/zero-le-three--695be9b8b6530e7c1f2b6b87.md) | 41 | `result-track:695be9b8b6530e7c1f2b6b8770a8466cbb360af920cd1c0688f59a7284aac13b` |
| 5 | `lemma` | [zero_le_four](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/zero-le-four--139476a561af52eff6b3f66e.md) | 46 | `result-track:139476a561af52eff6b3f66e39c76a19252e71bda699951749dfda323e51aac3` |
| 6 | `lemma` | [one_le_two](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/one-le-two--578c13cc7ea0a5352eaf300f.md) | 51 | `result-track:578c13cc7ea0a5352eaf300f7c7cc14a6cf85aa931a3230a5b9e2bf5bdd6cb6a` |
| 7 | `lemma` | [one_le_two'](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/one-le-two--7ca46756fa68d4297ccba2ce.md) | 57 | `result-track:7ca46756fa68d4297ccba2ce19137be300c6ed4376190eccbddfab454819dfe2` |
| 8 | `lemma` | [zero_lt_two](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/zero-lt-two--71186c63633099041043e6a7.md) | 70 | `result-track:71186c63633099041043e6a74425c0dcd1efd946bc206f2f5f03b0a6d2f75fe9` |
| 9 | `lemma` | [zero_lt_three](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/zero-lt-three--83bcb4b02f441428a6f717ba.md) | 73 | `result-track:83bcb4b02f441428a6f717baa7719c3b9d9b85fc815e19261568f0443429533d` |
| 10 | `lemma` | [zero_lt_four](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/zero-lt-four--d6167f6e40d3e62ca10defb7.md) | 78 | `result-track:d6167f6e40d3e62ca10defb76187370b0026c73c76f862e44fdcf97c3b2a8a18` |
| 11 | `lemma` | [zero_lt_two'](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/zero-lt-two--3365b6b20147d81fd5043fc8.md) | 85 | `result-track:3365b6b20147d81fd5043fc884ba0fcae92b0fa117eccb6162b898877b30fb65` |
| 12 | `lemma` | [zero_lt_three'](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/zero-lt-three--def26552ba8753a60d7aa8d1.md) | 88 | `result-track:def26552ba8753a60d7aa8d143305249ef096e720478a0b49b833362c9f3c9cc` |
| 13 | `lemma` | [zero_lt_four'](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/zero-lt-four--0b061efc417448be3e148741.md) | 91 | `result-track:0b061efc417448be3e14874112cbd60c7a949a76e5404e9679fc61cbba2c28cf` |
| 14 | `instance` | [ZeroLEOneClass.neZero.two](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/zeroleoneclass-nezero-two--66965320748311818d3686a6.md) | 93 | `declaration-track:66965320748311818d3686a6fa521828bbe2479d2c9e18675c400de7ea66cfff` |
| 15 | `instance` | [ZeroLEOneClass.neZero.three](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/zeroleoneclass-nezero-three--49e8169040c86feef759ebca.md) | 94 | `declaration-track:49e8169040c86feef759ebca38bb2d67037acd68809932d866194d75890eca89` |
| 16 | `instance` | [ZeroLEOneClass.neZero.four](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/zeroleoneclass-nezero-four--2b7beb7a6d1a65fe083978b0.md) | 95 | `declaration-track:2b7beb7a6d1a65fe083978b03cdc0bed08e4621e1b4e9f83c6ecb74c8f86b045` |
| 17 | `lemma` | [one_lt_two](../../../../../mathematics/Algebra/UniversalAlgebra/NatCast/Variant95b6e3fc35578252fcb0e261eebd5adf27b1bf204d0bcba9d60c0adcdd90e053.lean/declarations/one-lt-two--51cc9032a04d963c873a3d92.md) | 99 | `result-track:51cc9032a04d963c873a3d928ca379e98117090ccf077bf1144709d5c5286711` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
