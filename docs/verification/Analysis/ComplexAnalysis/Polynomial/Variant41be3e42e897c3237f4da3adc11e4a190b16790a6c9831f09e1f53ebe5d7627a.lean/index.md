# Verification target: GRWTSK.Analysis.ComplexAnalysis.Polynomial.Variant41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9456eff2902d531963457700db0e99e483d14e29",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Polynomial/Variant41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Polynomial/Variant41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Polynomial/Variant41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9456eff2902d531963457700db0e99e483d14e29`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Polynomial/Variant41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Polynomial/Variant41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Liouville` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_root](../../../../../mathematics/Analysis/ComplexAnalysis/Polynomial/Variant41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a.lean/declarations/exists-root--67536c2008e24f15811304a8.md) | 29 | `result-track:67536c2008e24f15811304a855bbc84260de310898a9f625a378effffb95bd8e` |
| 2 | `instance` | [isAlgClosed](../../../../../mathematics/Analysis/ComplexAnalysis/Polynomial/Variant41be3e42e897c3237f4da3adc11e4a190b16790a6c9831f09e1f53ebe5d7627a.lean/declarations/isalgclosed--0312dc2c0e981f1445c0daaf.md) | 40 | `declaration-track:0312dc2c0e981f1445c0daaf8b227c58194b48a68df11f0a4398d9ca5e83a620` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
