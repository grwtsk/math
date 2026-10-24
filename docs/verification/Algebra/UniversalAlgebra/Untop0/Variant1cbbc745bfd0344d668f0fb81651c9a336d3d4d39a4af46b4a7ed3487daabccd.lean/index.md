# Verification target: GRWTSK.Algebra.UniversalAlgebra.Untop0.Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49bd7b575e94237102c81be1131f42d319cad726",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49bd7b575e94237102c81be1131f42d319cad726`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AddGroupWithTop` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.WithTop` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [untop₀](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean/declarations/untop--3439d7061b5a7cd959ea7270.md) | 36 | `declaration-track:3439d7061b5a7cd959ea7270e261b62918967e6cb19117820472777e0d824328` |
| 2 | `lemma` | [untop₀_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean/declarations/untop-eq-zero--bacc0af3ba12722a597bb499.md) | 43 | `result-track:bacc0af3ba12722a597bb4995f359f9efb87708493ed6e69b93a5b52820c947b` |
| 3 | `lemma` | [untop₀_top](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean/declarations/untop-top--2eb9ef074971d2330ce6deb9.md) | 47 | `result-track:2eb9ef074971d2330ce6deb907a0f5979e21ebaa81e53bbb69688a4f09dddbc1` |
| 4 | `lemma` | [untop₀_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean/declarations/untop-zero--26470b84ed672cef0fec8637.md) | 50 | `result-track:26470b84ed672cef0fec8637113bebbe11a433121f317c5e490f46473b27033e` |
| 5 | `lemma` | [untop₀_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean/declarations/untop-coe--dc6b8a2faa342dc5e9e26893.md) | 53 | `result-track:dc6b8a2faa342dc5e9e268935f5c032ba1235e848960d2eb88df8df89eac0736` |
| 6 | `lemma` | [coe_untop₀_of_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean/declarations/coe-untop-of-ne-top--4b9ea74316dbacf7fcd345cb.md) | 55 | `result-track:4b9ea74316dbacf7fcd345cbddca46a9b8faf6fdea681e797d80ec3dc96e1b5d` |
| 7 | `lemma` | [untopD_add](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean/declarations/untopd-add--30f659eb21133aebe6e6c6bd.md) | 66 | `result-track:30f659eb21133aebe6e6c6bdd96ae742021e7c7f7a10ede612b82fb7a5ff610b` |
| 8 | `lemma` | [untop₀_add](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean/declarations/untop-add--c7c3e03c3bb9e5c8333a4612.md) | 73 | `result-track:c7c3e03c3bb9e5c8333a4612da7d20c9b9657387dd69aa63c253db8eeacf201b` |
| 9 | `lemma` | [untop₀_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean/declarations/untop-mul--7e8a39f537cf550ce2ade4c5.md) | 81 | `result-track:7e8a39f537cf550ce2ade4c558b18108b4f5c46ff660608cd9ed5cf778c42153` |
| 10 | `lemma` | [untop₀_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean/declarations/untop-nonneg--4e8a95713aceaa5a065713dc.md) | 92 | `result-track:4e8a95713aceaa5a065713dce525bfed66d9c3322c679ea0f0cf2fd18c38590b` |
| 11 | `lemma` | [untop₀_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Untop0/Variant1cbbc745bfd0344d668f0fb81651c9a336d3d4d39a4af46b4a7ed3487daabccd.lean/declarations/untop-neg--ed7f159c6185d443094e42f3.md) | 103 | `result-track:ed7f159c6185d443094e42f31ae274802ed002e2b8346100c928ad3d2c3abb9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
