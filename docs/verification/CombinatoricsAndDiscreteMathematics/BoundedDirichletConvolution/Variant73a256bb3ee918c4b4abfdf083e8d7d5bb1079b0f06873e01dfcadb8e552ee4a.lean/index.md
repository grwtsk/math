# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BoundedDirichletConvolution.Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "301b87eed92dcdad199f31693a8651d6d307d0d9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `301b87eed92dcdad199f31693a8651d6d307d0d9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.DirichletPolynomialProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundedDivisorPairs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean/declarations/boundeddivisorpairs--de72289d939e87405bf5d456.md) | 25 | `declaration-track:de72289d939e87405bf5d4565454e1f5d8df872b6e26967f451c1e2a9e0f7689` |
| 2 | `theorem` | [mem_boundedDivisorPairs_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean/declarations/mem-boundeddivisorpairs-iff--8796268fb876d6fbc91a5e2e.md) | 30 | `result-track:8796268fb876d6fbc91a5e2e22913155544e94842a42d622b673f96336725fd0` |
| 3 | `theorem` | [boundedDirichletConv_eq_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean/declarations/boundeddirichletconv-eq-sum--94fdbdbc6bf3513907197218.md) | 36 | `result-track:94fdbdbc6bf35139071972186709fce0b24626b01125192e374280308fef17f0` |
| 4 | `def` | [pairProductByValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean/declarations/pairproductbyvalue--74281efae3dd9d271dabbc42.md) | 46 | `declaration-track:74281efae3dd9d271dabbc4259d48ac5dc2cebcb1e1afd1d06d0b155f46ffeed` |
| 5 | `theorem` | [pairProductByValue_eq_boundedDirichletConv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean/declarations/pairproductbyvalue-eq-boundeddirichletconv--18d963a815d1c86670aae660.md) | 54 | `result-track:18d963a815d1c86670aae6600808b304bcd3391326d0200588e08fb8e005ccda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
