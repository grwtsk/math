# Verification target: GRWTSK.Algebra.Killing.Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e246f8f290e62f777c110796069ec7cadaef7bc2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean/index.md) · [Full source](../../../../mathematics/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e246f8f290e62f777c110796069ec7cadaef7bc2`.

Source path: `GRWTSK/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.InvariantForm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Semisimple.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.TraceForm` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsKilling](../../../../mathematics/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean/declarations/iskilling--ce01c8c15384c22d240aa595.md) | 49 | `declaration-track:ce01c8c15384c22d240aa59525826337aa3320fde16688081756e168f146c37c` |
| 2 | `lemma` | [ker_killingForm_eq_bot](../../../../mathematics/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean/declarations/ker-killingform-eq-bot--5dd29b3b2fcef8210c0b4650.md) | 59 | `result-track:5dd29b3b2fcef8210c0b4650d0b8c4c0e1f6ece37718e20271bf15cc7c9c2a03` |
| 3 | `lemma` | [killingForm_nondegenerate](../../../../mathematics/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean/declarations/killingform-nondegenerate--65de6a96b97615ad6c3d0460.md) | 63 | `result-track:65de6a96b97615ad6c3d04603429faa75b805bd681fe03fec41a23776085657c` |
| 4 | `lemma` | [ideal_eq_bot_of_isLieAbelian](../../../../mathematics/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean/declarations/ideal-eq-bot-of-islieabelian--6fd83b60b67673346589bf13.md) | 68 | `result-track:6fd83b60b67673346589bf130b42eea4e1152f6b41f7ec276e5e7f2817c06619` |
| 5 | `instance` | [instSemisimple](../../../../mathematics/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean/declarations/instsemisimple--03ae730d8653f0bb36ee6199.md) | 74 | `declaration-track:03ae730d8653f0bb36ee619913145865c8b2da39005e737950bc613752e3d925` |
| 6 | `instance` | [instHasTrivialRadical](../../../../mathematics/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean/declarations/insthastrivialradical--8d64ecef4183880dba2796da.md) | 87 | `declaration-track:8d64ecef4183880dba2796dacc1ecbacab814ff6f9ca2004a37454fe3a06b96a` |
| 7 | `lemma` | [killingForm_of_equiv_apply](../../../../mathematics/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean/declarations/killingform-of-equiv-apply--24333b9e46cddd9da4dc7af5.md) | 101 | `result-track:24333b9e46cddd9da4dc7af5bf959671a4ad0f46cefea8f4854ba47fc9e38e5e` |
| 8 | `lemma` | [isKilling_of_equiv](../../../../mathematics/Algebra/Killing/Variante47ca36f2b5d4686b1fdfe49646e0fce699ae108d9bfe1329af6cec9e2a79a76.lean/declarations/iskilling-of-equiv--2fcf74e966ed7bf4421acb02.md) | 107 | `result-track:2fcf74e966ed7bf4421acb02241a524597dc189d0bb7c42b5f4f2a183079cb02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
