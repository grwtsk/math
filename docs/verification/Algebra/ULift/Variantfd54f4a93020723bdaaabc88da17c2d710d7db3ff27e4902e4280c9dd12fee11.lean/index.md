# Verification target: GRWTSK.Algebra.ULift.Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d61e43c0ee6e8885630724936350319b7510843d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/index.md) · [Full source](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d61e43c0ee6e8885630724936350319b7510843d`.

Source path: `GRWTSK/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ULift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [mulZeroClass](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/mulzeroclass--e2cd119178c589298cb229f4.md) | 25 | `declaration-track:e2cd119178c589298cb229f469e8030e389b3176520d510efa642b74afd83afa` |
| 2 | `instance` | [distrib](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/distrib--e9b7dacf481a1068ab49abb0.md) | 29 | `declaration-track:e9b7dacf481a1068ab49abb0978eb7659e264b0ce0e03d89cb75760ee721299d` |
| 3 | `instance` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/nonunitalnonassocsemiring--4d949dfad7251d6b59c5d3b1.md) | 34 | `declaration-track:4d949dfad7251d6b59c5d3b135982cbdc8b96c4a1f428775816b71e773d30d63` |
| 4 | `instance` | [nonAssocSemiring](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/nonassocsemiring--2d4c8eb5c61db25b50d67edf.md) | 42 | `declaration-track:2d4c8eb5c61db25b50d67edf775936868e4bd91baa069d620e43b9e1713c6846` |
| 5 | `instance` | [nonUnitalSemiring](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/nonunitalsemiring--49952d299be13a03a229fd42.md) | 47 | `declaration-track:49952d299be13a03a229fd42af84922447c48b84f39fe58cd6798ba40af9017d` |
| 6 | `instance` | [semiring](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/semiring--5c5fd59a5d81b6b1c9fdebc7.md) | 53 | `declaration-track:5c5fd59a5d81b6b1c9fdebc7cb43a6adce9b970e69f3f568d2bf3f20fdeb5778` |
| 7 | `def` | [ringEquiv](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/ringequiv--23249d24a1bfca42b03ec00d.md) | 61 | `declaration-track:23249d24a1bfca42b03ec00d176c44f4a43b6f1a44d826fdfc70f2b4ece1bf98` |
| 8 | `instance` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/nonunitalcommsemiring--b8e24edd60931f5e9f4985af.md) | 69 | `declaration-track:b8e24edd60931f5e9f4985afe394905022e3add7f29222230b0b6e5b9b6c3885` |
| 9 | `instance` | [commSemiring](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/commsemiring--5ec9e46df37c0781d635996a.md) | 75 | `declaration-track:5ec9e46df37c0781d635996a74866f4fac4d867de72273032dd77102785ccad8` |
| 10 | `instance` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/nonunitalnonassocring--5f37002eb265ed5f0e743a2c.md) | 79 | `declaration-track:5f37002eb265ed5f0e743a2c785ab6a0fa82cc22d9eba7c08f318f80c7a78940` |
| 11 | `instance` | [nonUnitalRing](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/nonunitalring--83586a58304b02b6a0131750.md) | 88 | `declaration-track:83586a58304b02b6a01317504443a0b50dfbf4a9965668072a1cb008a6648336` |
| 12 | `instance` | [nonAssocRing](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/nonassocring--d0b72e25e40debd8ee239fae.md) | 97 | `declaration-track:d0b72e25e40debd8ee239fae4a162ce63f76e7c6313747240e085245d918bb23` |
| 13 | `instance` | [ring](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/ring--c8e91a36cfe4c9d023519f7f.md) | 110 | `declaration-track:c8e91a36cfe4c9d023519f7fa40ecda2e56eda5847df180a13c93e5614504470` |
| 14 | `instance` | [nonUnitalCommRing](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/nonunitalcommring--24728cc7d018ce2b586a4fd2.md) | 122 | `declaration-track:24728cc7d018ce2b586a4fd25de5bd5e89e45f60dde42b1d0759efb967f4d8db` |
| 15 | `instance` | [commRing](../../../../mathematics/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/declarations/commring--db1b85406d252dcd3e14615f.md) | 132 | `declaration-track:db1b85406d252dcd3e14615f63e19033f6c607e152ec813148badd7d19e9054b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
