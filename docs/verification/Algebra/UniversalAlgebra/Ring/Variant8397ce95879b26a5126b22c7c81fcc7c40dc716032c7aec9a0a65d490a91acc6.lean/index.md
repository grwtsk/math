# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ring.Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ad2d172d27c2670878db909bdb87754bed6d436",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ad2d172d27c2670878db909bdb87754bed6d436`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean.json)

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
| 1 | `instance` | [isOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean/declarations/isorderedaddmonoid--c5d2af020fa395a7b521e457.md) | 49 | `declaration-track:c5d2af020fa395a7b521e457d112ae3c7c7bc2de594e9e5839d0ff50bf6c5d21` |
| 2 | `instance` | [isOrderedCancelAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean/declarations/isorderedcanceladdmonoid--f57d5d61a61dca1a5c84c75e.md) | 53 | `declaration-track:f57d5d61a61dca1a5c84c75eb9ac2a026ba1e5df150b347d9b92c8dd1c0fdfab` |
| 3 | `instance` | [isOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean/declarations/isorderedring--a81d6a887a11f0861e0b9d19.md) | 57 | `declaration-track:a81d6a887a11f0861e0b9d194024b0a81fc6cb6800f5a3f4dc2e01b0f50efba1` |
| 4 | `instance` | [isStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean/declarations/isstrictorderedring--3644150e2f358b3636410381.md) | 62 | `declaration-track:3644150e2f358b3636410381539e51d14d2b5b4a0988c78ed97e7fdbd6144770` |
| 5 | `instance` | [existsAddOfLE](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean/declarations/existsaddofle--2d2f5dacbab96da7d9a3e62b.md) | 67 | `declaration-track:2d2f5dacbab96da7d9a3e62ba28ecd5279b254ee3a6feb7e181751c7d8582bde` |
| 6 | `instance` | [nontrivial](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean/declarations/nontrivial--6fd028f4181c2a88ea9e30d4.md) | 76 | `declaration-track:6fd028f4181c2a88ea9e30d4bc5356410937c7393a7c2efa9309e577cdfc0f30` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean/declarations/instance--0b88c787fad80a21f276a4c1.md) | 80 | `declaration-track:0b88c787fad80a21f276a4c18a1fb028dfdd3f1dad0e88fb9c49370d7b6336d4` |
| 8 | `instance` | [linearOrderedCommMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean/declarations/linearorderedcommmonoidwithzero--3b8db3c864018d3d0dcf2dea.md) | 87 | `declaration-track:3b8db3c864018d3d0dcf2dea7432e445d3c6b873472581a00d3548a24c9a902d` |
| 9 | `instance` | [canonicallyOrderedAdd](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean/declarations/canonicallyorderedadd--ed160960a172aa653575b234.md) | 91 | `declaration-track:ed160960a172aa653575b2344ff4aaf3296bfa84072b582d873e3b39eefa2db4` |
| 10 | `instance` | [noZeroDivisors](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean/declarations/nozerodivisors--9e1284bc50acc0695d22f45e.md) | 98 | `declaration-track:9e1284bc50acc0695d22f45eae9043115913ccde09e033d2b0cfbd0042cf1b77` |
| 11 | `instance` | [orderedSub](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant8397ce95879b26a5126b22c7c81fcc7c40dc716032c7aec9a0a65d490a91acc6.lean/declarations/orderedsub--3050556eee81bfc6e2d168d8.md) | 104 | `declaration-track:3050556eee81bfc6e2d168d831fe1b48c5e9b9954b34fe3f332c0e410295abc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
