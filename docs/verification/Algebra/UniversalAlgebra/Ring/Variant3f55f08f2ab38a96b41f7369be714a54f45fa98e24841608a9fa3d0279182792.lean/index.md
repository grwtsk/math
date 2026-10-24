# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ring.Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a563008fc3d7bad3decb6100ee9f8f3c054dfa8f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a563008fc3d7bad3decb6100ee9f8f3c054dfa8f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.InjSurj` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean/declarations/isorderedaddmonoid--3170f781971d1e56ac542be8.md) | 51 | `declaration-track:3170f781971d1e56ac542be81cbd65de7bc95c00624ac5feb9bc4b6434b72e7e` |
| 2 | `instance` | [isOrderedCancelAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean/declarations/isorderedcanceladdmonoid--4fb9c4d2b7ff68b31ccad96f.md) | 55 | `declaration-track:4fb9c4d2b7ff68b31ccad96f1a1a30acf471ed5347bafd8311b60f2b1359384b` |
| 3 | `instance` | [isOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean/declarations/isorderedring--d3da9de377ce87b57fff89cc.md) | 59 | `declaration-track:d3da9de377ce87b57fff89ccfb960b64262f2f078b129bef4a73f252a124e92b` |
| 4 | `instance` | [isStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean/declarations/isstrictorderedring--7f606bb594650feb41187086.md) | 65 | `declaration-track:7f606bb594650feb4118708661cf5bd1d6a06ce3f5d3c9729def6038a0165aab` |
| 5 | `instance` | [existsAddOfLE](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean/declarations/existsaddofle--40c45b4c824b1e8a37f3eaa8.md) | 71 | `declaration-track:40c45b4c824b1e8a37f3eaa804e1fe595b94d1dda8b9bf2c9811efeeb8b24cf1` |
| 6 | `instance` | [nontrivial](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean/declarations/nontrivial--db300681abc9ec688cae0520.md) | 80 | `declaration-track:db300681abc9ec688cae052044b287a6ce9972fb0473b4de44999bb9730b1ca1` |
| 7 | `instance` | [linearOrderedCommMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean/declarations/linearorderedcommmonoidwithzero--162e57183de67a310205239e.md) | 84 | `declaration-track:162e57183de67a310205239e8acfa6e09ec0efe0ed0818245608d3ee18d7f538` |
| 8 | `instance` | [canonicallyOrderedAdd](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean/declarations/canonicallyorderedadd--02889c46712ccf76bbd771bd.md) | 89 | `declaration-track:02889c46712ccf76bbd771bdd5bc1bb422f64f56349b78d3e51185a12ef2dd58` |
| 9 | `instance` | [noZeroDivisors](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean/declarations/nozerodivisors--820c912fbe29db28862cf0b2.md) | 95 | `declaration-track:820c912fbe29db28862cf0b2459996a8c6d0913578c8a51b14b2f6b532dd6eba` |
| 10 | `instance` | [orderedSub](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant3f55f08f2ab38a96b41f7369be714a54f45fa98e24841608a9fa3d0279182792.lean/declarations/orderedsub--1327380844fd99155f766a53.md) | 101 | `declaration-track:1327380844fd99155f766a537c79902ee6daf8a27606133a0a4d3afcaff6f967` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
