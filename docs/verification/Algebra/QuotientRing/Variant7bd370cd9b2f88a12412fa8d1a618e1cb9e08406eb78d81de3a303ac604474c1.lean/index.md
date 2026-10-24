# Verification target: GRWTSK.Algebra.QuotientRing.Variant7bd370cd9b2f88a12412fa8d1a618e1cb9e08406eb78d81de3a303ac604474c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a109927d5ab2980da7d5659fa71cc66a19a13a95",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuotientRing/Variant7bd370cd9b2f88a12412fa8d1a618e1cb9e08406eb78d81de3a303ac604474c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/QuotientRing/Variant7bd370cd9b2f88a12412fa8d1a618e1cb9e08406eb78d81de3a303ac604474c1.lean/index.md) · [Full source](../../../../mathematics/Algebra/QuotientRing/Variant7bd370cd9b2f88a12412fa8d1a618e1cb9e08406eb78d81de3a303ac604474c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a109927d5ab2980da7d5659fa71cc66a19a13a95`.

Source path: `GRWTSK/Algebra/QuotientRing/Variant7bd370cd9b2f88a12412fa8d1a618e1cb9e08406eb78d81de3a303ac604474c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuotientRing/Variant7bd370cd9b2f88a12412fa8d1a618e1cb9e08406eb78d81de3a303ac604474c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ZMod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientSpanNatEquivZMod](../../../../mathematics/Algebra/QuotientRing/Variant7bd370cd9b2f88a12412fa8d1a618e1cb9e08406eb78d81de3a303ac604474c1.lean/declarations/quotientspannatequivzmod--cca7fb195f85808ca955bc06.md) | 41 | `declaration-track:cca7fb195f85808ca955bc067f8a88e88f09415039e6f63e7b8dcde82b1ed200` |
| 2 | `def` | [quotientSpanEquivZMod](../../../../mathematics/Algebra/QuotientRing/Variant7bd370cd9b2f88a12412fa8d1a618e1cb9e08406eb78d81de3a303ac604474c1.lean/declarations/quotientspanequivzmod--c8e953393dcffedd0fcb572d.md) | 47 | `declaration-track:c8e953393dcffedd0fcb572dfb064a80098b0c88f5185733d7158f31f301cb95` |
| 3 | `def` | [ZMod.prodEquivPi](../../../../mathematics/Algebra/QuotientRing/Variant7bd370cd9b2f88a12412fa8d1a618e1cb9e08406eb78d81de3a303ac604474c1.lean/declarations/zmod-prodequivpi--36557d7686b117c330e071be.md) | 58 | `declaration-track:36557d7686b117c330e071be2cd442b706e2dc83fc308db6b46902a1046667fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
